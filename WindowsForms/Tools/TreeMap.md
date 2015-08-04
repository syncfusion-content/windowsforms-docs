---
layout: post
title: TreeMap
description: treemap
platform: common
control: Control Name undefined
documentation: ug
---

## TreeMap

Tree maps are ideal for visualizing large amounts of data. The space in the visualization is split up into rectangles that are sized and colored based on the quantitative variables. The levels in the hierarchy of the tree map are visualized as rectangles containing other rectangles.

Use Cases

Tree maps are used to represent large or complex data sets in various applications, such as:

1. Stock market analysis in which the weight of each stock in the index is represented by the size of the rectangle and its range of loss or gain is represented by the color of the rectangle.
2. Visualizing internet usage in certain categories, such as retail, social networks, and search.
3. Categorizing the news aggregated by Google News in which the colors represent different sections, such as business or politics, and the size of the boxes represent how many similar stories also appear in Google News.
4. Indicating weather report analysis around the world. The opacity of each rectangle can differ based on its humidity.
#### Getting Started


Tree mapsare a growing trend in data visualization. They display hierarchical information in a series of clustered rectangles, which together represent a whole. The size of each box represents a quantity. Tree mapscan also use color to represent any number of values, but colors are often used to categorize the various boxes within the tree map.

Creating Tree Map for Windows Form Applications

The TreeMap control is available in the following assembly and namespace:

Assembly: Syncfusion.TreeMap.Windows

Namespace: Syncfusion.Windows.Forms.TreeMap

Refer to the following code to add a TreeMap control to an application:

Code Sample

