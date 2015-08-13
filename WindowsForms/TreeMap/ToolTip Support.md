---
layout: post
title: Features
description: features
platform: WindowsForms
control: TreeMap
documentation: ug
---


# ToolTip Support

You can enable ToolTip for TreeMap by setting ShowToolTip to “True”. 

#### Code Sample:





{% highlight c# %}



public partial class Form1 : Form

    {

       TreeMap TreeMap1 = new TreeMap();



        public Form1()

        {

            InitializeComponent();



            PopulationViewModel data = new PopulationViewModel();

            TreeMap1.ItemsSource = data.PopulationDetails;

            TreeMap1.WeightValuePath = "Population";

            TreeMap1.ColorValuePath = "Growth";

            ToolTipInfo itemInfoHead = new ToolTipInfo();

            itemInfoHead.ToolTipHeaderPattern = "<b>{Label}</b>";

            itemInfoHead.ToolTipContentPattern = "Growth \t  :  {Growth} % ";

            TreeMap1.HeaderToolTipInfo = itemInfoHead;    

            ToolTipInfo itemInfo = new ToolTipInfo();

            itemInfo.ToolTipHeaderPattern = "<b>{Country}</b>";

            itemInfo.ToolTipContentPattern = "Growth \t      :  {Growth} %  \nPopulation   :  {StrPopulation}  ";

            TreeMap1.ItemToolTipInfo = itemInfo;    





             RangeBrushColorMapping rangeBrushColorMapping = new RangeBrushColorMapping();

            rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#77D8D8"), From = 0, To = 1, LegendLabel = "1% Growth" });

            rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#AED960"), From = 0, To = 2, LegendLabel = "2% Growth" });

            rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#FFAF51"), From = 0, To = 3, LegendLabel = "3% Growth" });

            rangeBrushColorMapping.Brushes.Add(new RangeBrush() { Color = System.Drawing.ColorTranslator.FromHtml("#F3D240"), From = 0, To = 20, LegendLabel = "20% Growth" });

            TreeMap1.LeafColorMapping = rangeBrushColorMapping;



            TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();

            treeMapFlatLevel1.GroupPath = "Continent";

            TreeMap1.Levels.Add(treeMapFlatLevel1);

            TreeMap1.LeafItemSettings.LabelPath ="Country";

            this.Controls.Add(TreeMap1);

        }

  }

{% endhighlight %}

The following screen shot shows a tree map with a tool tip.



![](Features_images/Features_img15.png)



_Figure_ _12_: _ToolTip on TreeMap_