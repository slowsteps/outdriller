using UnityEngine;
using System.Collections;

//This class is attached to an empty called "Gun"

public class Gun : MonoBehaviour {
	
	public GameObject bullet;
	public GameObject barrel;
	public GameObject axelshaft;
	
	// Use this for initialization
	void Start () {
		axelshaft =  GameObject.Find ("gunaxelshaft");
		axelshaft.transform.Rotate(0,10,0);
	}
	

	
	// Update is called once per frame
	void Update () {
		
	}
	
	//TODO get bullet from pre-instantiated pool
		
	public void Fire() {
		Instantiate(bullet,this.transform.position,this.transform.rotation);
	}
		
		
}
