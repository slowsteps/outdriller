using UnityEngine;
using System.Collections;

//This class is attached to an empty called "Gun"

public class Gun : MonoBehaviour {
	
	public GameObject bullet;
	private ArrayList bulletpool;
	public int ammo;
	private int maxAmmo;
	private GameObject axelshaft; //gun rotation pivot
	private GameObject antenna;
	public GUITexture progressbar;
	private float maxBarWidth;
	
	// Use this for initialization
	void Start () {
		maxAmmo = 10;
		ammo = maxAmmo;
		
		maxBarWidth = progressbar.GetScreenRect().width;
			
		bulletpool = new ArrayList();
		
		
		for (int i=0; i<10; i++) {
			bulletpool.Add(Instantiate(bullet,this.transform.position,this.transform.rotation));
		}
		
		axelshaft =  GameObject.Find( "gunaxelshaft");
		antenna = GameObject.Find("antenna");
		
		//power up fx
		iTween.RotateBy(axelshaft, new Vector3(0f,0.03f,0f), 6f);
		iTween.ColorTo(antenna, new Color(1,1,1,1),6);

	}
	
	void updateUI() {
		
		float barwidth = maxBarWidth *  ammo/maxAmmo;
		progressbar.pixelInset = new Rect(0,0,barwidth,15);
		
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
				updateUI();
				if (ammo == 0 ) {
					//powering down animation
					iTween.RotateBy(axelshaft, new Vector3(0f,-0.03f,0f), 6f);
					iTween.ColorTo(antenna, new Color(1,1,1,0),2);
				}
			}
			else print("out of ammo");
		}
		
			
	}
		
		
}
