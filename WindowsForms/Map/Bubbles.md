---
layout: post
title: Bubbles in Windows-Forms Map Control | Syncfusion<sup>®</sup>
description: Learn here all about the Bubbles feature of the Syncfusion<sup>®</sup> Windows Forms Map (Maps) control and more.
platform: windowsforms
control: Maps
documentation: ug
---

# Bubbles in Windows Forms Map (Maps)

Bubbles in the maps control represent the under-bound data values of the map. Bubbles are scattered throughout the map shapes, which contain bound values.

Bubbles are included when the data binding and bubble setting are set.

The following properties are available in bubble setting:

<table>
<tr>
<th>
Property</th><th>
Type</th><th>
Description</th></tr>
<tr>
<td>
AutoFillColor</td><td>
Boolean value (true/false)</td><td>
Gets or sets whether the colors should be filled automatically</td></tr>
<tr>
<td>
MaxSize</td><td>
Double</td><td>
Get or sets the maximum height and width of the bubble</td></tr>
<tr>
<td>
MinSize</td><td>
Double</td><td>
Gets or sets the minimum height and width of the bubble</td></tr>
<tr>
<td>
StrokeThickness</td><td>
Double</td><td>
Gets or sets the border thickness of the bubbles</td></tr>
<tr>
<td>
ColorValuePath</td><td>
String</td><td>
Gets or sets the value for bubble color mapping</td></tr>
<tr>
<td>
ValuePath</td><td>
String</td><td>
Gets or sets the name of the under-bound property in ItemsSource</td></tr>
<tr>
<td>
ColorMapping</td><td>
ObservableCollection &lt;RangeColorMapping&gt;</td><td>
Gets or sets the colors for specified range</td></tr>
<tr>
<td>
Fill</td><td>
Brush</td><td>
Gets or sets the fill brush of the bubble when auto fill color is set to true</td></tr>
</table>


## Adding bubbles

