using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour {
	
	public float wakeupTime;
	
	// Use this for initialization
	void Start () {
		wakeupTime = Time.time;
		transform.Rotate(90f,0,0);
		transform.localScale = new Vector3(3,1,1);
	}
	
	// Update is called once per frame
	void Update () {
		if ((Time.time - wakeupTime) > 2 ) {
			Destroy(this.gameObject);
		}
		transform.Translate(0.8f,0,0);
	}
}
