using UnityEngine;
using System.Collections;

public class Coin : MonoBehaviour {

	// Use this for initialization
	
	public GameObject target;
	
	
	Hashtable ht = new Hashtable();
	
	void Awake(){
		ht.Add("x",0.15);
		ht.Add("y",0.95);
		ht.Add("time",1.2);
		ht.Add("EaseType","easeInOutCubic");
		ht.Add("oncomplete","OnComplete");
	}

	void Start(){
		iTween.MoveTo(gameObject,ht);
	}
	
	void OnComplete() {
		print(target);
		
		Destroy(this.gameObject);
	}
	
	// Update is called once per frame
	void Update () {
	}
}
