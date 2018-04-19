<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="1e+8" maxScale="0" hasScaleBasedVisibilityFlag="0" version="3.0.0-Girona">
  <pipe>
    <rasterrenderer classificationMax="225.419" opacity="1" type="singlebandpseudocolor" classificationMin="-8888" alphaBand="-1" band="1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader colorRampType="INTERPOLATED" clip="0" classificationMode="1">
          <colorramp type="gradient" name="[source]">
            <prop k="color1" v="0,0,4,255"/>
            <prop k="color2" v="252,253,191,255"/>
            <prop k="discrete" v="0"/>
            <prop k="rampType" v="gradient"/>
            <prop k="stops" v="0.268029;49,14,41,255:0.45098;161,48,126,255:0.588235;217,70,107,255:0.803922;254,161,110,255:0.901961;254,207,146,255"/>
          </colorramp>
          <item value="-8888" color="#0000ff" label="GWS" alpha="255"/>
          <item value="0" color="#310e29" label="0" alpha="255"/>
          <item value="10" color="#a1307e" label="10" alpha="255"/>
          <item value="25" color="#d9466b" label="25" alpha="255"/>
          <item value="50" color="#fea16e" label="50" alpha="255"/>
          <item value="100" color="#fecf92" label="100" alpha="255"/>
          <item value="225.419" color="#fcfdbf" label="225.4" alpha="255"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast contrast="0" brightness="0"/>
    <huesaturation colorizeBlue="128" colorizeGreen="128" colorizeOn="0" colorizeRed="255" saturation="0" colorizeStrength="100" grayscaleMode="0"/>
    <rasterresampler maxOversampling="2"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
