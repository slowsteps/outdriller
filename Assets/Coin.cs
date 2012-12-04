using UnityEngine;
using System.Collections;

public class Coin : MonoBehaviour {

	// Use this for initialization
	
	
	GameObject coinslabel;
	
	
	Hashtable ht = new Hashtable();
	
	void Awake(){
		ht.Add("x",0.1);
		ht.Add("y",0.9);
		ht.Add("time",1.0);
		ht.Add("EaseType","easeInOutCubic");
		ht.Add("oncomplete","OnComplete");
	}

	void Start(){
		//get a reference to the object
		iTween.MoveTo(gameObject,ht);
	}
	
	void OnComplete() {
	
		coinslabel = GameObject.Find("coinslabel");
		coinslabel.GetComponent<Coinslabel>().SwallowCoin();
		Destroy(this.gameObject);
	}
	
	// Update is called once per frame
	void Update () {
	}
}
