using UnityEngine;
using System.Collections;

public class Shopmanager : MonoBehaviour {
	
	public GUIText coinslabel;
	public GUIText fueltanklabel;
	public GUIText drillpowerlabel;
	
	
	// Use this for initialization
	void Start () {
	 
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnLevelWasLoaded() {
		updateUI();
	}
	
	public void updateUI() {
		fueltanklabel.text = "Fueltank capacity: " + Main.fueltankcapacity;
		drillpowerlabel.text = "Drillpower: " + Main.drillpower;
		coinslabel.text = "Coins: " + Main.coins;
	}
	
}
