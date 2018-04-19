<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="1e+8" maxScale="0" hasScaleBasedVisibilityFlag="0" version="3.0.0-Girona">
  <pipe>
    <rasterrenderer classificationMax="347.575" opacity="1" type="singlebandpseudocolor" classificationMin="-21.5263" alphaBand="-1" band="1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>MinMax</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader colorRampType="INTERPOLATED" clip="0" classificationMode="1">
          <colorramp type="gradient" name="[source]">
            <prop k="color1" v="247,251,255,255"/>
            <prop k="color2" v="8,48,107,255"/>
            <prop k="discrete" v="0"/>
            <prop k="rampType" v="gradient"/>
            <prop k="stops" v="0.13;222,235,247,255:0.26;198,219,239,255:0.39;158,202,225,255:0.52;107,174,214,255:0.65;66,146,198,255:0.78;33,113,181,255:0.9;8,81,156,255"/>
          </colorramp>
          <item value="-21.5263" color="#f7fbff" label="-21.5" alpha="255"/>
          <item value="26.456869" color="#deebf7" label="26.5" alpha="255"/>
          <item value="74.440038" color="#c6dbef" label="74.4" alpha="255"/>
          <item value="122.423207" color="#9ecae1" label="122" alpha="255"/>
          <item value="170.406376" color="#6baed6" label="170" alpha="255"/>
          <item value="218.389545" color="#4292c6" label="218" alpha="255"/>
          <item value="266.372714" color="#2171b5" label="266" alpha="255"/>
          <item value="310.66487" color="#08519c" label="311" alpha="255"/>
          <item value="347.575" color="#08306b" label="348" alpha="255"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast contrast="0" brightness="0"/>
    <huesaturation colorizeBlue="128" colorizeGreen="128" colorizeOn="0" colorizeRed="255" saturation="0" colorizeStrength="100" grayscaleMode="0"/>
    <rasterresampler maxOversampling="2"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
