---
layout: post
title: Tree Map Legend in Windows Forms TreeMap control | Syncfusion®
description: Learn about Tree Map Legend support in Syncfusion® Windows Forms TreeMap control, its elements and more details.
platform: windowsforms
control: TreeMap 
documentation: ug
---

# Tree Map Legend in Windows Forms TreeMap

The tree map legend is used to demonstrate the color value of the leaf nodes. This legend may be appropriate only for tree maps whose leaf nodes are colored by using the RangeBrushColorMapping. 

The icon shapes of the legend items can be set using the [`LegendType`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.TreeMap.LegendSettings.html#Syncfusion_Windows_Forms_TreeMap_LegendSettings_LegendType) property of the tree map control. The gap between each legend icon can be specified using the [`LegendGap`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.TreeMap.LegendSettings.html#Syncfusion_Windows_Forms_TreeMap_LegendSettings_LegendGap) property.

Legend can be positioned at the left, right, top, or bottom of the tree map control using the [`LegendPosition`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.TreeMap.LegendSettings.html#Syncfusion_Windows_Forms_TreeMap_LegendSettings_LegendPosition) property.

#### Code sample

{% tabs %}

{% highlight c# %} 

TreeMap TreeMap1 = new TreeMap();

PopulationViewModel data = new PopulationViewModel(); 

TreeMap1.ItemsSource = data.PopulationDetails;
   
TreeMap1.WeightValuePath = "Population";
     
TreeMap1.ColorValuePath = "Growth";  
    
TreeMap1.ItemsLayoutMode = Syncfusion.Windows.Forms.TreeMap.ItemsLayoutModes.SliceAndDiceAuto; 

TreeMap1.LegendPosition = LegendPositions.Top; 

TreeMap1.LegendType = LegendTypes.Ellipse; 
  
TreeMap1.LegendGap = 100;    

TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel(); 

treeMapFlatLevel1.GroupPath = "Continent"; 
     
treeMapFlatLevel1.ShowLabels = true;   
      
TreeMap1.Levels.Add(treeMapFlatLevel1);  

TreeMapFlatLevel treeMapFlatLevel2 = new TreeMapFlatLevel(); 

treeMapFlatLevel2.GroupPath = "Country";  
    
treeMapFlatLevel2.ShowLabels = true;
       
treeMapFlatLevel2.HeaderHeight = 25;   
   
TreeMap1.Levels.Add(treeMapFlatLevel2);  

RangeBrushColorMapping rangeBrushColorMapping = new RangeBrushColorMapping();
  
rangeBrushColorMapping.Brushes.Add(new RangeBrush() { 

Color = System.Drawing.ColorTranslator.FromHtml("#77D8D8"), From = 0, To = 1, LegendLabel = "1% Growth" });  
          rangeBrushColorMapping.Brushes.Add(new RangeBrush() 
		  { 
		  Color = System.Drawing.ColorTranslator.FromHtml("#AED960"), From = 0, To = 2, LegendLabel = "2% Growth" });  

		  rangeBrushColorMapping.Brushes.Add(new RangeBrush() 
		  { 
		  Color = System.Drawing.ColorTranslator.FromHtml("#FFAF51"), From = 0, To = 3, LegendLabel = "3% Growth" });            rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#F3D240"), From = 0, To = 20, LegendLabel = "20% Growth" });    

		  this.TreeMap1.LeafColorMapping = rangeBrushColorMapping;

{% endhighlight %}

{% endtabs %}

![Features_img11](Features_images/Features_img11.png)
