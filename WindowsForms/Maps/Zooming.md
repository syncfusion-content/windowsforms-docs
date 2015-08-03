---
layout: post
title: Zooming
description: zooming
platform: WindowsForms
control: Maps
documentation: ug
---

# Zooming

There are two ways to zoom the Maps. They are: 

* ZoomFactor
* ZoomLevel

## Zoom with ZoomFactor 


By changing the ZoomFactor value it is possible to Zoom the Map. If ZoomFactor value is increased then Map will be ZoomIn each time based on the ZoomFactor vaue and vice versa.



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

{% highlight c# %}

public partial class Form1 : Form

    {

        public Form1()

        {

            InitializeComponent();

        }



        private void Form1_Load(object sender, EventArgs e)

        {

            this.mapsControl1.MapBackgroundBrush = new SolidBrush(Color.White);

            this.mapsControl1.MapItemsShape = Syncfusion.Windows.Forms.Maps.MapItemShapes.None;

            this.mapsControl1.ZoomFactor = 0.75f;





            ShapeFileLayer shapeLayer = new ShapeFileLayer();

            shapeLayer.Uri = "world1.shp";

            shapeLayer.ItemSource = viewmodel.Countries;

            shapeLayer.ShapeIDPath = "NAME";

            shapeLayer.ShapeIDTableField = "NAME";     



            this.mapsControl1.Layers.Add(shapeLayer);



        }

     }       
	 
{% endhighlight %}

Screenshot:

![](Zooming_images/Zooming_img1.png)

## Zoom with ZoomLevel 

When changing the ZoomLevel it will automatically change the ZoomFactor value, so Map will be zoomed based on the ZoomFactor value. ZoomFactor value is determined when ZoomLevel is changed.  Initial ZoomFactor value is multiplied by the ZoomLevel value, then new value will be set as ZoomFactor.



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

{% highlight c# %}

public partial class Form1 : Form

    {

        public Form1()

        {

            InitializeComponent();

        }



        private void Form1_Load(object sender, EventArgs e)

        {

            this.mapsControl1.MapBackgroundBrush = new SolidBrush(Color.White);

            this.mapsControl1.MapItemsShape = Syncfusion.Windows.Forms.Maps.MapItemShapes.None;

            this.mapsControl1.ZoomFactor = 0.75f;

            this.mapsControl1.ZoomLevel = 4;





            ShapeFileLayer shapeLayer = new ShapeFileLayer();

            shapeLayer.Uri = "world1.shp";



            this.mapsControl1.Layers.Add(shapeLayer);



        }

     }       

{% endhighlight %}

Screenshot:
![](Zooming_images/Zooming_img2.png)