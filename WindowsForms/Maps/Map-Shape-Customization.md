---
layout: post
title: Map-Shape-Customization | Windows Forms | Syncfusion
description: map shape customization
platform: windowsforms
control: Maps
documentation: ug
---

# Shape Customization

Shapes in the Map control can be customized using ShapeSetting properties such as ShapeFill, ShapeStroke and ShapeStrokeThickness.

## Shape settings

`ShapeFill`[https://help.syncfusion.com/cr/cref_files/windowsforms/maps/Syncfusion.Maps.Windows~Syncfusion.UI.Xaml.Maps.ShapeSetting~ShapeFill.html] property will fill the Shape with the respective color. `ShapeStroke`[https://help.syncfusion.com/cr/cref_files/windowsforms/maps/Syncfusion.Maps.Windows~Syncfusion.UI.Xaml.Maps.ShapeSetting~ShapeStroke.html] property will set the border color for the shape in the Map. And `ShapeStrokeThickness`[https://help.syncfusion.com/cr/cref_files/windowsforms/maps/Syncfusion.Maps.Windows~Syncfusion.UI.Xaml.Maps.ShapeSetting~ShapeStrokeThickness.html] property will set the thickness for the shape’s border.	

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

             ShapeFileLayer shapeLayer = new ShapeFileLayer();

             shapeLayer.Uri = "world1.shp";

             shapeLayer.ShapeSetting.ShapeFill = "#E5E5E5";

             shapeLayer.ShapeSetting.ShapeStrokeThickness = 1.5;

             shapeLayer.ShapeSetting.ShapeStroke = "#C1C1C1";

             this.mapsControl1.Layers.Add(shapeLayer);

         }
}       

{% endhighlight %}

{% endtabs %}

Screenshot:

![](Map-Shape-Customization_images/Map-Shape-Customization_img1.png)