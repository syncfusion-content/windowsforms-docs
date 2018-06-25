---
layout: post
title: Color-Mapping | Windows Forms | Syncfusion
description: color mapping
platform: windowsforms
control: TreeMap 
documentation: ug
---

# Color Mapping

Color mapping is categorized into the following four different types:

* UniColorMapping
* RangeBrushColorMapping
* DesaturationColorMapping
* PaletteColorMapping

## Uni color mapping


The leaf nodes of the tree map can be colored using the [`Color`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.UniColorMapping~Color.html) property in the UniColorMapping.



#### Code sample

{% tabs %}

{% highlight C# %}

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

UniColorMapping uniColorMapping = new UniColorMapping(); 

uniColorMapping.Color = Color.MediumSlateBlue; 

this.TreeMap1.LeafColorMapping = uniColorMapping;
			
{% endhighlight %}

{% endtabs %}
			
![](Features_images/Features_img7.png)

## Range color mapping

The leaf nodes of the tree map control can be colored based on the [`From`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.RangeBrush~From.html) and [`To`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.RangeBrush~To.html) ranges. Color can be specified using the [`Color`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.RangeBrush~Color.html) property in the range brush collection of RangeBrushColorMapping.

#### Code sample

{% tabs %}

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

RangeBrushColorMapping rangeBrushColorMapping = new RangeBrushColorMapping();              

rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#77D8D8"), From = 0, To = 1, LegendLabel = "1% Growth" });

rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#AED960"), From = 0, To = 2, LegendLabel = "2% Growth" });

rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#FFAF51"), From = 0, To = 3, LegendLabel = "3% Growth" });

rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#F3D240"), From = 0, To = 20, LegendLabel = "20% Growth" });

this.TreeMap1.LeafColorMapping = rangeBrushColorMapping;

{% endhighlight %}

{% endtabs %}

![](Features_images/Features_img8.png)


## Desaturation color mapping

The leaf nodes of the tree map control can be colored based on the [`Color`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.RangeBrush~Color.html) property specified in the DesaturationColorMapping. The [`RangeMinimum`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.DesaturationColorMapping~RangeMinimum.html) and [`RangeMaximum`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.DesaturationColorMapping~RangeMaximum.html) must be specified to determine opacity for every leaf node. The opacity of leaf nodes lies in the range between [`From`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.DesaturationColorMapping~From.html) and [`To`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.DesaturationColorMapping~To.html) properties in DesaturationColorMapping.

#### Code sample

{% tabs %}

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

DesaturationColorMapping desaturationColorMapping = new DesaturationColorMapping(); 

desaturationColorMapping.Color = Color.OrangeRed;  

desaturationColorMapping.From = 220;   

desaturationColorMapping.To = 0;   

desaturationColorMapping.RangeMinimum = 0;

desaturationColorMapping.RangeMaximum = 80000; 

this.TreeMap1.LeafColorMapping = desaturationColorMapping;
		   
{% endhighlight %}

{% endtabs %}

![](Features_images/Features_img9.png)


## Palette color mapping

The leaf nodes can be colored using the brushes listed in the [`Colors`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.PaletteColorMapping~Colors.html) collection of PaletteColorMapping.

#### Code sample

{% tabs %}

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

PaletteColorMapping paletteColorMapping = new PaletteColorMapping();   

paletteColorMapping.Colors = new List<Brush>() 
{  
new SolidBrush(Color.MediumSeaGreen), new SolidBrush(Color.PaleVioletRed), new SolidBrush(Color.MediumSlateBlue) 
};

this.TreeMap1.LeafColorMapping = paletteColorMapping; 
 	  
{% endhighlight %}

{% endtabs %}
	  
![](Features_images/Features_img10.png)