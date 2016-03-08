---
layout: post
title: Creating-Grid-List-Control | WindowsForms | Syncfusion
description: creating grid list control
platform: WindowsForms
control: GridList
documentation: ug
---

# Creating Grid List Control

This section will provide step-by-step procedure to create a Grid List control through designer and through programmatical approach in a .NET application.

## Through Designer

With the designer, all you have to do is drag the control onto the form, size it and then set the desired properties, assuming you have a data source ready. If you do not have data source ready, then create one by using the steps listed below.

To Create a Data Source

1. Drag an SqlDataAdapter from Data tab of the Toolbox onto the form. Follow the steps in the wizard to select database and SQL query used to generate the table.

   ![](Creating-Grid-List-Control_images/Creating-Grid-List-Control_img1.jpeg)



2. Click SqlAdapter in the components tray with the right Mouse button and generate a dataset for this adapter by just taking the defaults. 

   ![](Creating-Grid-List-Control_images/Creating-Grid-List-Control_img2.jpeg) 





3. In the Form_Load event handler, Fill method will be called automatically for this SqlDataAdapter by passing dataset that is generated in the previous step.

   ![](Creating-Grid-List-Control_images/Creating-Grid-List-Control_img3.jpeg) 



4. Drag GridListControl object from your tool box and drop it onto the form.

   ![](Creating-Grid-List-Control_images/Creating-Grid-List-Control_img4.jpeg) 



5. Size and position it.
6. Go to Properties dialog of this Grid List control and set DataSource property of this control to an appropriate object.

   ![](Creating-Grid-List-Control_images/Creating-Grid-List-Control_img5.jpeg) 



7. Run the application. Following is the output.

   ![](Creating-Grid-List-Control_images/Creating-Grid-List-Control_img6.jpeg) 

   {:.prettyprint}

This designer-created data source is now available for use as the data source member of Grid List control. For a complete step-by-step tutorial on how to use the designer to create data source, see the Grid Data Bound Grid tutorial.

## Through Code

The Grid List control sample that ships with Essential Grid does not use the designer. It creates an ArrayList of objects that serves as a data source for the Grid List control. Each state object has a LongName, ShortName and ImageIndex properties that can be displayed in the list control. Here are some code samples that illustrate assignments of the major properties. 

For the complete implementation details, refer to the sample in the below installation path.

_<Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Grid List Control_



{% highlight c# %}

//Sets to arraylist of states.

gridListBox1.DataSource = USStates;



//ImageList-the images displayed in the list.      

gridListBox1.ImageList = imageList;



//Displays multiple columns.

gridListBox1.MultiColumn = true;

gridListBox1.ShowColumnHeader = true;

gridListBox1.SelectionMode = SelectionMode.One;



//Makes the last column wide enough to fill client area.

gridListBox1.FillLastColumn = true; 



{% endhighlight  %}
{% highlight vbnet %}



'Sets to arraylist of states.

gridListBox1.DataSource = USStates        



'ImageList-the images displayed in the list.       

gridListBox1.ImageList = ImageList           



'Displays multiple columns.       

gridListBox1.MultiColumn = True                

gridListBox1.ShowColumnHeader = True

gridListBox1.SelectionMode = SelectionMode.One



'Makes last column.

gridListBox1.FillLastColumn = True             
{% endhighlight  %}


