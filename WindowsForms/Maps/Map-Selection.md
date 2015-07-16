---
layout: post
title: Map-Selection
description: map selection
platform: WindowsForms
control: Maps
documentation: ug
---

# Map Selection

Each shape in the map can be selected and unselected when interacted with shapes. There are two ways to select the map shapes:

1.  SingleSelection

2.   MultiSelection



The selected map shapes is differentiate by its fill. “SelectedShapeColor” of ShapeSetting is the API which is used to get or set the selected shape color.

All selected shapes available in the “SelectedMapShapes” of ShapeFileLayer.

## Single Selection

Single selection allows only one map shape to be selected at a time. The user can select the shape by tapping on the shape. Single selection is enabled by the “EnableSelection” property of ShapeFileLayer. If EnableSelection is set to true then the map can be selected. If it is set to false the shapes cannot be select. When any other shape or the map area is selected, then the shape which is already selected will be unselected.

## Multi Selection 

Multiple shapes in the map can be selected when “SelectionMode” of ShapeFileLayer is set to multiple. MultiSelection can be done when selecting shapes parallel by pressing Ctrl key and if Ctrl key released single selection can be performed.  



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





            ShapeFileLayer shapeLayer = new ShapeFileLayer();

            shapeLayer.ShapeSetting.FillSetting.AutoFillColors = false;

            shapeLayer.Uri = "world1.shp";

            shapeLayer.ShapeIDPath = "Country";

            shapeLayer.EnableSelection = true;

            shapeLayer.SelectionMode = SelectionModes.Multiple;

            shapeLayer.ShapeIDTableField = "NAME";

            shapeLayer.ShowMapItem = false;





            this.mapsControl1.Layers.Add(shapeLayer);

        }   

  }       



Screenshot:



{ ![](Map-Selection_images/Map-Selection_img1.png) | markdownify }
{:.image }




MultiSelection can be performed by selecting the map shape and holding the ctrl key over the map.





























Screenshot:

{ ![](Map-Selection_images/Map-Selection_img2.png) | markdownify }
{:.image }




