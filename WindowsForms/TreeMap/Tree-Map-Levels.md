---
layout: post
title: Tree Map Levels in Windows Forms TreeMap control | Syncfusion<sup>®</sup>
description: Learn about Tree Map Levels support in Syncfusion<sup>®</sup> Windows Forms TreeMap control, its elements and more details.
platform: windowsforms
control: TreeMap 
documentation: ug
---

# Tree Map Levels in Windows Forms TreeMap

The levels of the tree map control can be categorized into two types: flat and hierarchical, which are used to define the levels of a data collection. 

## Items source

The [`ItemsSource`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.TreeMap.TreeMap.html#Syncfusion_Windows_Forms_TreeMap_TreeMap_ItemsSource) set to tree map control must be a flat collection of data. The following code sample shows how to set a data collection as ItemsSource for the tree map control.

{% tabs %}

{% highlight c# %}

TreeMap TreeMap1 = new TreeMap();

PopulationViewModel data = new PopulationViewModel();                     

TreeMap1.ItemsSource = data.PopulationDetails;

TreeMap1.WeightValuePath = "Population";

TreeMap1.ColorValuePath = "Growth";


public class PopulationViewModel
{

public PopulationViewModel()
{

this.PopulationDetails = new ObservableCollection<PopulationDetail>();

PopulationDetails.Add(new PopulationDetail() { Continent = "Asia", Country = "Indonesia", Growth = 3, Population = 237641326, StrPopulation = "237.6 M" });

PopulationDetails.Add(new PopulationDetail() { Continent = "Asia", Country = "Russia", Growth = 2, Population = 152518015, StrPopulation = "152.5 M" });

PopulationDetails.Add(new PopulationDetail() { Continent = "Asia", Country = "Malaysia", Growth = 1, Population = 29672000, StrPopulation  = "29.7 M"});

PopulationDetails.Add(new PopulationDetail() { Continent = "North America", Country = "United States", Growth = 4, Population = 315645000, StrPopulation = "315.6 M" });

PopulationDetails.Add(new PopulationDetail() { Continent = "North America", Country = "Mexico", Growth = 2, Population = 112336538, StrPopulation = "112.3 M"});

PopulationDetails.Add(new PopulationDetail() { Continent = "North America", Country = "Canada", Growth = 1, Population = 35056064, StrPopulation = "35.1 M"});

PopulationDetails.Add(new PopulationDetail() { Continent = "South America", Country = "Colombia", Growth = 1, Population = 47000000, StrPopulation = "47 M" });

PopulationDetails.Add(new PopulationDetail() { Continent = "South America", Country = "Brazil", Growth = 3, Population = 193946886, StrPopulation = "193.9 M" });

PopulationDetails.Add(new PopulationDetail() { Continent = "Africa", Country = "Nigeria", Growth = 2, Population = 170901000, StrPopulation = "170.9 M"});

PopulationDetails.Add(new PopulationDetail() { Continent = "Africa", Country = "Egypt", Growth = 1, Population = 83661000, StrPopulation = "83 M"});

PopulationDetails.Add(new PopulationDetail() { Continent = "Europe", Country = "Germany", Growth = 1, Population = 81993000, StrPopulation ="82 M"});

PopulationDetails.Add(new PopulationDetail() { Continent = "Europe", Country = "France", Growth = 1, Population = 65605000, StrPopulation  = "65.6 M"});

PopulationDetails.Add(new PopulationDetail() { Continent = "Europe", Country = "UK", Growth = 1, Population = 63181775, StrPopulation = "63.2 M"});

}

public ObservableCollection<PopulationDetail> PopulationDetails

{

get;

set;

}

public class PopulationDetail

{

public string Continent { get; set; }

public string Country { get; set; }

public double Growth { get; set; }

public double Population { get; set; }

public string StrPopulation { get; set; }

}

}  

{% endhighlight %}

{% endtabs %}

## Group path

The [`GroupPath`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.TreeMap.TreeMapFlatLevel.html#Syncfusion_Windows_Forms_TreeMap_TreeMapFlatLevel_GroupPath) must be specified for every level of the tree map control. It is a path to a field on the source object that serves as the “Group” for the level specified. The data is grouped in the tree map control based on the GroupPath. If it is not specified, then the items are not grouped and the data will be shown in the order as it is specified in the ItemsSource.

### Code sample

{% tabs %}

{% highlight c# %}

TreeMap TreeMap1 = new TreeMap();

PopulationViewModel data = new PopulationViewModel();

TreeMap1.ItemsSource = data.PopulationDetails;

TreeMap1.WeightValuePath = "Population";

TreeMap1.ColorValuePath = "Growth";

TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();

treeMapFlatLevel1.GroupPath = "Continent";

treeMapFlatLevel1.ShowLabels = true;

TreeMap1.Levels.Add(treeMapFlatLevel1);

TreeMapFlatLevel treeMapFlatLevel2 = new TreeMapFlatLevel();

treeMapFlatLevel2.GroupPath = "Country";

treeMapFlatLevel2.ShowLabels = true;

treeMapFlatLevel2.HeaderHeight = 25;

TreeMap1.Levels.Add(treeMapFlatLevel2);

{% endhighlight %}

{% endtabs %}

## Group gap

The [`GroupGap`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.TreeMap.TreeMapFlatLevel.html#Syncfusion_Windows_Forms_TreeMap_TreeMapFlatLevel_GroupGap) can be specified for separating the items of every level. It is used to differentiate the levels in the tree map control.

### Code sample

{% tabs %}

{% highlight c# %}

TreeMap TreeMap1 = new TreeMap();

PopulationViewModel data = new PopulationViewModel();

TreeMap1.ItemsSource = data.PopulationDetails;

TreeMap1.WeightValuePath = "Population";

TreeMap1.ColorValuePath = "Growth";

TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();

treeMapFlatLevel1.GroupPath = "Continent";

treeMapFlatLevel1.ShowLabels = true;

TreeMap1.Levels.Add(treeMapFlatLevel1);


TreeMapFlatLevel treeMapFlatLevel2 = new TreeMapFlatLevel();

treeMapFlatLevel2.GroupPath = "Country";

treeMapFlatLevel2.ShowLabels = true;

treeMapFlatLevel2.HeaderHeight = 25;

TreeMap1.Levels.Add(treeMapFlatLevel2);

{% endhighlight %}

{% endtabs %}
