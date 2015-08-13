---
layout: post
title: Features
description: features
platform: WindowsForms
control: TreeMap
documentation: ug
---

# Headers and Labels

### Headers

To show headers in TreeMap, you can set the HeaderHeight property of TreeMapLevel. 

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

            TreeMap1.HeaderBrush = new SolidBrush(Color.Red);

            TreeMap1.HeaderBorderThickness = 5;



            TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();

            treeMapFlatLevel1.GroupPath = "Continent";

            TreeMap1.Levels.Add(treeMapFlatLevel1);

            TreeMap1.LeafItemSettings.LabelPath ="Country";

            this.Controls.Add(TreeMap1);

        } 

}

{% endhighlight %}



![](Features_images/Features_img13.png)



_Figure_ _10_: _TreeMap with Headers_



### Labels

To show labels in TreeMap, ShowLabels of TreeMapLevel should be enabled to True. 

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



            TreeMapFlatLevel treeMapFlatLevel1 = new TreeMapFlatLevel();

            treeMapFlatLevel1.GroupPath = "Continent";

            treeMapFlatLevel1.ShowLabels = true;

            TreeMap1.Levels.Add(treeMapFlatLevel1);

            TreeMap1.LeafItemSettings.LabelPath ="Country";

            this.Controls.Add(TreeMap1);





        } 

}


{% endhighlight %}


![](Features_images/Features_img14.png)



_Figure_ _11_: _TreeMap with Labels_

