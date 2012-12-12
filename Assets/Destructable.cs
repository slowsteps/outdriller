using UnityEngine;
using System.Collections;

public class Destructable : MonoBehaviour {
	
	private Vector3 oldpos;
	private bool beingdrilled;
	private Main mainscript;
	private GameObject main;
	private GameObject coin;
	
	// Use this for initialization
	void Start () {
		main = GameObject.Find("ship");
		mainscript = main.GetComponent<Main>();
		oldpos = transform.position;
		beingdrilled = false;
		this.rigidbody.isKinematic = true;
		
	}
	
	// Update is called once per frame
	void Update () {
		//Bouncy effect
		if (beingdrilled & !Main.levelcomplete) {
			float deltay = 0.3f*Mathf.Cos(1f*Time.frameCount);
			transform.position = oldpos + new Vector3(0,deltay,0);
		}
	}
	
	//TODO fix spaghetti calls between this class and main (encapsulate)
	void OnDestruct() {
		beingdrilled = false;
		mainscript.Emitter1.particleSystem.Stop();
		mainscript.rigidbody.drag = mainscript.airdrag;
		//grant a coin
		//TODO make coin pool
		
		Vector3 coinSpawnPos = Camera.current.WorldToViewportPoint(transform.position);
		Instantiate(Resources.Load("coinprefab"),coinSpawnPos,Quaternion.identity);
		
		
		
		Destroy(this.GetComponent<Transform>().gameObject);
	}

	void OnTriggerEnter(Collider other) {
		
		if (other.name == "ship") {	
			beingdrilled = true;
		}
		//Bullet destroys obstacle on first contact
		if (other.name == "bulletprefab(Clone)") {
			OnDestruct();	
		}
	}
	
	void OnTriggerExit(Collider other) {
		//Ship needs to go though the entire obstacle to destroy it
		if (other.name == "ship") {
			OnDestruct();	
		}
	}
	
	


}