[C#]

          TreeMap TreeMap1 = new TreeMap();



#### Features

##### WeightValuePath

The WeightValuePath ofthe TreeMap control is a path to a field on the source object that serves as the "weight" of the object. 

Code Sample

[C#]

            TreeMap TreeMap1 = new TreeMap();

            TreeMap1.ItemsSource = data.PopulationDetails;

            TreeMap1.WeightValuePath = "Population";



> ![C:/Users/ApoorvahR/Desktop/Note.png](TreeMap_images/TreeMap_img1.png)
{:.image }
_Note: The specified field must be available in every subclass (object) defined in the hierarchical (nested) data collection._

##### ColorValuePath

The ColorValuePath of the TreeMap control is a path to a field on the source object that serves as the "color" of the object. 

Code Sample

[C#]

              TreeMap TreeMap1 = new TreeMap();

            TreeMap1.ItemsSource = data.PopulationDetails;

            TreeMap1.ColorValuePath = "Growth";



> ![C:/Users/ApoorvahR/Desktop/Note.png](TreeMap_images/TreeMap_img2.png)
{:.image }
_Note: The specified field must be available in every subclass (object) defined in the hierarchical (nested) data collection._

##### Tree Map Levels

The levels of the TreeMap control can be categorized as two types, such as flat and hierarchical, which are used to define levels of a data collection. 

ItemsSource

The ItemsSource set for TreeMap control must be a flat collection of data. The following code sample shows how to set a data collection as ItemsSource for the TreeMap control.

Code Sample

[C#]

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



GroupPath

The GroupPath must bespecified for every level of the TreeMap control. It is a path to a field on the source object that serves as the “Group” for the level specified. The data is grouped in the TreeMap control based on the GroupPath. If it is not specified, then the items are not grouped and the data is shown in the order as it is specified in the ItemsSource.



Code Sample

[C#]

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



GroupGap

The GroupGap can be specified for separating the items of every level. It is used to differentiate the levels in the TreeMap control.

Code Sample

[C#]

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



##### TreeMap Layout

The ItemsLayoutMode for the TreeMap control specifies the mode in which the items should be laid out. This layout will be applied for all the tree map levels. It includes four different types.

###### Squarified Layout

Code Sample

[C#]

            TreeMap TreeMap1 = new TreeMap();

            PopulationViewModel data = new PopulationViewModel();

            TreeMap1.ItemsSource = data.PopulationDetails;

            TreeMap1.WeightValuePath = "Population";

            TreeMap1.ColorValuePath = "Growth";

            TreeMap1.ItemsLayoutMode =      Syncfusion.Windows.Forms.TreeMap.ItemsLayoutModes.Squarified;



            TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();

            treeMapFlatLevel1.GroupPath = "Continent";





            treeMapFlatLevel1.ShowLabels = true;

            TreeMap1.Levels.Add(treeMapFlatLevel1);



            TreeMapFlatLevel treeMapFlatLevel2 = new TreeMapFlatLevel();

            treeMapFlatLevel2.GroupPath = "Country";

            treeMapFlatLevel2.ShowLabels = true;

            treeMapFlatLevel2.HeaderHeight = 25;

            TreeMap1.Levels.Add(treeMapFlatLevel2);





![](TreeMap_images/TreeMap_img3.png)
{:.image }


###### SliceAndDiceAuto Layout

Code Sample

[C#]

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





![](TreeMap_images/TreeMap_img4.png)
{:.image }


###### SliceAndDiceHorizontal Layout

Code Sample

[C#]

            TreeMap TreeMap1 = new TreeMap();

            PopulationViewModel data = new PopulationViewModel();





            TreeMap1.ItemsSource = data.PopulationDetails;

            TreeMap1.WeightValuePath = "Population";

            TreeMap1.ColorValuePath = "Growth";

            TreeMap1.ItemsLayoutMode = Syncfusion.Windows.Forms.TreeMap.ItemsLayoutModes.SliceAndDiceHorizontal;            TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();

            treeMapFlatLevel1.GroupPath = "Continent";

            treeMapFlatLevel1.ShowLabels = true;

            TreeMap1.Levels.Add(treeMapFlatLevel1);



            TreeMapFlatLevel treeMapFlatLevel2 = new TreeMapFlatLevel();

            treeMapFlatLevel2.GroupPath = "Country";

            treeMapFlatLevel2.ShowLabels = true;

            treeMapFlatLevel2.HeaderHeight = 25;

            TreeMap1.Levels.Add(treeMapFlatLevel2);





![C:/Users/ApoorvahR/Desktop/1.png](TreeMap_images/TreeMap_img5.png)
{:.image }


###### SliceAndDiceVertical Layout

Code Sample

[C#]

            TreeMap TreeMap1 = new TreeMap();

            PopulationViewModel data = new PopulationViewModel();

            TreeMap1.ItemsSource = data.PopulationDetails;

            TreeMap1.WeightValuePath = "Population";

            TreeMap1.ColorValuePath = "Growth";

            TreeMap1.ItemsLayoutMode = Syncfusion.Windows.Forms.TreeMap.ItemsLayoutModes.SliceAndDiceVertical;

            TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();

            treeMapFlatLevel1.GroupPath = "Continent";

            treeMapFlatLevel1.ShowLabels = true;

            TreeMap1.Levels.Add(treeMapFlatLevel1);



            TreeMapFlatLevel treeMapFlatLevel2 = new TreeMapFlatLevel();

            treeMapFlatLevel2.GroupPath = "Country";

            treeMapFlatLevel2.ShowLabels = true;

            treeMapFlatLevel2.HeaderHeight = 25;

            TreeMap1.Levels.Add(treeMapFlatLevel2);





![](TreeMap_images/TreeMap_img6.png)
{:.image }


##### Color Mapping

Color mapping is categorized into four different types:

* UniColorMapping
* RangeBrushColorMapping
* DesaturationColorMapping
* PaletteColorMapping
###### UniColorMapping


Tree map leaf nodes can be colored with the help of the Color property specified using UniColorMapping.



Code Sample

<table>
<tr>
<td>
[C#]            TreeMap TreeMap1 = new TreeMap();            PopulationViewModel data = new PopulationViewModel();            TreeMap1.ItemsSource = data.PopulationDetails;            TreeMap1.WeightValuePath = "Population";            TreeMap1.ColorValuePath = "Growth";            TreeMap1.ItemsLayoutMode = Syncfusion.Windows.Forms.TreeMap.ItemsLayoutModes.SliceAndDiceAuto;            TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();            treeMapFlatLevel1.GroupPath = "Continent";            treeMapFlatLevel1.ShowLabels = true;            TreeMap1.Levels.Add(treeMapFlatLevel1);            TreeMapFlatLevel treeMapFlatLevel2 = new TreeMapFlatLevel();            treeMapFlatLevel2.GroupPath = "Country";            treeMapFlatLevel2.ShowLabels = true;            treeMapFlatLevel2.HeaderHeight = 25;            TreeMap1.Levels.Add(treeMapFlatLevel2);            UniColorMapping uniColorMapping = new UniColorMapping();            uniColorMapping.Color = Color.MediumSlateBlue;            this.TreeMap1.LeafColorMapping = uniColorMapping;</td></tr>
<tr>
<td colspan = "2">
{ ![](TreeMap_images/TreeMap_img7.png) | markdownify }
{:.image }
</td></tr>
</table>
###### RangeBrushColorMapping

The leaf nodes of the TreeMap control can be colored based upon the range (i.e. From and To) and Brush specified using the RangeBrush collection of RangeBrushColorMapping.

Code Sample

[C#]

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





![](TreeMap_images/TreeMap_img8.png)
{:.image }


###### DesaturationColorMapping

The leaf nodes of the TreeMap control can be colored based on the Color specified by using DesaturationColorMapping. The RangeMinimum and RangeMaximum must be specified to determine the opacity for every leaf node. The opacity of leaf nodes is in the range between From and To in DesaturationColorMapping.

Code Sample

<table>
<tr>
<td>
[C#]            TreeMap TreeMap1 = new TreeMap();            PopulationViewModel data = new PopulationViewModel();            TreeMap1.ItemsSource = data.PopulationDetails;            TreeMap1.WeightValuePath = "Population";            TreeMap1.ColorValuePath = "Growth";            TreeMap1.ItemsLayoutMode = Syncfusion.Windows.Forms.TreeMap.ItemsLayoutModes.SliceAndDiceAuto;            TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();            treeMapFlatLevel1.GroupPath = "Continent";            treeMapFlatLevel1.ShowLabels = true;            TreeMap1.Levels.Add(treeMapFlatLevel1);            TreeMapFlatLevel treeMapFlatLevel2 = new TreeMapFlatLevel();            treeMapFlatLevel2.GroupPath = "Country";            treeMapFlatLevel2.ShowLabels = true;            treeMapFlatLevel2.HeaderHeight = 25;            TreeMap1.Levels.Add(treeMapFlatLevel2);            DesaturationColorMapping desaturationColorMapping = new DesaturationColorMapping();            desaturationColorMapping.Color = Color.OrangeRed;            desaturationColorMapping.From = 220;            desaturationColorMapping.To = 0;            desaturationColorMapping.RangeMinimum = 0;            desaturationColorMapping.RangeMaximum = 80000;                        this.TreeMap1.LeafColorMapping = desaturationColorMapping;</td></tr>
<tr>
<td colspan = "2">
{ ![](TreeMap_images/TreeMap_img9.png) | markdownify }
{:.image }
</td></tr>
</table>
###### PaletteColorMapping

The leaf nodes can be colored by using the brushes listed in the Colors collection of PaletteColorMapping.

Code Sample

<table>
<tr>
<td>
[C#]            TreeMap TreeMap1 = new TreeMap();            PopulationViewModel data = new PopulationViewModel();            TreeMap1.ItemsSource = data.PopulationDetails;            TreeMap1.WeightValuePath = "Population";            TreeMap1.ColorValuePath = "Growth";            TreeMap1.ItemsLayoutMode = Syncfusion.Windows.Forms.TreeMap.ItemsLayoutModes.SliceAndDiceAuto;            TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();            treeMapFlatLevel1.GroupPath = "Continent";            treeMapFlatLevel1.ShowLabels = true;            TreeMap1.Levels.Add(treeMapFlatLevel1);            TreeMapFlatLevel treeMapFlatLevel2 = new TreeMapFlatLevel();            treeMapFlatLevel2.GroupPath = "Country";            treeMapFlatLevel2.ShowLabels = true;            treeMapFlatLevel2.HeaderHeight = 25;            TreeMap1.Levels.Add(treeMapFlatLevel2);            PaletteColorMapping paletteColorMapping = new PaletteColorMapping();          paletteColorMapping.Colors = new List<Brush>()             {                new SolidBrush(Color.MediumSeaGreen),                new SolidBrush(Color.PaleVioletRed),                new SolidBrush(Color.MediumSlateBlue),            };           this.TreeMap1.LeafColorMapping = paletteColorMapping;  </td></tr>
<tr>
<td colspan = "2">
{ ![](TreeMap_images/TreeMap_img10.png) | markdownify }
{:.image }
</td></tr>
</table>
##### Tree Map Legend

The tree map legend is used to demonstrate the color value of leaf nodes. This legend may be appropriate only for tree maps whose leaf nodes are colored by using RangeBrushColorMapping. 

The icon shapes of the legend items can be set by the LegendType property of the TreeMap control. The gap between each legend icon can be specified by the LegendGap property.

The legend can be positioned in left, right, top, or bottom of the TreeMap control with the help of the LegendPosition property.

Code Sample

<table>
<tr>
<td>
[C#]            TreeMap TreeMap1 = new TreeMap();            PopulationViewModel data = new PopulationViewModel();            TreeMap1.ItemsSource = data.PopulationDetails;            TreeMap1.WeightValuePath = "Population";            TreeMap1.ColorValuePath = "Growth";            TreeMap1.ItemsLayoutMode = Syncfusion.Windows.Forms.TreeMap.ItemsLayoutModes.SliceAndDiceAuto;            TreeMap1.LegendPosition = LegendPositions.Top;            TreeMap1.LegendType = LegendTypes.Ellipse;            TreeMap1.LegendGap = 100;            TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();            treeMapFlatLevel1.GroupPath = "Continent";            treeMapFlatLevel1.ShowLabels = true;            TreeMap1.Levels.Add(treeMapFlatLevel1);            TreeMapFlatLevel treeMapFlatLevel2 = new TreeMapFlatLevel();            treeMapFlatLevel2.GroupPath = "Country";            treeMapFlatLevel2.ShowLabels = true;            treeMapFlatLevel2.HeaderHeight = 25;            TreeMap1.Levels.Add(treeMapFlatLevel2);           RangeBrushColorMapping rangeBrushColorMapping = new RangeBrushColorMapping();              rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#77D8D8"), From = 0, To = 1, LegendLabel = "1% Growth" });            rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#AED960"), From = 0, To = 2, LegendLabel = "2% Growth" });            rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#FFAF51"), From = 0, To = 3, LegendLabel = "3% Growth" });            rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#F3D240"), From = 0, To = 20, LegendLabel = "20% Growth" });            this.TreeMap1.LeafColorMapping = rangeBrushColorMapping;</td></tr>
<tr>
<td colspan = "2">
{ ![](TreeMap_images/TreeMap_img11.png) | markdownify }
{:.image }
</td></tr>
</table>
##### Headers and Labels

Labels and headers in a tree map can be customized by the various properties available in the TreeMap control, such as LabelFont, LabelBrush, LabelBackgroundBrush, LabelBorderBrush, LabelBorderThickness, and HeaderBrush.

Code Sample

[C#]

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







![](TreeMap_images/TreeMap_img12.png)
{:.image }


##### Tooltip Support

Visibility of tooltips can be specified by the IsToolTipVisible property of the TreeMap control. The format of the tooltip header and item can be customized through the HeaderToolTipInfo and ItemToolTipInfo properties.

Code Sample

[C#]

  ToolTipInfo itemInfoHead = new ToolTipInfo();

            itemInfoHead.ToolTipHeaderPattern = "&lt;b&gt;{Label}&lt;/b&gt;";

            itemInfoHead.ToolTipContentPattern = "Growth \t  :  {Growth} % ";

            TreeMap1.HeaderToolTipInfo = itemInfoHead;

            ToolTipInfo itemInfo = new ToolTipInfo();

            itemInfo.ToolTipHeaderPattern = "&lt;b&gt;{Country}&lt;/b&gt;";

            itemInfo.ToolTipContentPattern = "Growth \t      :  {Growth} %  \nPopulation   :  {StrPopulation}  ";

            TreeMap1.ItemToolTipInfo = itemInfo; 





![](TreeMap_images/TreeMap_img13.png)
{:.image }


##### Customizing Leaf Nodes

Leaf nodes can be customized by raising the LeafItemDrawing event of the TreeMap control. 

Code Sample

[C#]

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





void treeMap_LeafItemDrawing(object sender, LeafItemDrawingEventArgs e)

        {

            e.Cancel = true;

            if (e.Graphics != null && e.Cancel)

            {

                e.Graphics.FillRectangle((e.Color), e.RectSize);

                e.Graphics.DrawRectangle(new Pen(new SolidBrush(Color.White), 5), e.RectSize);

                e.Graphics.DrawString(e.Label, new Font("Segoe UI", (float)12), new SolidBrush(Color.White), e.RectSize.X, e.RectSize.Y);



                Image image = (e.Data as OlympicMedals).GameImage;



                if (image != null)

                {

                    e.Graphics.DrawImage(image, new Point(e.RectSize.X + (e.RectSize.Width / 2) - image.Width / 2, e.RectSize.Y + (e.RectSize.Height / 2) - image.Height / 2));

                }

            }

        }



#region View Model



    public class OlymicMedalsViewModel

    {

        public ObservableCollection<OlympicMedals> OlympicMedalsDetails { get; set; }



        public OlymicMedalsViewModel()

        {

            var directoryPath = Application.StartupPath.Replace("bin\\Debug", "Images"); ;

            this.OlympicMedalsDetails = new ObservableCollection<OlympicMedals>();

            this.OlympicMedalsDetails.Add(new OlympicMedals { Country = "US", GameName = "Swimming", GoldMedals = 16, SilverMedals = 9, BronzeMedals = 6, TotalMedals = 31, GameImage = this.GetImage("Swimming") });



            this.OlympicMedalsDetails.Add(new OlympicMedals { Country = "US", GameName = "Track and Field", GoldMedals = 9, SilverMedals = 13, BronzeMedals = 7, TotalMedals = 29, GameImage = this.GetImage("TrackAndField") });

            this.OlympicMedalsDetails.Add(new OlympicMedals { Country = "US", GameName = "Gymnastics", GoldMedals = 3, SilverMedals = 1, BronzeMedals = 2, TotalMedals = 6, GameImage = this.GetImage("Gymnastics") });

            this.OlympicMedalsDetails.Add(new OlympicMedals { Country = "US", GameName = "Boxing", GoldMedals = 1, SilverMedals = 0, BronzeMedals = 1, TotalMedals = 2, GameImage = this.GetImage("Boxing") });

            this.OlympicMedalsDetails.Add(new OlympicMedals { Country = "US", GameName = "Cycling", GoldMedals = 1, SilverMedals = 2, BronzeMedals = 1, TotalMedals = 4, GameImage = this.GetImage("Cycling") });

            this.OlympicMedalsDetails.Add(new OlympicMedals { Country = "US", GameName = "Shooting", GoldMedals = 3, SilverMedals = 0, BronzeMedals = 1, TotalMedals = 4, GameImage = this.GetImage("Shooting") });

            this.OlympicMedalsDetails.Add(new OlympicMedals { Country = "US", GameName = "Wrestling", GoldMedals = 2, SilverMedals = 0, BronzeMedals = 2, TotalMedals = 4, GameImage = this.GetImage("Wrestling") });

            this.OlympicMedalsDetails.Add(new OlympicMedals { Country = "US", GameName = "Archery", GoldMedals = 0, SilverMedals = 1, BronzeMedals = 0, TotalMedals = 1, GameImage = this.GetImage("Archery") });

            this.OlympicMedalsDetails.Add(new OlympicMedals { Country = "US", GameName = "Soccer", GoldMedals = 1, SilverMedals = 0, BronzeMedals = 0, TotalMedals = 1, GameImage = this.GetImage("Soccer") });

            this.OlympicMedalsDetails.Add(new OlympicMedals { Country = "US", GameName = "Diving", GoldMedals = 1, SilverMedals = 1, BronzeMedals = 2, TotalMedals = 4, GameImage = this.GetImage("Diving") });

        }



        public Image GetImage(string image)

        {

            Image img = null;



               try{

                   img = Image.FromFile(@"..\..\..\..\..\images\" + image + ".png");

               }

            catch{}



               return img;

        }

    }



    public class OlympicMedals

    {

        public string Country { get; set; }

        public string GameName { get; set; }

        public double GoldMedals { get; set; }

        public double SilverMedals { get; set; }

        public double BronzeMedals { get; set; }

        public double TotalMedals { get; set; }

        public Image GameImage { get; set; }

    }



    #endregion





![](TreeMap_images/TreeMap_img14.png)
{:.image }


