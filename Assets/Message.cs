using UnityEngine;
using System.Collections;

public class Message : MonoBehaviour {
	
	Hashtable ht = new Hashtable();

	// Use this for initialization
	void Start () {
		guiText.transform.position = new Vector3(0.5f,-2,0);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnComplete() {
		ht["y"] = -2;
		ht["delay"] = 1;
		iTween.MoveTo(gameObject,ht);
	}
	
	//This script is generatings bugs, maybe if it's called multiple times too close together.
	public void setMessage(string msg) {
		ht["y"] = 0.1;
		ht["time"] = 1.0;
		ht.Add("EaseType","easeInOutCubic");
		ht.Add("oncomplete","OnComplete");	
		iTween.MoveTo(gameObject,ht);
		guiText.text = msg;	
	}

}
