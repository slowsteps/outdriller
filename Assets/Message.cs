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
	
	
	public void setMessage(string msg) {
		ht.Add("y",0.5);
		ht.Add("time",1.0);
		ht.Add("EaseType","easeInOutCubic");
		ht.Add("oncomplete","OnComplete");	
		iTween.MoveTo(gameObject,ht);
		guiText.text = msg;	
	}

}
