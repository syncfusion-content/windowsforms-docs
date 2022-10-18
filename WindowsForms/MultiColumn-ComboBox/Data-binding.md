---
layout: post
title: Data-binding | WindowsForms | Syncfusion
description: This section deals with explain about the DataBinding support in Winforms MulticolumnComboBox control
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Data Binding in Windows Forms MultiColumn ComboBox

Data binding concepts for the [MultiColumnComboBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnComboBox.html) are discussed in the below topics.

## DataView as data source

We can use the `DataView` as the `DataSource` for [MultiColumnComboBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnComboBox.html) control. It can be done using the below code snippet.

{% tabs %}
{% highlight c# %}

private void Form1_Load(object sender, System.EventArgs e)
{
    //Create dataTable
    DataTable dt = new DataTable("Table1");
    dt.Columns.Add("FirstName");
    dt.Columns.Add("LastName");
    dt.Columns.Add("occupation");
    dt.Columns.Add("place");

    // Create a Data Set
    DataSet ds = new DataSet();
    ds.Tables.Add(dt);
    dt.Rows.Add(new string[] { "John", "Tina", "Doctor", "Italy" });
    dt.Rows.Add(new string[] { "Mary", "anu", "Teacher", "America" });
    dt.Rows.Add(new string[] { "asha", "roy", "Staff", "London" });
    dt.Rows.Add(new string[] { "George", "Gaskin", "Nurse", "germany" });
    dt.Rows.Add(new string[] { "sam", "jens", "Engineer", "Russia" });
    dt.Rows.Add(new string[] { "Ben", "Geo", "Developer", "India" });
    DataView view = new DataView(dt);

    // DATASOURCE is DATAVIEW
    this.MultiColumnComboBox1.DataSource = view;
    this.MultiColumnComboBox1.DisplayMember = "FirstName";
    this.MultiColumnComboBox1.ValueMember = "LastName";
}

{% endhighlight %}

{% highlight vb %}

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)
    'Create dataTable
    Dim dt As DataTable = New DataTable("Table1")
    dt.Columns.Add("FirstName")
    dt.Columns.Add("LastName")
    dt.Columns.Add("occupation")
    dt.Columns.Add("place")

    ' Create a Data Set
    Dim ds As DataSet = New DataSet()
    ds.Tables.Add(dt)
    dt.Rows.Add(New String() {"John", "Tina", "Doctor", "Italy"})
    dt.Rows.Add(New String() {"Mary", "anu", "Teacher", "America"})
    dt.Rows.Add(New String() {"asha", "roy", "Staff", "London"})
    dt.Rows.Add(New String() {"George", "Gaskin", "Nurse", "germany"})
    dt.Rows.Add(New String() {"sam", "jens", "Engineer", "Russia"})
    dt.Rows.Add(New String() {"Ben", "Geo", "Developer", "India"})
    Dim view As DataView = New DataView(dt)

    ' DATASOURCE is DATAVIEW
    Me.MultiColumnComboBox1.DataSource = view
    Me.MultiColumnComboBox1.DisplayMember = "FirstName"
    Me.MultiColumnComboBox1.ValueMember = "LastName"
End Sub

{% endhighlight %}
{% endtabs %}

![DataView as data source](Overview_images/Overview_img326.jpeg) 



## Using data adapter

This section deals with data binding in [MultiColumnComboBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnComboBox.html) using `OleDBDataAdapter`. Follow the steps below. 

* Add a [MultiColumnComboBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnComboBox.html) control to your form. 
* Add the appropriate DataAdapter and DataSets for your datasource. 
* Set the [MultiColumnCombobox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnComboBox.html) `Datasource`, `DisplayMember` and `ValueMember` properties. 
* Alternatively, you can set up the data binding in code, in the form's load event handler as follows.

