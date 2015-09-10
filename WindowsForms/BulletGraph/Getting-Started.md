---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: Bullet Graph
documentation: ug
---

# Getting Started

The Bullet Graph is composed of quantitative scale, qualitative ranges, featured measure and Comparative Measure. The main purpose of the Bullet Graph is described by making use of the Caption. The quantitative scale of the Bullet Graph includes ticks and labels. The view of the Bullet Graph is changed by setting the Orientation property.

## Create the Bullet Graph Programmatically

* Assembly Information

Bullet Graph is available in the following assembly.

Assembly: Syncfusion.BulletGraph.Windows

* NameSpace

Bullet Graph is available in the following namespace.

Namespace: Syncfusion.Windows.Forms.BulletGraph

### Steps to create a simple Bullet Graph control:

1. Create a new Windows Forms application project in Visual Studio.

   ![](Getting-Started_images/Getting-Started_img1.png)
   
2. Add references to Syncfusion.BulletGraph.Windows.
3. Add the Bullet Graph control in code behind as follows.

   ~~~ cs

		BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;

            bulletgraph.FlowDirection = BulletGraphFlowDirection.Forward;

            bulletgraph.Orientation = Orientation.Horizontal;

            bulletgraph.FeaturedMeasure = 4.5;

            bulletgraph.ComparativeMeasure = 7;

            bulletgraph.LabelFontSize = 10;

            bulletgraph.LabelStroke = Color.Black;

            bulletgraph.MajorTickStroke = Color.Black;

            bulletgraph.Minimum = 0;

            bulletgraph.Maximum = 10;

            bulletgraph.Interval = 2;

            bulletgraph.MinorTicksPerInterval = 3;

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green });            

            this.Controls.Add(bulletgraph);

   ~~~
   {:.prettyprint }

4. Run the application to view the Bullet Graph.

   ![D:/Help UGs/BulletGraph/WF/BG_Elements.png](Getting-Started_images/Getting-Started_img2.png)

## Create the Bullet Graph using Syncfusion Reference Manager

 Syncfusion Reference Manager is used to add Syncfusion Tools.

 To add a Bullet Graph Control, refer the following steps:

1. Create a simple Windows Forms application using Visual Studio.

   ![](Getting-Started_images/Getting-Started_img3.png)

2. Right-Click on the Project and select SyncfusionReferenceManager.

   ![](Getting-Started_images/Getting-Started_img4.png)

3. The Syncfusion Reference Manager Wizard is opened as shown in the following screenshot.

   ![D:/Help UGs/BulletGraph/WF/Ref_Manager.bmp](Getting-Started_images/Getting-Started_img5.png)

4. Search for Bullet Graph using SearchBox and select Bullet Graph Control.  Click on Done to add selected Bullet Graph Control.

   ![](Getting-Started_images/Getting-Started_img6.png)

5. The Bullet Graph assemblies are automatically added to the Project after Clicking OK

   ![](Getting-Started_images/Getting-Started_img7.png)

6. Add the following code example in code behind to create a simple Bullet Graph control.

   ~~~ cs

        BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;

            bulletgraph.FlowDirection = BulletGraphFlowDirection.Forward;

            bulletgraph.Orientation = Orientation.Horizontal;

            bulletgraph.FeaturedMeasure = 4.5;

            bulletgraph.ComparativeMeasure = 7;

            bulletgraph.LabelFontSize = 10;

            bulletgraph.LabelStroke = Color.Black;

            bulletgraph.MajorTickStroke = Color.Black;

            bulletgraph.Minimum = 0;

            bulletgraph.Maximum = 10;

            bulletgraph.Interval = 2;

            bulletgraph.MinorTicksPerInterval = 3;

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green }); 

            this.Controls.Add(bulletgraph);   

   ~~~
   {:.prettyprint }  

7. The simple Bullet Graph control is created as shown in the following screenshot.

   ![](Getting-Started_images/Getting-Started_img8.png)

   N> 1.   The Syncfusion Reference Manager is available in versions 11.3.0.30 and later. It supports referencing assemblies from version 10.4.0.71 version to the current version.
   N>
   N> 2.   The Syncfusion Reference Manager is used only in Visual Studio 2010, 2012, and 2013.