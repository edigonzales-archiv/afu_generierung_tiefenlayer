<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyAlgorithm="0" simplifyLocal="1" simplifyDrawingHints="0" labelsEnabled="1" version="3.0.1-Girona" minScale="1e+8" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0" maxScale="0" simplifyDrawingTol="1" readOnly="0">
  <renderer-v2 forceraster="0" symbollevels="0" type="singleSymbol" enableorderby="0">
    <symbols>
      <symbol alpha="1" clip_to_extent="1" type="fill" name="0">
        <layer pass="0" locked="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="35,139,69,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.26" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{3139aab7-a1cb-4869-9338-2bb79f0fea8f}">
      <rule key="{9b18c0a2-eee3-4ef8-a04a-3cff893616a0}" description="Vertex 1">
        <settings>
          <text-style fontUnderline="0" namedStyle="Regular" useSubstitutions="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" textOpacity="1" previewBkgrdColor="#ffffff" fontSize="15" textColor="35,139,69,255" fontWeight="50" fontItalic="0" fontStrikeout="0" blendMode="0" fontCapitals="0" fontLetterSpacing="0" fieldName="format_number( z( point_n( $geometry, 1)),2)" fontFamily="Zurich" isExpression="1" fontWordSpacing="0" multilineHeight="1">
            <text-buffer bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferOpacity="1" bufferJoinStyle="128" bufferSizeUnits="MM" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1"/>
            <background shapeSizeX="0" shapeSizeY="0" shapeSizeUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthUnit="MM" shapeSVGFile="" shapeRadiiX="0" shapeOffsetY="0" shapeRotationType="0" shapeDraw="0" shapeBorderColor="128,128,128,255" shapeOpacity="1" shapeBorderWidth="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeRotation="0" shapeBlendMode="0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeType="0" shapeSizeType="0" shapeOffsetUnit="MM" shapeJoinStyle="64"/>
            <shadow shadowOpacity="0.7" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowBlendMode="6" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowRadiusUnit="MM" shadowRadius="1.5"/>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" multilineAlign="4294967295" wrapChar="" rightDirectionSymbol=">" reverseDirectionSymbol="0" addDirectionSymbol="0" formatNumbers="0" decimals="3" placeDirectionSymbol="0"/>
          <placement placement="0" preserveRotation="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" quadOffset="4" xOffset="0" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" maxCurvedCharAngleOut="-25" yOffset="0" centroidWhole="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" dist="0" offsetType="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleIn="25" rotationAngle="0" priority="5" repeatDistanceUnits="MM" placementFlags="10"/>
          <rendering limitNumLabels="0" drawLabels="1" minFeatureSize="0" mergeLines="0" obstacleFactor="1" scaleMax="0" maxNumLabels="2000" upsidedownLabels="0" scaleVisibility="0" displayAll="0" obstacle="1" fontMinPixelSize="3" labelPerPart="0" zIndex="0" fontMaxPixelSize="10000" obstacleType="0" scaleMin="0" fontLimitPixelSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="PositionX">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="x(point_n( $geometry, 1))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="PositionY">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="y(point_n( $geometry, 1))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
        </settings>
      </rule>
      <rule key="{b6d17af0-a7cc-45d0-81a6-6dcf2d9e5f9a}" description="Vertex 2">
        <settings>
          <text-style fontUnderline="0" namedStyle="Regular" useSubstitutions="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" textOpacity="1" previewBkgrdColor="#ffffff" fontSize="15" textColor="35,139,69,255" fontWeight="50" fontItalic="0" fontStrikeout="0" blendMode="0" fontCapitals="0" fontLetterSpacing="0" fieldName="format_number( z( point_n( $geometry, 2)),2)" fontFamily="Zurich" isExpression="1" fontWordSpacing="0" multilineHeight="1">
            <text-buffer bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferOpacity="1" bufferJoinStyle="128" bufferSizeUnits="MM" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1"/>
            <background shapeSizeX="0" shapeSizeY="0" shapeSizeUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthUnit="MM" shapeSVGFile="" shapeRadiiX="0" shapeOffsetY="0" shapeRotationType="0" shapeDraw="0" shapeBorderColor="128,128,128,255" shapeOpacity="1" shapeBorderWidth="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeRotation="0" shapeBlendMode="0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeType="0" shapeSizeType="0" shapeOffsetUnit="MM" shapeJoinStyle="64"/>
            <shadow shadowOpacity="0.7" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowBlendMode="6" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowRadiusUnit="MM" shadowRadius="1.5"/>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" multilineAlign="4294967295" wrapChar="" rightDirectionSymbol=">" reverseDirectionSymbol="0" addDirectionSymbol="0" formatNumbers="0" decimals="3" placeDirectionSymbol="0"/>
          <placement placement="0" preserveRotation="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" quadOffset="4" xOffset="0" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" maxCurvedCharAngleOut="-25" yOffset="0" centroidWhole="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" dist="0" offsetType="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleIn="25" rotationAngle="0" priority="5" repeatDistanceUnits="MM" placementFlags="10"/>
          <rendering limitNumLabels="0" drawLabels="1" minFeatureSize="0" mergeLines="0" obstacleFactor="1" scaleMax="0" maxNumLabels="2000" upsidedownLabels="0" scaleVisibility="0" displayAll="0" obstacle="1" fontMinPixelSize="3" labelPerPart="0" zIndex="0" fontMaxPixelSize="10000" obstacleType="0" scaleMin="0" fontLimitPixelSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="PositionX">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="x( point_n( $geometry, 2))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="PositionY">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="y( point_n( $geometry, 2))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
        </settings>
      </rule>
      <rule key="{ee9167e8-7472-4af9-b0a0-93ba6c630088}" description="Vertex 3">
        <settings>
          <text-style fontUnderline="0" namedStyle="Regular" useSubstitutions="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" textOpacity="1" previewBkgrdColor="#ffffff" fontSize="15" textColor="35,139,69,255" fontWeight="50" fontItalic="0" fontStrikeout="0" blendMode="0" fontCapitals="0" fontLetterSpacing="0" fieldName="format_number( z( point_n( $geometry, 3)),2)" fontFamily="Zurich" isExpression="1" fontWordSpacing="0" multilineHeight="1">
            <text-buffer bufferDraw="0" bufferColor="255,255,255,255" bufferBlendMode="0" bufferOpacity="1" bufferJoinStyle="128" bufferSizeUnits="MM" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1"/>
            <background shapeSizeX="0" shapeSizeY="0" shapeSizeUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthUnit="MM" shapeSVGFile="" shapeRadiiX="0" shapeOffsetY="0" shapeRotationType="0" shapeDraw="0" shapeBorderColor="128,128,128,255" shapeOpacity="1" shapeBorderWidth="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeRotation="0" shapeBlendMode="0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeType="0" shapeSizeType="0" shapeOffsetUnit="MM" shapeJoinStyle="64"/>
            <shadow shadowOpacity="0.7" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowBlendMode="6" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowRadiusUnit="MM" shadowRadius="1.5"/>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" multilineAlign="4294967295" wrapChar="" rightDirectionSymbol=">" reverseDirectionSymbol="0" addDirectionSymbol="0" formatNumbers="0" decimals="3" placeDirectionSymbol="0"/>
          <placement placement="0" preserveRotation="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" quadOffset="4" xOffset="0" offsetUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" maxCurvedCharAngleOut="-25" yOffset="0" centroidWhole="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" dist="0" offsetType="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleIn="25" rotationAngle="0" priority="5" repeatDistanceUnits="MM" placementFlags="10"/>
          <rendering limitNumLabels="0" drawLabels="1" minFeatureSize="0" mergeLines="0" obstacleFactor="1" scaleMax="0" maxNumLabels="2000" upsidedownLabels="0" scaleVisibility="0" displayAll="0" obstacle="1" fontMinPixelSize="3" labelPerPart="0" zIndex="0" fontMaxPixelSize="10000" obstacleType="0" scaleMin="0" fontLimitPixelSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="PositionX">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="x( point_n( $geometry, 3))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="PositionY">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="y( point_n( $geometry, 3))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
        </settings>
      </rule>
    </rules>
  </labeling>
  <customproperties>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory maxScaleDenominator="1e+8" barWidth="5" rotationOffset="270" width="15" height="15" penWidth="0" minScaleDenominator="0" penAlpha="255" lineSizeType="MM" diagramOrientation="Up" penColor="#000000" backgroundColor="#ffffff" scaleDependency="Area" enabled="0" sizeType="MM" scaleBasedVisibility="0" lineSizeScale="3x:0,0,0,0,0,0" sizeScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" backgroundAlpha="255" minimumSize="0" opacity="1">
      <fontProperties style="" description=".SF NS Text,13,-1,5,50,0,0,0,0,0"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" placement="0" dist="0" zIndex="0" priority="0" obstacle="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <fieldConfiguration>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="daten_id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ebene_id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="beschreibu">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" index="0" name=""/>
    <alias field="daten_id" index="1" name=""/>
    <alias field="ebene_id" index="2" name=""/>
    <alias field="beschreibu" index="3" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="daten_id" applyOnUpdate="0" expression=""/>
    <default field="ebene_id" applyOnUpdate="0" expression=""/>
    <default field="beschreibu" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint notnull_strength="1" constraints="3" unique_strength="1" field="id" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="daten_id" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="ebene_id" exp_strength="0"/>
    <constraint notnull_strength="0" constraints="0" unique_strength="0" field="beschreibu" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id" exp=""/>
    <constraint desc="" field="daten_id" exp=""/>
    <constraint desc="" field="ebene_id" exp=""/>
    <constraint desc="" field="beschreibu" exp=""/>
  </constraintExpressions>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column hidden="0" type="field" width="-1" name="id"/>
      <column hidden="0" type="field" width="-1" name="daten_id"/>
      <column hidden="0" type="field" width="-1" name="ebene_id"/>
      <column hidden="0" type="field" width="-1" name="beschreibu"/>
      <column hidden="1" type="actions" width="-1"/>
    </columns>
  </attributetableconfig>
  <editform></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="beschreibu"/>
    <field editable="1" name="daten_id"/>
    <field editable="1" name="ebene_id"/>
    <field editable="1" name="id"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="beschreibu"/>
    <field labelOnTop="0" name="daten_id"/>
    <field labelOnTop="0" name="ebene_id"/>
    <field labelOnTop="0" name="id"/>
  </labelOnTop>
  <widgets/>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <expressionfields/>
  <previewExpression>id</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
