using UnityEngine;
using System.Collections;

public class Countdown : MonoBehaviour {

	Hashtable ht = new Hashtable();
	
	
	// Use this for initialization
	void Start () {
		//guiText.transform.position = new Vector3(0.5f,-1,0);
		first();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void first() {
		guiText.text = "3";
		ht.Add("y",0.5);
		ht.Add("time",1);
		ht.Add("EaseType","easeInOutCubic");
		ht.Add("oncomplete","second");	
		iTween.MoveTo(gameObject,ht);
	}
	
	void second() {
		ht["delay"] = 0;
		ht["oncomplete"] = "third";	
		iTween.MoveTo(gameObject,ht);
		guiText.text = "2";
	}
	
	void third() {
		
		ht["delay"] = 0.0;
		ht["oncomplete"] = "forth";	
		iTween.MoveTo(gameObject,ht);
		guiText.text = "1";
	}
	
	void forth() {
		ht["y"] = -2;
		ht["delay"] = 0;
		ht["time"] = 2;
		iTween.MoveTo(gameObject,ht);
		guiText.text = "Drill!";
		Main.countdowntimestamp = Time.time;
		Main.countdownready = true;
		
		
	}
	
	
	
	
}
