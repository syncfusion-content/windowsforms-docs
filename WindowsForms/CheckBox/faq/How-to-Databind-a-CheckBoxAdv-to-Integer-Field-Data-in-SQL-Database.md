---
layout: post
title: DataBind CheckBoxAdv To Int Field SQLDatabase|WindowsForms| Syncfusion
description: This section gives detailed description on how to databind a CheckBoxAdv to Integer Field in SQL Database.
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# How to Databind a CheckBoxAdv to Integer Field in SQL Database

The [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) [IntValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_IntValue) property can be used to data bind to integer values as illustrated below.

{% tabs %}
{% highlight c# %}

public partial class Form1 : Form
{
    public static string dataBasePath = Path.GetFullPath("..\\..\\Database1.mdf");
    public  string connectString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + dataBasePath + ";Integrated Security=True";
    public Form1()
    {
        InitializeComponent();

        using (SqlConnection sqlConnection = new SqlConnection(connectString))
        {
            sqlConnection.Open();

            SqlDataAdapter dataAdapter = new SqlDataAdapter("SELECT * FROM [Table]", sqlConnection);

            DataTable dataTable = new DataTable("Table");
            dataAdapter.Fill(dataTable);

            dataGridView1.DataSource = dataTable;
            this.checkBoxAdv1.DataBindings.Add("IntValue", dataTable, "integerValue");
        }
    }
}


{% endhighlight %}

{% highlight vb %}

Public Partial Class Form1
    Inherits Form

    Public Shared dataBasePath As String = Path.GetFullPath("..\..\Database1.mdf")
    Public connectString As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" & dataBasePath & ";Integrated Security=True"

    Public Sub New()
        InitializeComponent()

        Using sqlConnection As SqlConnection = New SqlConnection(connectString)
            sqlConnection.Open()
            Dim dataAdapter As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM [Table]", sqlConnection)
            Dim dataTable As DataTable = New DataTable("Table")
            dataAdapter.Fill(dataTable)
            dataGridView1.DataSource = dataTable
            Me.checkBoxAdv1.DataBindings.Add("IntValue", dataTable, "integerValue")
        End Using
    End Sub
End Class


{% endhighlight %}
{% endtabs %}

N > The field binded to IntValue property of CheckBoxAdv should contain -1 or 0 or 1 as value. 

![DataBinding CheckBoxAdv with Database](FAQ_images/FAQ_img2.png)

[View Sample in GitHub](https://github.com/SyncfusionExamples/How-to-bind-a-winforms-checkboxadv-to-an-sql-database)
