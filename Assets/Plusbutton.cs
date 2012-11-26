using UnityEngine;
using System.Collections;

public class Plusbutton : MonoBehaviour {
	
	public Shopmanager shopmanager;
	public string gamevariable;
	
	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnMouseDown() {

		
			print ("upgrading: "  + gamevariable);
		
			if (Main.coins>0) {
				//tank
				if (gamevariable == "fueltank") {
					Main.fueltankcapacity += 10;
					Main.coins--;
					shopmanager.updateUI();
				}
				//drill
				else if(gamevariable =="drillpower") {
					Main.drillpower += 1;
					Main.coins--;
					shopmanager.updateUI();
				}
		
			}
			else {
				print("not enough coins");
			}
			
		
	}
	
}
