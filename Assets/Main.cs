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
	public GameObject rubbleExplosion;
	public GameObject cameratarget;
	public GameObject gun;
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
	private GameObject wheel;
	//
	private bool drillBoostOn;

	private float drillspeed; //used for visual rotating effect
	private float forwardspeed;
	private float airdrag;
	private float rubbledrag;
	private int fuelconsumption;
	private float savedtimestamp;
	private Vector3 startposition;
	
	static private bool gameisalreadyrunning;
	
	
	
	// Use this for initialization
	void Start () {
			//TODO constructor runs everytime on openscene
			mainCamera.transform.LookAt(transform);
			startRound();	
		//get references to objects
		wheel = GameObject.Find("wheel");
		
	}
	
	//game over, next go
	void startRound() {
		
		
		//first play only
		if (!gameisalreadyrunning) {
			startposition = ship.transform.position;
			drillBoostOn = false;
			drillpower = 4;
			fueltankcapacity = 10000;
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
			drillspeed = 0f;
			forwardspeed = 150f;
			airdrag = 8f;
			rubbledrag = 30f;
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
			if (countdownready & (turbodelta < 0.5f)) {
				ship.rigidbody.AddForce(new Vector3(200/turbodelta,0,0));
				message.GetComponent<Message>().setMessage("Turbo start!");
			}
			turbostartallowed = false;
		}
		//end countdown
		if (!countdownready) return;	
		
		//TRANSFORMS AND PROCEDURAL ANIMATIONS
		//fire.transform.parent = this.transform;
		vehicle.transform.position = this.transform.position;
		//big wheel
		float wheelturnspeed = 0.4f*this.rigidbody.velocity.x;
		wheel.transform.Rotate(0,0,-wheelturnspeed,Space.World);
		
		
			
		//the drill is running, make red when close to overheating
		if (temperature > overheatingtemperature - 20) {
			temperatureLabel.guiText.material.color = Color.red;	
		}
		else {
			temperatureLabel.guiText.material.color = Color.white;		
		}
		
		//todo add maxtemp cutoff, without jitter
		if (drillBoostOn) {
			drillspeed = 10f;
			
			temperature++;
		}
		else if (temperature>0) {				
				temperature--;
				
		}
		if (drillspeed>0) drillspeed = drillspeed - 0.2f;
		drill.transform.Rotate(0,drillspeed,0);
		
		drillglow.intensity = temperature/overheatingtemperature;
	
		//camera tracks ship, TODO add spring follow
		Vector3 camvelocity = Vector3.zero;
		mainCamera.transform.position = Vector3.SmoothDamp(mainCamera.transform.position,cameratarget.transform.position,ref camvelocity,0.1f);
		mainCamera.transform.LookAt(ship.transform);
		
//		Vector3 campos = mainCamera.transform.position;
//		Vector3 shippos   = ship.transform.position;
//		Vector3 topos = new Vector3();
//		topos.x = shippos.x;
//		topos.y = campos.y;
//		topos.z = campos.z;
//		
//
//		mainCamera.transform.position = topos;
	
		
		//LEVEL COMPLETE
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
			ship.rigidbody.AddForce(forwardspeed*Vector3.right);
			fuel = fuel - fuelconsumption;
			updateUI();
			
		}
		
		
		
		if (Input.GetKeyDown(KeyCode.RightArrow) & fuel > 0) {
			print ("keydown");
			drillBoostOn = true;
			fuelconsumption = 5;
			Emitter1.particleSystem.emissionRate = 300;
		}
		
		if (Input.GetKeyUp(KeyCode.RightArrow) || fuel <= 0) {
			drillBoostOn = false;
			fuelconsumption = 1;
			Emitter1.particleSystem.emissionRate = 50;

		}
		
		if (Input.GetKeyUp(KeyCode.Space) || fuel <= 0) {
			gun.GetComponent<Gun>().Fire();
			
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
		if (other.name.Equals("rubble")) {
			if (drillBoostOn) this.rigidbody.drag = airdrag;
			else this.rigidbody.drag = rubbledrag;
				
		}
	}
	
	
	void OnTriggerExit(Collider other) {
		this.rigidbody.drag = airdrag;
		Emitter1.particleSystem.Stop();
		Instantiate(coin);
	}
	
	
	
	

	
}
