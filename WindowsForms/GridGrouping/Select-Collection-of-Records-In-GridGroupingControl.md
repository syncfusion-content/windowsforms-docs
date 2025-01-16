---
layout: post
title: Select Collection of Records In GridGrouping Control | Syncfusion
description: Learn about Select Collection of Records In GridGroupingControl support in Syncfusion® Windows Forms GridGrouping control, its elements and more details.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# Select Collection of Records In GridGroupingControl in Windows Forms

Essential<sup>®</sup> GridGroupingControl now supports two methods for selecting records in grid table. 

* SelectAll
* Select Specified Record



## Selecting All

The following code illustrates how to select all record in grid table.

{% tabs %}
{% highlight C# %} 

//Selects all the records from the grid table.
this.gridGroupingControl1.Table.Records.SelectAll();
{% endhighlight %}
{% endtabs %}

When the code runs, selecting all record is bound to Select All button.

 ![Select-Collection-of-Records-In-GridGroupingControl_images1](Select-Collection-of-Records-In-GridGroupingControl_images/Select-Collection-of-Records-In-GridGroupingControl_img1.png)





## Selecting Specified Records

The following code illustrates how to select specified records.

N> Method Name:  AddRange   Parameter: Specify the Record collection to be selected

{% tabs %}
{% highlight C# %} 

//Defining record collection
Record[] recordCollection = new Record[5];

//Adding records to collection

for (int index = 0; index < recordCollection.Length; index++)
{
    recordCollection[index] = this.gridGroupingControl1.Table.Records[index];
}

//Adding records collection to SelectedRecords
this.gridGroupingControl1.Table.SelectedRecords.AddRange(recordCollection);

{% endhighlight %}
{% endtabs %}

When the code runs, selecting specified records is bound to Select Specified Records button. 

 ![Select-Collection-of-Records-In-GridGroupingControl_images3](Select-Collection-of-Records-In-GridGroupingControl_images/Select-Collection-of-Records-In-GridGroupingControl_img3.png) 



