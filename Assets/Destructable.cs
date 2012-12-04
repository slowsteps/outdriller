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
		//Bouncy effect
		if (beingdrilled & !Main.levelcomplete) {
			float deltay = 0.1f*Mathf.Cos(1f*Time.frameCount);
			transform.position = oldpos + new Vector3(0,deltay,0);
		}
	}
	
	void OnDestruct() {
		beingdrilled = false;
	}

	void OnTriggerEnter(Collider other) {
		//print (other.name);
		if (other.name == "ship") {	
			beingdrilled = true;
		}
	}
	
	void OnTriggerExit(Collider other) {
		//TODO ADD particle explosion
		if (other.name == "ship") {
			Destroy(this.GetComponent<Transform>().gameObject);
		}
		
		/*if (other.name == "ship") {
			beingdrilled = false;
			this.collider.isTrigger = false;
			this.rigidbody.isKinematic = false;
			if (!Main.levelcomplete) {
				float xforce = Random.Range(-100,-10);
				float yforce = Random.Range(300,1000);
				float spin = Random.Range(-100,100);
				this.rigidbody.AddForce(new Vector3(xforce,yforce,0));
				this.rigidbody.AddTorque(new Vector3(0,0,spin)); 
			}
		}*/
	}


}
