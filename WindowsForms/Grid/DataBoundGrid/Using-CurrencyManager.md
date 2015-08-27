---
layout: post
title: Using-CurrencyManager
description: using currencymanager
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---

# Using CurrencyManager

Sometimes the grid itself will not contain all the data in the data table. For example, your data table may have 12 columns in it, but you are able to add only three GridBoundColumns to display exactly three of the twelve columns. In this case, the table has nine more columns than the grid. How do you get all the values in the columns that are not in the grid? 

Your first inclination might be to grab the row number from the grid and try to use it as an index in the datatable. But, the relationship between the grid's row number and the data table row numbers will break if your grid has been sorted. So, instead of using the row number as an index in the data table, you should use it as an index in the CurrencyManager List. 

Given below are some code samples.

{% highlight c# %}

//Assuming the grid is bound to a Data Table.

CurrencyManager cm = (CurrencyManager)this.grid.BindingContext[this.grid.DataSource, this.grid.DataMember];

DataRowView drv = cm.List[1] as DataRowView; 



//Accesses row 2 of the grid.

if(drv != null)

{

    DataRow dr = drv.Row;

    Console.WriteLine(dr["FirstName"].ToString());

}


{% endhighlight %}

{% highlight vbnet %}


'Assuming grid is bound to a Data Table.

Dim cm As CurrencyManager = CType(Me.grid.BindingContext(Me.grid.DataSource, Me.grid.DataMember), CurrencyManager)

Dim drv As DataRowView = cm.List(1)  



'Accesses row 2 of the grid.

If Not (drv Is Nothing) Then

Dim dr As DataRow = drv.Row

Console.WriteLine(dr("FirstName").ToString())

End If

{% endhighlight %}
