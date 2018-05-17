# Getting started

This section will explain to create a simple application with GridListControl and its functionalities.

## Assembly deployment

The following list of assemblies needs to be added as reference to use the GridListControl in any application:

<table>
<tr>
<th>
Required assemblies<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
{{'[Syncfusion.Grid.Windows](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows.html#"")'| markdownify }}<br/><br/></td><td>
Syncfusion.Grid.Windows assembly contains classes that handles all UI operations, fundamentals and base classes of GridListControl.<br/><br/></td></tr>
<tr>
<td>
{{'[Syncfusion.Shared.Base](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base.html#"")'| markdownify }}<br/><br/></td><td>
Syncfusion.Shared.Base contains style related properties and various editor controls which are used in GridListControl.<br/><br/></td></tr>
</table>

## Creating application with GridListControl

This section will provide step-by-step procedure to create a Grid List control through designer and through programmatic approach in a .NET application.

### Through Designer

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

### Through Code

The Grid List control sample that ships with Essential Grid does not use the designer. It creates an ArrayList of objects that serves as a data source for the Grid List control. Each state object has a LongName, ShortName and ImageIndex properties that can be displayed in the list control. Here are some code samples that illustrate assignments of the major properties. 

For the complete implementation details, refer to the sample in the below installation path.

**_<Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Grid List Control_**


{% tabs %}
{% highlight c# %}
//Sets to array list of states.
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
{% highlight vb %}
'Sets to array list of states.
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
{% endtabs %}

## Selection

Selection for the GridListControl can be enabled by using the SelectionMode property. The `GridListControl` supports three types of selection behaviors based on the [SelectionMode] (https://help.syncfusion.com/windowsforms/gridlist/data-binding-and-selection-modes) option. The SelectionBehaviors can be specified to One for selecting single row or MultiSimple to select many rows.
