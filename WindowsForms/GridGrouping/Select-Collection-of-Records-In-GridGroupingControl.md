---
layout: post
title: Select-Collection-of-Records-In-GridGroupingControl | Windows Forms | Syncfusion
description: select collection of records in gridgroupingcontrol
platform: windowsforms
control: GridGrouping
documentation: ug
---

# Select Collection of Records In GridGroupingControl

Essential GridGroupingControl now supports two methods for selecting records in grid table. 

* SelectAll
* Select Specified Record



## Selecting All

The following code illustrates how to select all record in grid table.

{% highlight C# %} 

//Selects all the records from the grid table.

this.gridGroupingControl1.Table.Records.SelectAll();

 {% endhighlight %}

When the code runs, selecting all record is bound to Select All button.

 ![](Select-Collection-of-Records-In-GridGroupingControl_images/Select-Collection-of-Records-In-GridGroupingControl_img1.png)





## Selecting Specified Records

The following code illustrates how to select specified records.

N> Method Name:  AddRange   Parameter: Specify the Record collection to be selected
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

When the code runs, selecting specified records is bound to Select Specified Records button. 

 ![](Select-Collection-of-Records-In-GridGroupingControl_images/Select-Collection-of-Records-In-GridGroupingControl_img3.png) 



