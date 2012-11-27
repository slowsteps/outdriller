using UnityEngine;
using System.Collections;

public class Coinslabel : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	Hashtable ht = new Hashtable();
	
	void Awake(){
		//ht.Add("x",1.5);
		//ht.Add("amount",new Vector3(2f,2f,0f));
		//ht.Add("x",2);
		ht.Add("y",0.05);
		//ht.Add("z",1);
		ht.Add("time",1);
		
	}
	
	
	// Update is called once per frame
	void Update () {
	
	}
	
	public void SwallowCoin() {
		//iTween.MoveTo(gameObject,ht);
		iTween.PunchPosition(gameObject,ht);
		print ("swallowing coin");	
		Main.coins++;
	}
	
}
