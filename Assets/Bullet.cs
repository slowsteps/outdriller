using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour {
	
	public float wakeupTime; //at the end of their lifetime, bullets are recycled
	public bool shot;  // marks bullet as begin used, is used in gun/bulletpool
	
	private float speed;
	
	// Use this for initialization
	void Start () {
		onRecycle();

	}
	
	public void onFire(GameObject gun) {
		enabled = true;
		wakeupTime = Time.time;
		transform.position = gun.transform.position;
		
		transform.rotation = gun.transform.rotation;
//		TODO bake this into model
		//transform.Rotate(90f,0,0);
		
		speed = 0.8f;
		shot = true;
	}
	
	public void onRecycle() {
		enabled = false;
		transform.position = new Vector3(0,0,0);
		speed = 0f;
		shot = false;
		
	}
	
	// Update is called once per frame
	void Update () {
		if ((Time.time - wakeupTime) > 2 ) {
			onRecycle();
		}
		else if(transform.position.y < 0.2f) {
			//rigidbody.isKinematic = false;
			onRecycle();
		}
		else { 
			transform.Translate(speed,0,0);
		}
	}
}
