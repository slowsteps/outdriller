using UnityEngine;
using System.Collections;

public class Destructable : MonoBehaviour {
	
	private Vector3 oldpos;
	private bool beingdrilled;
	
	// Use this for initialization
	void Start () {
		oldpos = transform.position;
		beingdrilled = false;
		this.rigidbody.isKinematic = true;
		
	}
	
	// Update is called once per frame
	void Update () {
		//todo add sin bounce
		if (beingdrilled & !Main.levelcomplete) {
			float newy = 0.1f*Mathf.Cos(1f*Time.frameCount);
			transform.position = new Vector3(oldpos.x,newy,oldpos.z);
		}
	}
	
	void OnDestruct() {
		print ("message received");	
		beingdrilled = false;
	}

	void OnTriggerEnter(Collider other) {
		beingdrilled = true;
		print("enter " + this.name);
	}
	
	void OnTriggerExit(Collider other) {
		beingdrilled = false;
		this.collider.isTrigger = false;
		this.rigidbody.isKinematic = false;
	}


}
