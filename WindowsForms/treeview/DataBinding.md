---
layout: post
title: Data Binding | WindowsForms | Syncfusion
description: Data Binding support in Syncfusion  WindowsForms TreeViewAdv control and more details.
platform: WindowsForms
control: TreeView 
documentation: ug
---

# Data Binding
TreeViewAdv binds to any table, collection of tables, custom objects, etc. by using the **TreeViewAdv.DataSource** property. 
The following are the ways to bind various data sources to TreeViewAdv.
1.	Binding to Self-Referencing Data
2.	Binding to Data Relations
3.	Binding to Object-Relational Data

## Binding to Self-Referencing Data
In this type, TreeViewAdv binds to self-referencing data where the TreeViewAdv is bound to single table instead of multiple related tables.

Parent-Child relationship for all the records is defined by setting the **ParentMember** and **ChildMember** properties to the respective fields in the data source. If the Parent ID of one record has the respective value in the Child ID of any other records from the table, then that record is considered to have parent. If not, then the record is considered to have no parents and, in such case, it won’t be visible in the TreeViewAdv. 

If the value in **ParentMember** field of some records matches with the **TreeViewAdv.SelfRelationRootValue**, then those records are considered as root nodes of TreeViewAdv.
  
<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
DataSource </td><td>
Gets or sets the data source object in TreeViewAdv.</td></tr>
<tr>
<td>
DisplayMember  </td><td>
Gets or sets the field that populates the Text property of the TreeNodeAdv in TreeViewAdv.</td></tr>
<tr>
<td>
ValueMember  </td><td>
Gets or sets the field that populates the Value property of TreeNodeAdv in TreeViewAdv. </td></tr>
<tr>
<td>
ParentMember </td><td>
Gets or sets a value indicating the parent data field which behaves as a parent node in TreeViewAdv.</td></tr>
<tr>
<td>
ChildMember </td><td>
Gets or sets a value indicating the child data field which behaves as a child node in TreeViewAdv.</td></tr>
<tr>
<td>
DataMember </td><td>
Gets or sets the table name that should be bound to the TreeViewAdv. </td></tr>
<tr>
<td>
CheckedMember</td><td>
Gets or sets a value indicating the field to populate the state of checkbox of TreeNodeAdv in TreeViewAdv.</td></tr>
<tr>
<td>
SelfRelationRootValue </td><td>

Gets or sets the value that defines the root object in a self-relational mode when data source is used to define the underlying tree data. </td></tr>
</table>

![SelfReferencingData](DataBinding_images/SelfReferencingData1.png)
In the above table, **North America** is declared as root node by setting appropriate (or matching) **SelfRelationRootValue**. Here the value is set to empty and so **North America** is added as root node.

**United States** is declared as child of **North America** by setting appropriate ContinentID. Here the value is set to 1 and it matches the CountryID of **North America**. As a result, **United States** is added as child node of **North America**.

{% tabs %}
{% highlight c# %}
  treeViewAdv1.SelfRelationRootValue = "";
  treeViewAdv1.DisplayMember = "Name";
  treeViewAdv1.ParentMember = "ContinentID";
  treeViewAdv1.ChildMember = "CountryID";
  treeViewAdv1.ValueMember = "Capital";
  treeViewAdv1.CheckedMember = "IsActive";
  treeViewAdv1.DataSource = Table_1;
{% endhighlight %}
{% highlight vb %}
    treeViewAdv1.SelfRelationRootValue = ""
     treeViewAdv1.DisplayMember = "Name"
     treeViewAdv1.ParentMember = "ContinentID"
     treeViewAdv1.ChildMember = "CountryID"
     treeViewAdv1.ValueMember = "Capital"
     treeViewAdv1.CheckedMember = "IsActive"
     treeViewAdv1.DataSource = Table_1
{% endhighlight %}
{% endtabs %}

**Points to Remember**
1)	Root nodes are parentless (for example, see **"North America"** node in the image above). All root nodes must have their parent member values **(TreeViewAdv.ParentMember)** set to **TreeViewAdv.SelfRelationRootValue**property. If the property is not specified then, you may notice empty TreeViewAdv. So, to avoid this, we suggest that you always set parent member values with TreeViewAdv.SelfRelationRootValue for root nodes.

