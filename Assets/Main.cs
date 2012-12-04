using UnityEngine;
using System.Collections;

public class Main : MonoBehaviour {
	
	//references to scene objects, assigned via Ship's inspector
	public GameObject ship;
	public GameObject vehicle;
	public GameObject drill;
	public GameObject Emitter1;
	public GameObject mainCamera;
	public GameObject coinsLabel;
	public GameObject daysLabel;	
	public GameObject fuelLabel;
	public GameObject drillpowerLabel;
	public GameObject temperatureLabel;
	public GUITexture continuebutton;
	public GameObject fire;
	public Light drillglow;
	public GUITexture coin;
	public GameObject message;
	//game state properties accessible from other scenes
	static public int days;
	static public int coins;
	static public int fueltankcapacity;
	static public int drillpower;
	static public int fuel;
	static public int temperature;
	static public int overheatingtemperature;
	static public bool levelcomplete;
	static public bool countdownready;
	static public float countdowntimestamp;
	private bool turbostartallowed;
	//
	private bool drillBoostOn;

	private float drillspeed; //used for visual rotating effect
	private float forwardspeed;
	private int fuelconsumption;
	private bool jumpAllowed;
	private float savedtimestamp;
	private Vector3 startposition;
	
	static private bool gameisalreadyrunning;
	
	
	
	// Use this for initialization
	void Start () {
			//TODO constructor runs everytime on openscene
			mainCamera.transform.LookAt(transform);
			startRound();	
	}
	
	//game over, next go
	void startRound() {
		
		
		//first play only
		if (!gameisalreadyrunning) {
			startposition = ship.transform.position;
			print ("startpos " + startposition);
			drillBoostOn = false;
			drillpower = 4;
			fueltankcapacity = 800;
			overheatingtemperature = 50;
			updateUI();
			gameisalreadyrunning=true;
			//message.GetComponent<Message>().setMessage("Get out!, start drilling!");
		}
		//consecutive plays
		else {
			
			//ship.rigidbody.velocity = Vector3.zero;
			fuel = fueltankcapacity;
			days++;
			updateUI();
		}
		//always
			continuebutton.enabled = false;
			Emitter1.particleSystem.Stop();
			temperature = 0;	
			levelcomplete = false;
			drillspeed = 4f;
			forwardspeed = 5f;
			fuelconsumption = 1;	
			fuel = fueltankcapacity;
			countdownready = false;
			turbostartallowed = true;
			drillglow.intensity = 0;
	}
	
	void updateUI() {
		fuelLabel.guiText.text = fuel + " fuel";
		daysLabel.guiText.text = days + " days";
		coinsLabel.guiText.text = coins + " coins";	
		drillpowerLabel.guiText.text = "drillpower " + drillpower;
		temperatureLabel.guiText.text = temperature + " Degrees";
	}

	//GAME FRAME LOOP
	void Update () {

		//Wait for countdown to finish
		
		//Award timing speed boost
		if (Input.anyKeyDown & turbostartallowed) {
			float turbodelta = Mathf.Abs(countdowntimestamp - Time.time);
			if (countdownready & (turbodelta < 1)) {
				ship.rigidbody.AddForce(new Vector3(200/turbodelta,0,0));
				//message.GetComponent<Message>().setMessage("Turbo start!");
			}
			turbostartallowed = false;
		}
		//end countdown
		if (!countdownready) return;	
		
		//fire.transform.parent = this.transform;
		vehicle.transform.position = this.transform.position;
		
		
		//the drill is running, make red when close to overheating
		if (temperature > overheatingtemperature - 20) {
			temperatureLabel.guiText.material.color = Color.red;	
		}
		else {
			temperatureLabel.guiText.material.color = Color.white;		
		}
		
		
		if (drillBoostOn & (temperature <= overheatingtemperature) & (fuel > 0)) {
			drill.transform.Rotate(0,drillspeed,0);	
			temperature++;
		}
		else {
			if (temperature>0) {
				temperature--;
			}
		}
		
		drillglow.intensity = temperature/overheatingtemperature;
	
		//camera tracks ship
		mainCamera.transform.position = new Vector3(ship.transform.position.x,mainCamera.transform.position.y,mainCamera.transform.position.z);
		mainCamera.transform.LookAt(ship.transform);
		
		//LEVEL COMPLETE SECTION
		//normal forward motion when fuel is available
		if (fuel <= 0 ) {
			//ran out of fuel, level complete
			fuelLabel.guiText.material.color = Color.red;
			Emitter1.particleSystem.Stop();
			fire.particleSystem.Stop();
			levelcomplete = true;
			continuebutton.enabled = true;
			fuel = 0;
			updateUI();
		}
		//fuel available, moving forward
		else {
			//TODO should be .left??
			ship.rigidbody.AddForce(forwardspeed*Vector3.right);
			fuel = fuel - fuelconsumption;
			updateUI();
			
		}
		
		
		
		
		//END LEVELCOMPLETE
		
		if (Input.GetKeyDown(KeyCode.RightArrow)) {
			drillBoostOn = true;
		}
		
		if (Input.GetKeyUp(KeyCode.RightArrow)) {
			drillBoostOn = false;
		}
	
		//drill on
		if (drillBoostOn & (fuel > 0)) {
			fuelconsumption = 5;
			Emitter1.particleSystem.emissionRate = 300;
		}
		//drill off
		else {
			fuelconsumption = 1;
			Emitter1.particleSystem.emissionRate = 50;
		}
	
		
		
	}
	
	
	//TODO should these triggers be in the rubble objects?

	
	public void onFinishReached() {
		//message.GetComponent<Message>().setMessage("Level completed!");
		levelcomplete = true;
		fuel = 0;
		
	}
	
	void OnTriggerEnter(Collider other) {
		
		if (other.name.Equals("rubble")) {
			Emitter1.particleSystem.Play();
		}
		
	}
	
	//breakable stuff to destroy, slowing the vehicle down
	void OnTriggerStay(Collider other) {
		//TODO big blocks apply a lot of continuous force, speeding up the ship too quickly
		if (other.name.Equals("rubble")) {
				print("in rubble");
		}
	}
	
	
	//TODO every block rewards a coin
	void OnTriggerExit(Collider other) {
		//print(other.name);
		Emitter1.particleSystem.Stop();
		Instantiate(coin);
		
	}
	
	
	
	

	
}
