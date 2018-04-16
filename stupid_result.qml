<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" version="3.0.0-Girona" maxScale="0" minScale="1e+8">
  <pipe>
    <rasterrenderer opacity="1" band="1" classificationMin="-8888" alphaBand="-1" type="singlebandpseudocolor" classificationMax="225.419">
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
        <colorrampshader classificationMode="1" colorRampType="INTERPOLATED" clip="0">
          <colorramp name="[source]" type="gradient">
            <prop v="0,0,4,255" k="color1"/>
            <prop v="252,253,191,255" k="color2"/>
            <prop v="0" k="discrete"/>
            <prop v="gradient" k="rampType"/>
            <prop v="0.268029;49,14,41,255:0.45098;161,48,126,255:0.588235;217,70,107,255:0.803922;254,161,110,255:0.901961;254,207,146,255" k="stops"/>
          </colorramp>
          <item alpha="255" value="-8888" color="#0000ff" label="GWS"/>
          <item alpha="255" value="0" color="#310e29" label="0"/>
          <item alpha="255" value="10" color="#a1307e" label="10"/>
          <item alpha="255" value="25" color="#d9466b" label="25"/>
          <item alpha="255" value="50" color="#fea16e" label="50"/>
          <item alpha="255" value="100" color="#fecf92" label="100"/>
          <item alpha="255" value="225.419" color="#fcfdbf" label="225.4"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0"/>
    <huesaturation colorizeOn="0" colorizeGreen="128" grayscaleMode="0" colorizeStrength="100" saturation="0" colorizeBlue="128" colorizeRed="255"/>
    <rasterresampler zoomedOutResampler="bilinear" maxOversampling="4"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
