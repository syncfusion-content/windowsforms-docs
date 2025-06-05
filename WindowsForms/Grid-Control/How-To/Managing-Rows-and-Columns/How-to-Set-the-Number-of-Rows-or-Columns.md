---
layout: post
title: Set the Number of Rows and Columns in WinForms GridControl| Syncfusion
description: Learn here about how to set the Number of Rows and Columns in Syncfusion Essential Studio Windows Forms Grid Control, and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to set the number of rows or columns

Dynamically changing the RowCount or ColCount properties while a GridControl is being displayed is an efficient way to add or remove rows and/or columns from a GridControl. Using the designer, set grid’s RowCount and ColCount properties. From code, set these properties after the call to InitializeComponent in the form's constructor (or anytime later in your code after the GridControl has been created). 

{% tabs %}
{% highlight c# %}
public Form1()
{
    //Requires for Windows Form Designer support.
    InitializeComponent();

    //Sets the number of rows.
    gridControl1.RowCount = 20;

    //Sets the number of columns.
    gridControl1.ColCount = 200;
}

{% endhighlight  %}
{% highlight vb %}

Public Sub New()
MyBase.New()

'This call is required by the Windows Form Designer.
InitializeComponent()

'Adds any initialization after the InitializeComponent() call.
	
'Sets the number of rows.  
 GridControl1.RowCount = 20 

'Sets the number of columns.
GridControl1.ColCount = 200 

End Sub
{% endhighlight  %}
{% endtabs %}
