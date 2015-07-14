#pragma warning disable 0649
using UnityEngine;
using System.Collections;
using UnityStandardAssets.Characters.FirstPerson;
using UnityEngine.UI;

public class saveLoad : MonoBehaviour {
	[SerializeField] private GameObject saveLoadUI, editSaveUI, loadSaveUI, player, saveLoadPrefab, totalPoints, name, saveInfo;
	[SerializeField] private GameObject vitalityBar, durabilityBar, intelligenceBar, focusBar, reflexesBar;
	[SerializeField] private GameObject vitalitySum, durabilitySum, intelligenceSum, focusSum, reflexesSum;
	private float total, vit ,dur, intel, foc, rf;
	private sbyte mouseOn = 0;
	
	void Start() 
	{
		//total = (level * 2) - used variables;
		total = 0;
		//load all current stat attributes and assign to int variables
		vit = 0;
		dur = 0;
		intel = 0;
		foc = 0; 
		rf = 0;
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
	
	public void reflexesBarChange ()
	{
		reflexesSum.GetComponent<Text>().text = reflexesBar.GetComponent<Slider>().value.ToString();
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
			temp = reflexesBar.GetComponent<Slider>().value -= rf;
			Debug.Log(temp);
			total -= temp;
			rf += temp;
			if (total < 0)
			{
				total += temp;
				rf -= temp;
				rf += total;
				total = 0;
				reflexesBar.GetComponent<Slider>().value = rf;
				reflexesSum.GetComponent<Text>().text = rf.ToString();
			}
			reflexesBar.GetComponent<Slider>().value = rf;
			totalPoints.GetComponent<Text>().text = total.ToString();
			break; 
		default:
		break;
		}
	}
	
	public void saveSlot1 ()
	{
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[0] = name.GetComponent<InputField>().text;
		PlayerPrefs.SetString("Name", name.GetComponent<InputField>().text);
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[1] = "1";
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[2] = "0";
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[3] = vit.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[4] = dur.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[5] = intel.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[6] = foc.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[7] = rf.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().SaveData(1);
		saveInfo.GetComponent<Text>().text = "Character saved at slot 1...";
	}
	
	public void saveSlot2 ()
	{
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[0] = name.GetComponent<InputField>().text;
		PlayerPrefs.SetString("Name", name.GetComponent<InputField>().text);
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[1] = "1";
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[2] = "0";
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[3] = vit.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[4] = dur.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[5] = intel.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[6] = foc.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[7] = rf.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().SaveData(2);
		saveInfo.GetComponent<Text>().text = "Character saved at slot 2...";
	}
	
	public void saveSlot3 ()
	{
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[0] = name.GetComponent<InputField>().text;
		PlayerPrefs.SetString("Name", name.GetComponent<InputField>().text);
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[1] = "1";
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[2] = "0";
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[3] = vit.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[4] = dur.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[5] = intel.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[6] = foc.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().variablesValue[7] = rf.ToString();
		saveLoadPrefab.GetComponent<AdvancedSaveSystem>().SaveData(3);
		saveInfo.GetComponent<Text>().text = "Character saved at slot 3...";
	}
}
	