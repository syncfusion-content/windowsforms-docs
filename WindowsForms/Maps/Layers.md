---
layout: post
title: Layers
description: layers
platform: WindowsForms
control: Maps
documentation: ug
---

# Layers

Map is maintained through Layers, and it can accommodate one or more layers.

## MultiLayer

The Multilayer support allows you to load multiple shape files in a single container, enabling maps to display more information.

### Loading multiple shape files in a single container 

This feature allows the map to load multiple types of shape files in a single container.

### Adding Multiple Layers in the Map

The ShapeFileLayers is the core layer of the map. Multiple layers can be added in the ShapeFileLayer as SubShapeFileLayer, within the shape Layers.

## ItemSource

The ItemSource property accepts collection values as input. For example, the list of objects can be provided as input.

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



        public Form1()

        {

            InitializeComponent();

        }

        private void Form1_Load(object sender, EventArgs e)

        {



             MapViewModel viewmodel = new MapViewModel();



             ShapeFileLayer shapeLayer = new ShapeFileLayer();

             shapeLayer.Uri = "world1.shp";

             shapeLayer.ItemSource = viewmodel. Countries; 

             this.mapsControl1.Layers.Add(shapeLayer); 



         }

     }       



 [VIEWMODEL.CS]

public class MapViewModel

    {

        public ObservableCollection<Country> Countries { get; set; }

        public MapViewModel()

           {

            Countries = new ObservableCollection<Country>();

            Countries = GetCountriesAndPopulation();

            }

private ObservableCollection<Country> GetCountriesAndPopulation()

        {

            ObservableCollection<Country> countries = new ObservableCollection<Country>();

            countries.Add(new Country() { NAME = "India", Population = 1210193422 });

            countries.Add(new Country() { NAME = "Australia", Population = 22789701 });

            countries.Add(new Country() { NAME = "Mexico", Population = 112336538 });

            countries.Add(new Country() { NAME = "Russia", Population = 143228300 });

            countries.Add(new Country() { NAME = "Canada", Population = 34955100 });

            countries.Add(new Country() { NAME = "Brazil", Population = 193946886 });

            countries.Add(new Country() { NAME = "Algeria", Population = 37100000 });

            return countries;

        }

}



public class Country : INotifyPropertyChanged

    {

        public string NAME { get; set; }



        private double population { get; set; }

        public double Population

        {

            get

            {

                return population;

            }

            set

            {

                population = value;

                OnPropertyChanged(new PropertyChangedEventArgs("Population"));

            }



        }



        public event PropertyChangedEventHandler PropertyChanged;

        public void OnPropertyChanged(PropertyChangedEventArgs e)

        {



            if (PropertyChanged != null)

            {

                PropertyChanged(this, e);

            }

        }

    }



## ShapeIDPath

ShapeIDPath is the string type property that is used to refer to the ID of a shape from the ItemSource. The ItemSource property must have a property with name of the ShapeIDPath. The ShapeIDPath and the ShapeIDTableField properties are related to each other (refer to ShapeIDTableField for more details).

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

        public Form1()

        {

            InitializeComponent();

        }



        private void Form1_Load(object sender, EventArgs e)

        {

              MapViewModel viewmodel = new MapViewModel();



             ShapeFileLayer shapeLayer = new ShapeFileLayer();

             shapeLayer.Uri = "world1.shp";

             shapeLayer.ItemSource = viewmodel. Countries;

             shapeLayer.ShapeIDPath = "NAME";

             this.mapsControl1.Layers.Add(shapeLayer); 



         }

     }       



## ShapeIDTableField

The ShapeIDTableField property is similar to the ShapeIDPath. It is a string type property that refers to the column name in the dbf file to identify the shape. When the values of the ShapeIDPath property in the ItemSource and the value of ShapeIDTableField in the .dbf file match, then the associated object from the ItemSource are bound to the corresponding shape.





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

        public Form1()

        {

            InitializeComponent();

        }



        private void Form1_Load(object sender, EventArgs e)

        {

              MapViewModel viewmodel = new MapViewModel();



            ShapeFileLayer shapeLayer = new ShapeFileLayer();

            shapeLayer.Uri = "world1.shp";

            shapeLayer.ItemSource = viewmodel.Countries;

            shapeLayer.ShapeIDPath = "NAME";

            shapeLayer.ShapeIDTableField = "NAME";

            this.mapsControl1.Layers.Add(shapeLayer); 



        }



     }       





