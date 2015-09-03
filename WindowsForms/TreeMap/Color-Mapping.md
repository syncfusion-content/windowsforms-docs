---
layout: post
title: Color-Mapping
description: color mapping
platform: windowsforms
control: TreeMap 
documentation: ug
---

# Color Mapping

Color mapping is categorized into four different types:

* UniColorMapping
* RangeBrushColorMapping
* DesaturationColorMapping
* PaletteColorMapping

## UniColorMapping


Tree map leaf nodes can be colored with the help of the Color property specified using UniColorMapping.



Code Sample

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
UniColorMapping uniColorMapping = new UniColorMapping(); 
uniColorMapping.Color = Color.MediumSlateBlue; 
this.TreeMap1.LeafColorMapping = uniColorMapping;
			
{% endhighlight %}
			
![](Features_images/Features_img7.png)

## RangeBrushColorMapping

The leaf nodes of the TreeMap control can be colored based upon the range (i.e. From and To) and Brush specified using the RangeBrush collection of RangeBrushColorMapping.

Code Sample

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


![](Features_images/Features_img8.png)


## DesaturationColorMapping

The leaf nodes of the TreeMap control can be colored based on the Color specified by using DesaturationColorMapping. The RangeMinimum and RangeMaximum must be specified to determine the opacity for every leaf node. The opacity of leaf nodes is in the range between From and To in DesaturationColorMapping.

Code Sample

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

![](Features_images/Features_img9.png)


## PaletteColorMapping

The leaf nodes can be colored by using the brushes listed in the Colors collection of PaletteColorMapping.

Code Sample

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
paletteColorMapping.Colors = new List<Brush>() {  new SolidBrush(Color.MediumSeaGreen), new SolidBrush(Color.PaleVioletRed), new SolidBrush(Color.MediumSlateBlue), };
this.TreeMap1.LeafColorMapping = paletteColorMapping;  
	  
{% endhighlight %}
	  
![](Features_images/Features_img10.png)