To add bubbles to a map, the BubbleSetting has to be added to the ShapeFileLayer. Set the [`AutoFillColors`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.UI.Xaml.Maps.BubbleMarkerSetting.html#Syncfusion_UI_Xaml_Maps_BubbleMarkerSetting_AutoFillColors) to false in the [`Fill`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.UI.Xaml.Maps.BubbleMarkerSetting.html#Syncfusion_UI_Xaml_Maps_BubbleMarkerSetting_Fill) property. Also set the [`MaxSize`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.UI.Xaml.Maps.BubbleMarkerSetting.html#Syncfusion_UI_Xaml_Maps_BubbleMarkerSetting_MaxSize), [`MinSize`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.UI.Xaml.Maps.BubbleMarkerSetting.html#Syncfusion_UI_Xaml_Maps_BubbleMarkerSetting_MinSize), and [`ValuePath`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.UI.Xaml.Maps.BubbleMarkerSetting.html#Syncfusion_UI_Xaml_Maps_BubbleMarkerSetting_ValuePath) properties as shown in the following code sample.

When the under-bound value is below or above any of the given sorted range, then the fill is set as “Black.” 

The `AutoFillColors` must be set to “False” to enable range color mapping.

{% tabs %}

{% highlight c# %}

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

{% endhighlight %}

{% endtabs %}

{% tabs %}

{% highlight c# %}

public partial class Form1 : Form
{

        private void Form1_Load(object sender, EventArgs e)
        {

            this.mapsControl1.Dock = DockStyle.Fill;

            this.mapsControl1.Margin = new Padding(0, 0, 4, 0);

            this.mapsControl1.MapBackgroundBrush = new SolidBrush(Color.White);

            this.mapsControl1.MapItemsShape = Syncfusion.Windows.Forms.Maps.MapItemShapes.None;

             MapViewModel model = new MapViewModel();

             ShapeFileLayer shapeLayer = new ShapeFileLayer();

             shapeLayer.Uri = "world1.shp";

             shapeLayer.ItemSource = model.Countries;

             shapeLayer.ShapeIDPath = "NAME";

             shapeLayer.ShapeIDTableField = "NAME"; 


             shapeLayer.ShapeSetting.ShapeValuePath = "Population";

             shapeLayer.ShapeSetting.ShapeColorValuePath = "Population";

             shapeLayer.ShapeSetting.ShapeDisplayValuePath = "NAME";

             shapeLayer.ShapeSetting.ShapeFill = "#E5E5E5";

             shapeLayer.ShapeSetting.ShapeStrokeThickness = 1.5;

             shapeLayer.ShapeSetting.ShapeStroke = "#C1C1C1";

            shapeLayer.BubbleSetting.AutoFillColors = false;

            shapeLayer.BubbleSetting.MaxSize = 70;

            shapeLayer.BubbleSetting.MinSize = 25;

            shapeLayer.BubbleSetting.ValuePath = "Population";

            shapeLayer.BubbleSetting.ColorValuePath = "Population";

            this.mapsControl1.Layers.Add(shapeLayer);

         }

}       

{% endhighlight %}

{% endtabs %}

Screenshot:

![Adding Bubble in Windows Forms Map](Bubbles_images/Bubbles_img1.png)


## Range color mapping

Range color mapping is one of the features used to differentiate the bubble fill based on its under-bound value and color ranges. It contains the following properties:



<table>
<tr>
<th>
Property</th><th>
Type</th><th>
Description</th></tr>
<tr>
<td>
From and To</td><td>
Double</td><td>
Gets or sets the From and To values based on the ColorValuePath to the bubbles</td></tr>
<tr>
<td>
Color</td><td>
Color</td><td>
Gets or sets the color values for a given From and To values</td></tr>
</table>


The fill color of a particular bubble can be determined by its under-bound value and color range. For example, consider the following color ranges in the below snippet.

{% tabs %}

{% highlight c# %}

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

{% endhighlight %}

{% endtabs %}

{% tabs %}

{% highlight c# %}

public partial class Form1 : Form
{

        private void Form1_Load(object sender, EventArgs e)
        {

            this.mapsControl1.Dock = DockStyle.Fill;

            this.mapsControl1.Margin = new Padding(0, 0, 4, 0);

            this.mapsControl1.MapBackgroundBrush = new SolidBrush(Color.White);

            this.mapsControl1.MapItemsShape = Syncfusion.Windows.Forms.Maps.MapItemShapes.None;

             MapViewModel model = new MapViewModel();

             ShapeFileLayer shapeLayer = new ShapeFileLayer();

             shapeLayer.Uri = "world1.shp";

             shapeLayer.ItemSource = model.Countries;

             shapeLayer.ShapeIDPath = "NAME";

             shapeLayer.ShapeIDTableField = "NAME";

             shapeLayer.ShapeSetting.ShapeValuePath = "Population";

             shapeLayer.ShapeSetting.ShapeColorValuePath = "Population";

             shapeLayer.ShapeSetting.ShapeFill = "#E5E5E5";

             shapeLayer.ShapeSetting.ShapeStrokeThickness = 1.5;

             shapeLayer.ShapeSetting.ShapeStroke = "#C1C1C1";


            shapeLayer.BubbleSetting.AutoFillColors = false;

            shapeLayer.BubbleSetting.MaxSize = 70;

            shapeLayer.BubbleSetting.MinSize = 25;

            shapeLayer.BubbleSetting.ValuePath = "Population";

            shapeLayer.BubbleSetting.ColorValuePath = "Population";

            shapeLayer.BubbleSetting.ColorMappings = new System.Collections.ObjectModel.ObservableCollection<ColorMapping>();

            shapeLayer.BubbleSetting.ColorMappings.Add(new RangeColorMapping { From =314623001, To = 1347350000, Color = System.Drawing.Color.FromArgb(0x7F, 0x20, 0xBC, 0xEE) });

            shapeLayer.BubbleSetting.ColorMappings.Add(new RangeColorMapping { From = 143228301, To= 314623001, Color = System.Drawing.Color.FromArgb(0x7F, 0xA7, 0xCE, 0x38) });

            shapeLayer.BubbleSetting.ColorMappings.Add(new RangeColorMapping { From = 82724090, To= 143228301, Color = System.Drawing.Color.FromArgb(0x7F, 0xF1, 0xB2, 0x1A) });

            shapeLayer.BubbleSetting.ColorMappings.Add(new RangeColorMapping { From = 22789702,  To= 50586757, Color = System.Drawing.Color.FromArgb(0x7F, 0x1D, 0xA2, 0x49) });

            shapeLayer.BubbleSetting.ColorMappings.Add(new RangeColorMapping { From = 0, To = 22789702, Color = System.Drawing.Color.FromArgb(0x7F, 0xEB, 0x73, 0x7C) });

            shapeLayer.BubbleSetting.ColorMappings.Add(new RangeColorMapping { From = 50586757, To = 82724090, Color = System.Drawing.Color.FromArgb(0x7F, 0xED, 0x2D, 0x95) });

             this.mapsControl1.Layers.Add(shapeLayer);

         }

}       

{% endhighlight %}

{% endtabs %}

Screenshot: 

![Range Color Mapping in Windows Forms Map](Bubbles_images/Bubbles_img2.png)
