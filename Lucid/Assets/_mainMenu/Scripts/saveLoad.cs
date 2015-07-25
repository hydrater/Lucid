#pragma warning disable 0649
using UnityEngine;
using System.Collections;
using UnityStandardAssets.Characters.FirstPerson;
using UnityEngine.UI;

public class saveLoad : MonoBehaviour {
	[SerializeField] private GameObject saveLoadUI, editSaveUI, loadSaveUI, player, saveLoadPrefab, totalPoints;
	[SerializeField] private GameObject levelAmount, name, saveInfo, statInfo;
	[SerializeField] private GameObject vitalityBar, durabilityBar, intelligenceBar, focusBar, flexibilityBar;
	[SerializeField] private GameObject vitalitySum, durabilitySum, intelligenceSum, focusSum, flexibilitySum;
	private float total, vit ,dur, intel, foc, fx;
	private sbyte mouseOn = 0;
	private string[] temp;
	
	void Start() 
	{
		if (PlayerPrefs.GetInt("fileLoad") != null)
		{
			try
			{
				saveLoadPrefab.GetComponent<AdvancedSaveSystem>().LoadData(PlayerPrefs.GetInt("fileLoad"));
				temp = saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[0].Split(',');
				//0 name 1 level 2 money 3 vit 4 dur 5 intel 6 foc 7 fx
				name.GetComponent<InputField>().text = temp[0];
				vit = float.Parse(temp[3]);
				dur = float.Parse(temp[4]);
				intel = float.Parse(temp[5]);
				foc = float.Parse(temp[6]); 
				fx = float.Parse(temp[7]);
				total = int.Parse(temp[1]) * 2 - vit - dur - intel - foc - fx;
				//Set save info to UI
				levelAmount.GetComponent<Text>().text = temp[1];
				vitalityBar.GetComponent<Slider>().value = vit;
				durabilityBar.GetComponent<Slider>().value = dur;
				intelligenceBar.GetComponent<Slider>().value = intel;
				focusBar.GetComponent<Slider>().value = foc;
				flexibilityBar.GetComponent<Slider>().value = fx;
				totalPoints.GetComponent<Text>().text = total.ToString();
			}
			catch(System.IO.FileNotFoundException)
			{
				regiClean();
				saveInfo.GetComponent<Text>().text = "";
			}
		}
	}
	
	void Update()
	{
		if (Input.GetKeyDown(KeyCode.Escape))
		{
			btnBack();
		}
	}
	
	public void btnBack ()
	{
		player.GetComponent<CharacterController>().enabled = true;
		player.GetComponent<FirstPersonController>().enabled = true;
		Cursor.visible = false;
		saveLoadUI.SetActive(false);
		saveInfo.GetComponent<Text>().text = "";
	}
	
	public void btnEdit ()
	{
		loadSaveUI.SetActive(false);
		editSaveUI.SetActive(true);
	}
	
	public void btnLoad ()
	{
		editSaveUI.SetActive(false);
		loadSaveUI.SetActive(true);
	}
	
	public void vitalityBarChange ()
	{
		vitalitySum.GetComponent<Text>().text = vitalityBar.GetComponent<Slider>().value.ToString();
		mouseOn = 1;
	}
	
	public void durabilityBarChange ()
	{
		durabilitySum.GetComponent<Text>().text = durabilityBar.GetComponent<Slider>().value.ToString();
		mouseOn = 2;
	}
	
	public void intelligenceBarChange ()
	{
		intelligenceSum.GetComponent<Text>().text = intelligenceBar.GetComponent<Slider>().value.ToString();
		mouseOn = 3;
	}
	
	public void focusBarChange ()
	{
		focusSum.GetComponent<Text>().text = focusBar.GetComponent<Slider>().value.ToString();
		mouseOn = 4;
	}
	
	public void flexibilityBarChange ()
	{
		flexibilitySum.GetComponent<Text>().text = flexibilityBar.GetComponent<Slider>().value.ToString();
		mouseOn = 5;
	}
	
