using UnityEngine;
using System.Collections;

//This class is attached to an empty called "Gun"

public class Gun : MonoBehaviour {
	
	public GameObject bullet;
	private ArrayList bulletpool;
	public int ammo;
	private GameObject axelshaft; //gun rotation pivot
	private GameObject antenna;
	
	// Use this for initialization
	void Start () {
		
		bulletpool = new ArrayList();
		for (int i=0; i<10; i++) {
			bulletpool.Add(Instantiate(bullet,this.transform.position,this.transform.rotation));
		}
		
		axelshaft =  GameObject.Find( "gunaxelshaft");
		antenna = GameObject.Find("antenna");
		//power up fx
		iTween.RotateBy(axelshaft, new Vector3(0f,0.03f,0f), 6f);
		iTween.ColorTo(antenna, new Color(1,1,1,1),6);
		ammo = 10;
	}
	

	
	// Update is called once per frame
	void Update () {
		
	}
	
	//TODO get bullet from pre-instantiated pool
	private GameObject getBullet() {
		
		foreach(GameObject mybullet in bulletpool) {
			if ( !mybullet.GetComponent<Bullet>().shot ) {
				return mybullet;
			}
		}
		
		return null;
		
	}
	
	
	public void Fire() {
		if (ammo > 0) {
			
			GameObject mybullet = getBullet();
			
			if (mybullet) {
				getBullet().GetComponent<Bullet>().onFire(this.gameObject);
				ammo--;
			}
			else print("out of ammo, please wait and try to shoot again");
		}
		else if (ammo == 0 ) {
			//gun is powering down
			iTween.RotateBy(axelshaft, new Vector3(0f,-0.03f,0f), 6f);
			iTween.ColorTo(antenna, new Color(1,1,1,0),2);
		}
			
	}
		
		
}
