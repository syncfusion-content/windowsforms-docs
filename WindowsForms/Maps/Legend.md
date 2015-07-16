---
layout: post
title: Legend
description: legend
platform: WindowsForms
control: Maps
documentation: ug
---

# Legend

A legend is a key to symbolism used on a map, usually containing swatches of symbols with descriptions. It provides valuable information for interpreting 

What the map is showing you, and can be represented in various colors and shapes based on the data.

## Visibility of Legend 

Legends are visible only by setting the “ShowLegend “property as true in the ShapeFileLayer.

## Positioning of Legend 

Map legends can be positioned by setting the LegendPosition property in ShapeFileLayer. Also, the legend can be positioned based on the margin values for the x axis and the y axis with the help of the PositionX and PositionY properties available in ShapeFileLayer. For positioning the legend based on margins corresponding to a map, LegendPosition must be set with value of “Default”.



<table>
<tr>
<td>
Property</td><td>
Type</td><td>
Description</td></tr>
<tr>
<td>
LegendPosition</td><td>
LegendPosition (enum)</td><td>
Gets or sets the standard position for the legend.</td></tr>
<tr>
<td>
PositionX</td><td>
Double</td><td>
Gets or sets the margin value for the x axis.</td></tr>
<tr>
<td>
PositionY</td><td>
Double</td><td>
Gets or sets the margin value for the y axis.</td></tr>
</table>


## Header for Legend 

A header for the legend can be added by setting the Title property of the string type.

## Categories of Legend 

Legends are categorized as two types:

• Legends for layers.

• Legends for bubbles.

These can be set using the LegendType property of the type LegendType.



## Shapes for Legend 

Bubble type legends are always bubbles with varying sizes.  The size of the bubbles is obtained from the SizeRatio from the BubbleSetting.

Layer shape type legends can be different shapes for the legend. The shapes can be set using the LegendIcon, of the LegendIcon type.

Code sample:



[FORM1.DESIGNER.CS]

partial class Form1

    {



  private void InitializeComponent()

         {

            this.mapsControl1 = new Syncfusion.Windows.Forms.Maps.Maps();

            this.mapsControl1.Name = "mapsControl1";

            this.mapsControl1.Size = new System.Drawing.Size(880, 585); 

            this.Controls.Add(this.mapsControl1);  

             this.ClientSize = new System.Drawing.Size(880, 585);          

            this.Load += new System.EventHandler(this.Form1_Load);

         }

            private Syncfusion.Windows.Forms.Maps.Maps mapsControl1;

     }  



[FORM1.CS]

public partial class Form1 : Form

    {

        private void Form1_Load(object sender, EventArgs e)

        {

            this.mapsControl1.Dock = DockStyle.Fill;

            this.mapsControl1.Margin = new Padding(0, 0, 4, 0);

            this.mapsControl1.MapBackgroundBrush = new SolidBrush(Color.White);

            this.mapsControl1.MapItemsShape = Syncfusion.Windows.Forms.Maps.MapItemShapes.None;



            MapViewModel viewmodel = new MapViewModel();



            ShapeFileLayer shapeLayer = new ShapeFileLayer();

            shapeLayer.Uri = "world1.shp";

            shapeLayer.ItemSource = viewmodel.Countries;

            shapeLayer.ShapeIDPath = "NAME";

            shapeLayer.ShapeIDTableField = "NAME";

            shapeLayer.ShapeSetting.ShapeValuePath = "Population";

shapeLayer.ShapeSetting.ShapeColorValuePath = "Population";

            shapeLayer.ShapeSetting.ShapeDisplayValuePath = "NAME";

            shapeLayer.ShapeSetting.TextForeground = "Black";

            shapeLayer.ShowMapItem = false;

            shapeLayer.ShowToolTip = true;

            shapeLayer.ShapeSetting.ShapeFill = "#E5E5E5";

            shapeLayer.ShapeSetting.ShapeStrokeThickness = 1.5;

            shapeLayer.ShapeSetting.ShapeStroke = "Black";

            shapeLayer.ShapeSetting.FillSetting.AutoFillColors = false;

            shapeLayer.LegendSetting = new LegendSettings()

            {

                ShowLegend = true, Size = new Size(15, 15), PositionX = 30, PositionY = 180

            };

            shapeLayer.ShapeSetting.FillSetting.ColorMappings = new System.Collections.ObjectModel.ObservableCollection<ColorMapping>();

            shapeLayer.ShapeSetting.FillSetting.ColorMappings.Add(new RangeColorMapping { From = 750000000, To = 1500000000, Color= Color.Coral });

            shapeLayer.ShapeSetting.FillSetting.ColorMappings.Add(new RangeColorMapping { From = 0, To = 750000000, Color =Color.Aqua });

            shapeLayer.ShapeSetting.FillSetting.ColorMappings.Add(new RangeColorMapping { From = 0, To = 0, Color = Color.CadetBlue });

             this.mapsControl1.Layers.Add(shapeLayer);

         }

     }       



The following screenshot illustrate a map displaying default legend

{ ![](Legend_images/Legend_img1.png) | markdownify }
{:.image }