{% tabs %}
{% highlight c# %}

private void Form_Load(object sender, System.EventArgs e)
{
    // Fill the dataset.
    this.oleDbDataAdapter1.Fill(this.dataSet11);
    this.oleDbDataAdapter2.Fill(this.dataSet21);

    // Set the DataSource,DisplayMember,ValueMember properties.
    this.multiColumnComboBox1.DataSource = this.dataSet21.Customers;
    this.multiColumnComboBox1.DisplayMember = "ContactName";
    this.multiColumnComboBox1.ValueMember = "CompanyName";
}

{% endhighlight %}

{% highlight vb %}

Private Sub Form_Load(ByVal sender As Object, ByVal e As System.EventArgs)
    'Fill the dataset.
    Me.oleDbDataAdapter1.Fill(Me.dataSet11)
    Me.oleDbDataAdapter2.Fill(Me.dataSet21)

    ' Set the DataSource,DisplayMember,ValueMember properties.
    Me.multiColumnComboBox1.DataSource = Me.dataSet21.Customers
    Me.multiColumnComboBox1.DisplayMember = "ContactName"
    Me.multiColumnComboBox1.ValueMember = "CompanyName"
End Sub

{% endhighlight %}
{% endtabs %}

A sample which demonstrates the OleDbDataAdapter data binding is available in the below sample installation location.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

## Populating MultiColumnComboBox

This section deals with populating [MultiColumnComboBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnComboBox.html) with typed Dataset as datasource. Follow the steps below :

1. Open VS .NET IDE and click File -> New -> Project -> Windows Application. 
2. Right click the project in the Solutions Explorer and click Add -> New Item and Add New Item dialog box will be displayed. 
3. Select DataSet from templates pane, give the name (Say new dataset.XSD) and click Open. This will add file by name new dataset.XSD to the solution. 
4. Add the XML Schema as shown below. 

{% capture codesnippet1 %}
{% tabs %}
{% highlight xaml %}

<xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:EnforceConstraints="False">
    <xs:complexType>
        <xs:choice maxOccurs="unbounded">
            <xs:element name="roster">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element name="PositionID" type="xs:string" minOccurs="0" />
                        <xs:element name="EmployeeID" type="xs:string" minOccurs="0" />
                        <xs:element name="PersonID" type="xs:string" minOccurs="0" />
                        <xs:element name="FirstName" type="xs:string" minOccurs="0" />
                        <xs:element name="LastName" type="xs:string" minOccurs="0" />
                        <xs:element name="BizUnitName" type="xs:string" minOccurs="0" />
                        <xs:element name="Title" type="xs:string" minOccurs="0" />
                        <xs:element name="FunctionalTitle" type="xs:string" minOccurs="0" />
                        <xs:element name="CorporateID" type="xs:string" minOccurs="0" />
                        <xs:element name="UserID" type="xs:int" minOccurs="0" />
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
        </xs:choice>
    </xs:complexType>
</xs:element>

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

5. Validate the written Schema. 
6. Add an XML file (Say new dataset.xml) with the following data. 

{% capture codesnippet2 %}
{% tabs %}
{% highlight xaml %}
 
 <?xml version="1.0" standalone="yes" ?>
<NewDataSet xmlns="http://tempuri.org/NewDataSet.xsd">
    <roster>
        <PositionID>12345</PositionID>
        <EmployeeID>1000</EmployeeID>
        <PersonID>01</PersonID>
        <FirstName>Mary</FirstName>
        <LastName>Elsa</LastName>
        <BizUnitName>Software</BizUnitName>
        <Title>Partner</Title>
        <FunctionalTitle>Microsoft</FunctionalTitle>
        <CorporateID>23</CorporateID>
        <UserID>11</UserID>
    </roster>
    <roster>
        <PositionID>345667</PositionID>
        <EmployeeID>1001</EmployeeID>
        <PersonID>02</PersonID>
        <FirstName>Anu</FirstName>
        <LastName>Roy</LastName>
        <BizUnitName>Software1</BizUnitName>
        <Title>Partner</Title>
        <FunctionalTitle>xx</FunctionalTitle>
        <CorporateID>56</CorporateID>
        <UserID>12</UserID>
    </roster>
    <roster>
        <PositionID>4655</PositionID>
        <EmployeeID>65</EmployeeID>
        <PersonID>542</PersonID>
        <FirstName>Sam</FirstName>
        <LastName>George</LastName>
        <BizUnitName>HR</BizUnitName>
        <Title>partner</Title>
        <FunctionalTitle>yy</FunctionalTitle>
        <CorporateID>345</CorporateID>
        <UserID>55</UserID>
    </roster>
</NewDataSet>

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

7. Write a method to load data from XML file. 

{% capture codesnippet3 %}
{% tabs %}
{% highlight c# %}

// Loads data from XML file.
private void LoadFromFile(string fileName)
{
	string remString = "\\bin\\debug";
	string path = Application.StartupPath.Remove(Application.StartupPath.Length - remString.Length, remString.Length)+ "\\" + fileName;
	NewDataSet newDataSet1 = new NewDataSet();
	newDataSet1.ReadXml(path);
	userCmbBox.DataSource =  newDataSet1.Tables [0];
	serCmbBox.DisplayMember = newDataSet1.roster.LastNameColumn.ColumnName;
	userCmbBox.ValueMember = newDataSet1.roster.EmployeeIDColumn.ColumnName;
	this.userCmbBox.ListBox.Grid.Model.Cols.Hidden[newDataSet1.roster.PersonIDColumn.ColumnName] = true;
	this.userCmbBox.ListBox.Grid.Model.Cols.Hidden[newDataSet1.roster.UserIDColumn.ColumnName] = true;
	this.userCmbBox.ListBox.Grid.Model.Cols.Hidden[newDataSet1.roster.EmployeeIDColumn.ColumnName] = true;
	this.userCmbBox.ListBox.Grid.Model.Cols.Hidden[newDataSet1.roster.PositionIDColumn.ColumnName] = true;
}

{% endhighlight %}

{% highlight vb %}

'Loads data from XML file.
Private Sub LoadFromFile(ByVal fileName As String)
    Dim remString As String = "\bin\debug"
    Dim path As String = Application.StartupPath.Remove(Application.StartupPath.Length - remString.Length, remString.Length) + "\" & fileName
    Dim newDataSet1 As NewDataSet = New NewDataSet()
    newDataSet1.ReadXml(path)
    userCmbBox.DataSource = newDataSet1.Tables(0)
    serCmbBox.DisplayMember = newDataSet1.roster.LastNameColumn.ColumnName
    userCmbBox.ValueMember = newDataSet1.roster.EmployeeIDColumn.ColumnName
    Me.userCmbBox.ListBox.Grid.Model.Cols.Hidden(newDataSet1.roster.PersonIDColumn.ColumnName) = True
    Me.userCmbBox.ListBox.Grid.Model.Cols.Hidden(newDataSet1.roster.UserIDColumn.ColumnName) = True
    Me.userCmbBox.ListBox.Grid.Model.Cols.Hidden(newDataSet1.roster.EmployeeIDColumn.ColumnName) = True
    Me.userCmbBox.ListBox.Grid.Model.Cols.Hidden(newDataSet1.roster.PositionIDColumn.ColumnName) = True
End Sub

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}

8. Load the values in the Form's Load event.

{% capture codesnippet4 %}
{% tabs %}
{% highlight c# %}

private void Form1_Load(object sender, System.EventArgs e)
{
	LoadFromFile("newdataset.xml");
}

{% endhighlight %}

{% highlight vb %}

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)
LoadFromFile("newdataset.xml")
End Sub

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet4 | OrderList_Indent_Level_1 }}

![Populating MultiColumnComboBox](Overview_images/Overview_img327.jpeg)

## See Also

[How to load MultiColumnComboBox dropdown items in on-demand?](https://www.syncfusion.com/forums/154336/how-to-detect-when-user-has-scrolled-to-bottom-of-list-in-order-to-run-query-append-more)