2)	You must specify **TreeViewAdv.DisplayMember**, **TreeViewAdv.ParentMember**, **TreeViewAdv.ChildMember** properties mandatorily to populate the appropriate TreeViewAdv.

## Binding to Data Relations
In this type, TreeViewAdv are bound to database where levels are created using **DataRelation** class. Each **DataRelation** class object describes the parent data being bound to, the child data being bound to and the data columns used to populate **Text** and selected **Value** properties of the nodes.

<table>
<tr><th>S.No</th><th>Property Name</th><th>Description</th>
<tr><td>1</td><td>DataRelations</td><td>Contains the collection of DataRelation in TreeViewAdv.</td></tr></table>

<table>
<tr><th>S.No</th><th>Class Name</th><th>Description</th>
<tr><td>1</td><td>DataRelation</td><td>Represents a parent/child relationship between two DataTable objects.</td></tr></table>

![DataRelations](DataBinding_images/DataRelations1.png)

{% tabs %}
{% highlight c# %}
           
 Syncfusion.Windows.Forms.Tools.DataRelation childRelation1;
 Syncfusion.Windows.Forms.Tools.DataRelation childRelation2;
 Syncfusion.Windows.Forms.Tools.DataRelation childRelation3;

  childRelation1 = new Syncfusion.Windows.Forms.Tools.DataRelation(Table_2, "Table_2", "SubFolderName1", "ChildFolder", "SubFolderChild1", "SubFolderName1", "Checked");

  childRelation2 = new Syncfusion.Windows.Forms.Tools.DataRelation(Table_3, "SubFolderName2", "SubFolderChild1", "SubFolderChild2");

  childRelation3 = new Syncfusion.Windows.Forms.Tools.DataRelation(Table_4, "Table_4", "SubFolderName3", "SubFolderChild2", "SubFolderChild3", "SubFolderName3", "Checked");

  treeViewAdv1.DataRelations.Clear();

  treeViewAdv1.DisplayMember = "FolderName";
  treeViewAdv1.ParentMember = "ParentFolder";
  treeViewAdv1.ChildMember = "ChildFolder";

  treeViewAdv1.DataRelations.Add(childRelation1);
  treeViewAdv1.DataRelations.Add(childRelation2);
  treeViewAdv1.DataRelations.Add(childRelation3);

  treeViewAdv1.DataSource = Table_1;
{% endhighlight %}
{% highlight vb %}
Dim childRelation1 As Syncfusion.Windows.Forms.Tools.DataRelation
 Dim childRelation2 As Syncfusion.Windows.Forms.Tools.DataRelation
 Dim childRelation3 As Syncfusion.Windows.Forms.Tools.DataRelation

  
childRelation1 = New Syncfusion.Windows.Forms.Tools.DataRelation(Table_2, "SubFolder1", "SubFolderName1", "FolderChild", "SubFolderChild1", "SubFolderName1", "Checked")

  childRelation2 = New Syncfusion.Windows.Forms.Tools.DataRelation(Table_3, "SubFolderName2", "SubFolderChild1", "SubFolderChild2")

  childRelation3 = New Syncfusion.Windows.Forms.Tools.DataRelation(Table_4, "SubFolder3", "SubFolderName3", "SubFolderChild2", "SubFolderChild3", "SubFolderName3", "Checked")

  treeViewAdv1.DataRelations.Clear()

  treeViewAdv1.DisplayMember = "FolderName"
  treeViewAdv1.ParentMember = "ParentFolder"
  treeViewAdv1.ChildMember = "ChildFolder"

  treeViewAdv1.DataRelations.Add(childRelation1)
  treeViewAdv1.DataRelations.Add(childRelation2)
  treeViewAdv1.DataRelations.Add(childRelation3)


  treeViewAdv1.DataSource = Table_1
{% endhighlight %}
{% endtabs %}

![DataRelations](DataBinding_images/DataRelations2.png)

**Points to Remember:** 
1)	In this type, you must specify **DisplayMember**, **ParentMember**, **ChildMember** properties mandatorily to populate appropriate TreeViewAdv.
2)	Here levels are created using **DataRelation**, so if you want to dynamically add new level then you need to create new instance of **DataRelation** and add it to **TreeViewAdv.DataRelations** property with proper relation first.