	public virtual void statChecker() 
	{
		float temp;
		switch (mouseOn)
		{
		case 1:
			temp = vitalityBar.GetComponent<Slider>().value -= vit;
			Debug.Log(temp);
			total -= temp;
			vit += temp;
			if (total < 0)
			{
				total += temp;
				vit -= temp;
				vit += total;
				total = 0;
				vitalityBar.GetComponent<Slider>().value = vit;
				vitalitySum.GetComponent<Text>().text = vit.ToString();
			}
			vitalityBar.GetComponent<Slider>().value = vit;
			totalPoints.GetComponent<Text>().text = total.ToString();
		break;
		case 2:
			temp = durabilityBar.GetComponent<Slider>().value -= dur;
			Debug.Log(temp);
			total -= temp;
			dur += temp;
			if (total < 0)
			{
				total += temp;
				dur -= temp;
				dur += total;
				total = 0;
				durabilityBar.GetComponent<Slider>().value = dur;
				durabilitySum.GetComponent<Text>().text = dur.ToString();
			}
			durabilityBar.GetComponent<Slider>().value = dur;
			totalPoints.GetComponent<Text>().text = total.ToString();
			break;
		case 3:
			temp = intelligenceBar.GetComponent<Slider>().value -= intel;
			Debug.Log(temp);
			total -= temp;
			intel += temp;
			if (total < 0)
			{
				total += temp;
				intel -= temp;
				intel += total;
				total = 0;
				intelligenceBar.GetComponent<Slider>().value = intel;
				intelligenceSum.GetComponent<Text>().text = intel.ToString();
			}
			intelligenceBar.GetComponent<Slider>().value = intel;
			totalPoints.GetComponent<Text>().text = total.ToString();
			break;
		case 4:
			temp = focusBar.GetComponent<Slider>().value -= foc;
			Debug.Log(temp);
			total -= temp;
			foc += temp;
			if (total < 0)
			{
				total += temp;
				foc -= temp;
				foc += total;
				total = 0;
				focusBar.GetComponent<Slider>().value = foc;
				focusSum.GetComponent<Text>().text = foc.ToString();
			}
			focusBar.GetComponent<Slider>().value = foc;
			totalPoints.GetComponent<Text>().text = total.ToString();
			break;
		case 5:
			temp = flexibilityBar.GetComponent<Slider>().value -= fx;
			Debug.Log(temp);
			total -= temp;
			fx += temp;
			if (total < 0)
			{
				total += temp;
				fx -= temp;
				fx += total;
				total = 0;
				flexibilityBar.GetComponent<Slider>().value = fx;
				flexibilitySum.GetComponent<Text>().text = fx.ToString();
			}
			flexibilityBar.GetComponent<Slider>().value = fx;
			totalPoints.GetComponent<Text>().text = total.ToString();
			break; 
		default:
		break;
		}
	}
	
	public void regiClean ()
	{
		PlayerPrefs.DeleteAll();
		saveInfo.GetComponent<Text>().text = "Registry deleted";
	}
	
	public void saveSlot1 ()
	{
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[0] =
		name.GetComponent<InputField>().text + "," + "1" + "," + "0" + "," +
		vit.ToString() + "," + dur.ToString() + "," + intel.ToString()+ "," + foc.ToString() + "," 
		+ fx.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().SaveData(1);
		PlayerPrefs.SetInt("fileLoad", 1);
		//load to player, recommend function so I can use at start
		string[] statInfo = saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[0].Split(',');
		for(int i = 0; i < statInfo.Length-1; i++)
		{
			Debug.Log(statInfo[i]);
		}
		saveInfo.GetComponent<Text>().text = "Character saved at slot 1...";
	}
	
	public void saveSlot2 ()
	{
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[0] =
			name.GetComponent<InputField>().text + "," + "1" + "," + "0" + "," +
				vit.ToString() + "," + dur.ToString() + "," + intel.ToString()+ "," + foc.ToString() + "," 
				+ fx.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().SaveData(1);
		PlayerPrefs.SetInt("fileLoad", 2);
		saveInfo.GetComponent<Text>().text = "Character saved at slot 2...";
	}
	
	public void saveSlot3 ()
	{
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[0] =
			name.GetComponent<InputField>().text + "," + "1" + "," + "0" + "," +
				vit.ToString() + "," + dur.ToString() + "," + intel.ToString()+ "," + foc.ToString() + "," 
				+ fx.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().SaveData(1);
		PlayerPrefs.SetInt("fileLoad", 3);
		saveInfo.GetComponent<Text>().text = "Character saved at slot 3...";
	}
}
	