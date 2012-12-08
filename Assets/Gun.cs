using UnityEngine;
using System.Collections;

//This class is attached to an empty called "Gun"

public class Gun : MonoBehaviour {
	
	public GameObject bullet;
	public GameObject barrel;
	private GameObject[] bulletPool; 
	
	// Use this for initialization
	void Start () {
		
		barrel = GameObject.Find("barrel");
		
	 	for (int i = 0; i < 100; i++) {
	 		//GameObject mybullet = (GameObject)Instantiate(bullet);
			
		}
	}
	

	
	// Update is called once per frame
	void Update () {
		
	}
	
	//TODO get bullet from pre-instantiated pool
		
	public void Fire() {
		GameObject mybullet = (GameObject)Instantiate(bullet,barrel.transform.position,Quaternion.identity);
	}
		
		
}