## Binding to Object-Relational Data
In this type, TreeViewAdv binds to class objects which have collections associated with other dependent class objects establishing proper relation.

![Object-RelationalData](DataBinding_images/Object-RelationalData1.png)

In this illustration, there are three classes named Continent, Country and State. In this case the **Continent** class has a property named ContinentName**, **ContinentID** and **Country_List** which is a collection of **Country** objects. This is the first relation. The second relation is the **State_List** property in the **Country** class, it offers a reference to a collection of **State**. 

You must specify the **DisplayMember**, **ChildMember** property and here you need not define **ParentMember** property. TreeViewAdv must display it in hierarchical view.

<table>
<tr><th>S.No</th><th>Properties</th><th>Description</th>
<tr><td>1</td><td>DisplayMember</td><td>Defines which property of the class needs to be in node's text.</br> 

Example</br>
Continent -> ContinentName</br>
Country -> CountryName</br>
State -> StateName</br>
</td></tr>

<tr><td>2</td><td>ChildMember</td><td>Defines the class order.</br> 

Example</br>
Continent -> First level</br>
Country -> Second level</br>
State -> Third level</br>
</td></tr>
</table>

{% tabs %}
{% highlight c# %}
treeViewAdv1.DisplayMember = "ContinentName\\CountryName\\StateName"; 
treeViewAdv1.ChildMember = "Continent\\Country\\State";
{% endhighlight %}
{% highlight vb %}

treeViewAdv1.DisplayMember = "ContinentName\\CountryName\\StateName"
treeViewAdv1.ChildMember = "Continent\\Country\\State"
{% endhighlight %}
{% endtabs %}

![Object-RelationalData](DataBinding_images/Object-RelationalData2.png)

# Editing
TreeViewAdv supports dynamic update of the underlying changes in data source settings. So, whenever user does insert, delete, rename (aka, update), drag and drop operations, it should also be reflected in the TreeViewAdv and data source.

For example, while we set the same data source object for two different controls such as GridGroupingControl and TreeViewAdv, whenever we do insert, delete, update, etc. operations in GridGroupingControl should reflect in TreeViewAdv and vice versa. Below code sample demonstrates the addition and removal of records in DataTable source at runtime. 

{% tabs %}
{% highlight c# %}
 // Initialize data sources                
  treeViewAdv1.DataSource = Table_1;
  gridGroupingControl1.DataSource = Table_1;

 // Addition                 
 DataTable dt = (this.treeViewAdv1.DataSource as DataTable);

 if (treeViewAdv1.SelectedItem != null)
 dt.Rows.Add("New Item", "10" + count.ToString(), (treeViewAdv1.SelectedItem as DataRow)[treeViewAdv1.ChildMember].ToString(), "New", false);

 if (dt != null)
    dt.AcceptChanges();

 // Deletion
(treeViewAdv1.DataSource as DataTable).AcceptChanges();

if (this.treeViewAdv1.SelectedItem != null)
{
  (treeViewAdv1.SelectedItem as DataRow).Delete();
}

{% endhighlight %}
{% highlight vb %}
' Initialize data sources
 treeViewAdv1.DataSource = Table_1
 gridGroupingControl1.DataSource = Table_1

' Addition                 
Dim dt As DataTable = (TryCast(Me.treeViewAdv1.DataSource, DataTable))

If treeViewAdv1.SelectedItem IsNot Nothing Then
    dt.Rows.Add("New Item", "10" & count.ToString(), (TryCast(treeViewAdv1.SelectedItem, DataRow))(treeViewAdv1.ChildMember).ToString(), "New", False)
End If

If dt IsNot Nothing Then
    dt.AcceptChanges()
End If

'Deletion
TryCast(treeViewAdv1.DataSource, DataTable).AcceptChanges()

If Me.treeViewAdv1.SelectedItem IsNot Nothing Then
  TryCast(treeViewAdv1.SelectedItem, DataRow).Delete()
End If
{% endhighlight %}
{% endtabs %}Object-Relational View

<table>
<tr><th>S.No</th><th>Types of View</th><th>Description</th>
<tr><td>1</td><td>
Self-Referencing
</td><td>
In this type, you can do insert, delete, edit, drag and drop operations.
</td></tr>

<tr><td>2</td><td>Data Relations</td><td>In this type, you can do insert, delete, edit, drag and drop operations. Meanwhile when trying to insert new record in new level is not allowed. Here levels are created using DataRelation, so if you want to dynamically add new level then you need to create new instance of DataRelation and add it to TreeViewAdv.DataRelations property with proper relation first. 
</td></tr>

<tr><td>3</td><td>Object-Relational</td><td>In this type, you can do insert, delete, edit, drag and drop operation. Meanwhile when trying to insert new record in new level is not allowed. Because levels are created based on number of classes specified in ChildMember. Editing operation can be performed within the number of classes defined and not beyond that. 
</td></tr>
</table>

**Points to remember**
1.	For all the types, in order to allow editing in TreeViewAdv control, **TreeViewAdv.LabelEdit** property and **AllowDrop** property must be enabled in TreeViewAdv.

2.	For Self-referencing and Data relation type, you need to call **AcceptChanges()** after adding new rows and before deleting the existing rows to allow the dynamic updates in TreeViewAdv. 
Editing Object-Relational View
In this type, you can insert, delete, edit and drag drop the new or existing data. Custom objects must be implemented either with INotifyPropertyChanged or INotifyCollectionChanged interface, so that TreeViewAdv will automatically refresh the UI when any item gets changed, added, removed or the list gets cleared.

## Editing Object-Relational View
In this type, you can insert, delete, edit and drag drop the new or existing data. Custom objects must be implemented either with **INotifyPropertyChanged** or **INotifyCollectionChanged** interface, so that TreeViewAdv will automatically refresh the UI when any item gets changed, added, removed or the list gets cleared.


![Object-RelationalView](DataBinding_images/Object-RelationalView.png)

**Example**
{% tabs %}
{% highlight c# %}
public class Form1 : Form
    {
            // Initialize data sources
            treeViewAdv1.DataSource = continentList;
            gridGroupingControl1.DataSource = continentList;  

            treeViewAdv1.DisplayMember = "ContinentName\\CountryName\\StateName";
            treeViewAdv1.ChildMember = "Continent\\Country\\State";          
            
    }

public class NotifyPropertyChanged : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        public void RaisePropertyChanged(string name)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(name));

        }
    }

    public class Continent : NotifyPropertyChanged
    {
        
    }

    public class Country : NotifyPropertyChanged
    {
       
    }

    public class State: NotifyPropertyChanged
    {
       
    }
    
{% endhighlight %}
{% highlight vb %}
        Public Class Form1
	Inherits Form
        ' Initialize data sources

		treeViewAdv1.DisplayMember = "ContinentName\\CountryName\\StateName"
		treeViewAdv1.ChildMember = "Continent\\Country\\State"

		treeViewAdv1.DataSource = continentList
		gridGroupingControl1.DataSource = continentList

        End Class

        Public Class NotifyPropertyChanged`
	Implements INotifyPropertyChanged

		Public Event PropertyChanged As PropertyChangedEventHandler Implements INotifyPropertyChanged.PropertyChanged
		Public Sub RaisePropertyChanged(ByVal name As String)
			RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(name))

		End Sub
        End Class

	Public Class Continent
		Inherits NotifyPropertyChanged

	End Class

	Public Class Country
		Inherits NotifyPropertyChanged

	End Class

	Public Class State
		Inherits NotifyPropertyChanged

	End Class
{% endhighlight %}
{% endtabs %}