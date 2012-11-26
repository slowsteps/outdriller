using UnityEngine;
using System.Collections;

public class Main : MonoBehaviour {
	
	//references to scene objects, assigned via Ship's inspector
	public GameObject ship;
	public GameObject gMotor1;
	public GameObject gMotor2;
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
	//game state properties accessible from other scenes
	static public int days;
	static public int coins;
	static public int fueltankcapacity;
	static public int drillpower;
	static public int fuel;
	static public int temperature;
	static public int overheatingtemperature;
	static public bool levelcomplete;
	//
	private bool drillBoostOn;
	private float drillspeed; //used for visual rotating effect
	private int fuelconsumption;
	private bool jumpAllowed;
	private float pushbackforce;
	static private bool gameisalreadyrunning;
	
	
	
	// Use this for initialization
	void Start () {
			//TODO constructor runs everytime on openscene
			print ("starting main");
			mainCamera.transform.LookAt(ship.transform);
			startRound();	
	}
	
	//game over, next go
	void startRound() {
		
		
		//first play only
		if (!gameisalreadyrunning) {
			drillBoostOn = false;
			drillpower = 4;
			fueltankcapacity = 800;
			overheatingtemperature = 50;
			updateUI();
			gameisalreadyrunning=true;
		}
		//consecutive plays
		else {
			Vector3 startposition = new Vector3(0f,0f,0f);
			ship.rigidbody.MovePosition(startposition);
			ship.rigidbody.velocity = startposition;
			fuel = fueltankcapacity;
			days++;
			updateUI();
		}
		//always
			continuebutton.enabled = false;
			Emitter1.particleSystem.Stop();
			temperature = 0;	
			levelcomplete = false;
			drillspeed = 20f;
			fuelconsumption = 1;	
			fuel = fueltankcapacity;
		
	}
	

	
	
	void updateUI() {
		fuelLabel.guiText.text = fuel + " fuel";
		daysLabel.guiText.text = days + " days";
		coinsLabel.guiText.text = coins + " coins";	
		drillpowerLabel.guiText.text = "drillpower " + drillpower;
		temperatureLabel.guiText.text = temperature + " Degrees";
	}
	
	void Update () {
		
		fire.transform.parent = this.transform;
		
		//the drill is running, make red when close to overheating
		if (temperature > overheatingtemperature - 20) {
			temperatureLabel.guiText.material.color = Color.red;	
		}
		else {
			temperatureLabel.guiText.material.color = Color.white;		
		}
		
		
		if (drillBoostOn & (temperature <= overheatingtemperature) & (fuel > 0)) {
			gMotor1.transform.Rotate(drillspeed,0,0);	
			temperature++;
		}
		else {
			if (temperature>0) {
				temperature--;
			}
		}
		
		drillglow.intensity = temperature/overheatingtemperature;
		
		//camera scrolls with ship TODO, there must be a better way to do this
		float delta = ship.transform.position.x - mainCamera.transform.position.x;
		mainCamera.transform.Translate(delta,0f,0f);
		mainCamera.transform.LookAt(ship.transform);
		
		
		if (fuel <= 0 ) {
			//game over
			fuelLabel.guiText.material.color = Color.red;
			Emitter1.particleSystem.Stop();
			fire.particleSystem.Stop();
			levelcomplete = true;
			continuebutton.enabled = true;
			fuel = 0;
			updateUI();
		}
		else {
			ship.rigidbody.AddForce(6f,0f,0f);  
			fuel = fuel - fuelconsumption;
			updateUI();
			
		}
		
		
		if (Input.GetKeyDown(KeyCode.RightArrow)) {
			drillBoostOn = true;
		}
		
		if (Input.GetKeyUp(KeyCode.RightArrow)) {
			drillBoostOn = false;
		}
	
		//drill on
		if (drillBoostOn & (fuel > 0)) {
			pushbackforce = -10 + drillpower;
			fuelconsumption = 5;
		}
		//drill off
		else {
			pushbackforce = -10 ;
			fuelconsumption = 1;
		}
	
		
		
	}
	
	//collisions
	
	void OnTriggerEnter(Collider other) {
		if (other.name.Equals("rubble")) {
			Emitter1.particleSystem.Play();
			
		}
		
	}
	
	
	//breakable stuff to destroy, slowing the vehicle down
	void OnTriggerStay(Collider other) {
		
		if (other.name.Equals("rubble") & ship.rigidbody.velocity.x > 0) {
	
			
			ship.rigidbody.AddForce(pushbackforce,0,0);
			
			
		}	
	}
	
	
	
	void OnTriggerExit(Collider other) {
		Emitter1.particleSystem.Stop();
		coins++;
		
		//print ("exit");
		//other.enabled = false;
		
		updateUI();
	}
	
	
	//physics collisions, might be useful later
	void OnCollisionEnter(Collision collision) {
				
		//put ship back at the beginning when a danger block is hit
		if (collision.collider.name == "danger") {
			days++;
			startRound();
		}
		//a destructable block has been hit, coins rewarded
		else if (collision.collider.name == "movable") {
			
			coins++;
			updateUI();
		}
	}
	

	
}
