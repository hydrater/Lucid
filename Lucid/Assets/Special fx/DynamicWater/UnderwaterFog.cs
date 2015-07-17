using UnityEngine;
using LostPolygon.DynamicWaterSystem;

#if !UNITY_3_5
namespace LostPolygon.DynamicWaterSystem {
#endif
    /// <summary>
    /// A simple underwater fog effect. Attach this component to the Camera.
    /// </summary>
    public class UnderwaterFog : MonoBehaviour {
    	public Transform waterObject;
    	
        // Settings that will be used when underwater
        public FogMode FogMode = FogMode.Linear;
        public Color FogColor = new Color32(112, 183, 255, 255);
        public float FogDensity = 0.1f;
        public float FogStartDistance = 1f;
        public float FogEndDistance = 15f;
        public Material Skybox = null;

        // Original settings
        private bool _defaultFog;
        private FogMode _defaultFogMode;
        private Color _defaultFogColor;
        private float _defaultFogDensity;
        private float _defaultFogStartDistance;
        private float _defaultFogEndDistance;
        private Material _defaultSkybox;

        private void Start() {
            // Reading the initial fog state
            _defaultFog = RenderSettings.fog;
            _defaultFogMode = RenderSettings.fogMode;
            _defaultFogColor = RenderSettings.fogColor;
            _defaultFogDensity = RenderSettings.fogDensity;
            _defaultFogStartDistance = RenderSettings.fogStartDistance;
            _defaultFogEndDistance = RenderSettings.fogEndDistance;
            _defaultSkybox = RenderSettings.skybox;
			waterObject = GameObject.Find("Water").transform;
        }

        private void Update() {
            // If we are in the water
			if (this.transform.position.y <= waterObject.position.y+0.1f) {
                SetFog(true);
            } else {
                SetFog(false);
            }
        }

        private void SetFog(bool enableFog) {
            if (enableFog) {
                // Setting the desired fog settings
                RenderSettings.fog = true;
                RenderSettings.fogMode = FogMode;
                RenderSettings.fogColor = FogColor;
                RenderSettings.fogDensity = FogDensity;
                RenderSettings.fogStartDistance = FogStartDistance;
                RenderSettings.fogEndDistance = FogEndDistance;
                if (Skybox != null) {
                    RenderSettings.skybox = Skybox;
                }
            } else {
                // Restoring the settings we saved at start
                RenderSettings.fog = _defaultFog;
                RenderSettings.fogMode = _defaultFogMode;
                RenderSettings.fogColor = _defaultFogColor;
                RenderSettings.fogDensity = _defaultFogDensity;
                RenderSettings.fogStartDistance = _defaultFogStartDistance;
                RenderSettings.fogEndDistance = _defaultFogEndDistance;
                RenderSettings.skybox = _defaultSkybox;
            }
        }
    }
#if !UNITY_3_5
}
#endif