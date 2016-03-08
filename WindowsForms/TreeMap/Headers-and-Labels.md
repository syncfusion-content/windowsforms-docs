---
layout: post
title: Headers-and-Labels | Windows Forms | Syncfusion
description: headers and labels
platform: windowsforms
control: TreeMap 
documentation: ug
---

# Headers and Labels

Labels and headers in a tree map can be customized by the various properties available in the TreeMap control, such as LabelFont, LabelBrush, LabelBackgroundBrush, LabelBorderBrush, LabelBorderThickness, and HeaderBrush.

#### Code Sample

{% highlight c# %}

TreeMap TreeMap1 = new TreeMap();

PopulationViewModel data = new PopulationViewModel();

TreeMap1.ItemsSource = data.PopulationDetails;

TreeMap1.WeightValuePath = "Population";

TreeMap1.ColorValuePath = "Growth";

TreeMap1.ItemsLayoutMode = Syncfusion.Windows.Forms.TreeMap.ItemsLayoutModes.SliceAndDiceAuto;

TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();

treeMapFlatLevel1.GroupPath = "Continent";

treeMapFlatLevel1.ShowLabels = true;

TreeMap1.Levels.Add(treeMapFlatLevel1);



TreeMapFlatLevel treeMapFlatLevel2 = new TreeMapFlatLevel();

treeMapFlatLevel2.GroupPath = "Country";

treeMapFlatLevel2.ShowLabels = true;

treeMapFlatLevel2.HeaderHeight = 25;

TreeMap1.Levels.Add(treeMapFlatLevel2);



TreeMap1.HeaderBrush = new SolidBrush(Color.Blue);

TreeMap1.LabelBorderBrush = new SolidBrush(Color.White);

TreeMap1.LabelBorderThickness = 5;

TreeMap1.LabelBackgroundBrush = new SolidBrush(Color.LightSkyBlue);

TreeMap1.LabelBrush = new SolidBrush(Color.White);

TreeMap1.LabelFont = new System.Drawing.Font("Segoe UI Semibold", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));



DesaturationColorMapping desaturationColorMapping = new DesaturationColorMapping();

desaturationColorMapping.Color = Color.OrangeRed;

desaturationColorMapping.From = 220;

desaturationColorMapping.To = 0;

desaturationColorMapping.RangeMinimum = 0;

desaturationColorMapping.RangeMaximum = 80000;

this.TreeMap1.LeafColorMapping = desaturationColorMapping;


{% endhighlight %}

![](Features_images/Features_img12.png)