---
layout: post
title: Built-in-Navigation-Support-for-RecordNavigationControl-in-GridGroupingControl | Windows Forms | Syncfusion
description: built-in navigation support for recordnavigationcontrol in gridgroupingcontrol
platform: windowsforms
control: GridRecordNavigation
documentation: ug
---

# Built-in Navigation Support for RecordNavigationControl in GridGroupingControl

GridGrouping control now provides four types of built-in navigation support enabling users to navigate to the first record, last record, previous record, and next record. 

## Use Case Scenarios

When you have lots of records in your application, this feature helps you easily navigate to the required record.



<table>
<tr>
<th>
METHOD</th><th>
DESCRIPTION</th><th>
PARAMETERS</th><th>
TYPE</th><th>
RETURN TYPE</th><th>
REFERENCE LINKS</th></tr>
<tr>
<td>
MoveFirst()</td><td>
this Method is used to navigate to the first record.</td><td>
N/A </td><td>
method</td><td>
void </td><td>
N/A. </td></tr>
<tr>
<td>
MoveLast()</td><td>
this method is used to navigate to the last record.</td><td>
N/A</td><td>
method</td><td>
void</td><td>
N/A</td></tr>
<tr>
<td>
MoveNext()</td><td>
this method is used to navigate to the next record.</td><td>
N/A</td><td>
method</td><td>
void</td><td>
N/A</td></tr>
<tr>
<td>
MovePrevious()</td><td>
this method is used to navigate to the previous record.</td><td>
N/A </td><td>
method</td><td>
void</td><td>
N/A</td></tr>
</table>

## Sample Link

A demo of this feature is available in the following location:

_<Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Grouping.Windows\Samples\Selection\Record Range Selection Demo_

Adding Navigation Bar to the RecordNavigationControl

The following are steps to add navigation bar:

1. Enable navigation bar by setting ShowNavigationBar property to true. The following code illustrates this:

{% tabs %}
   ~~~ cs


             this.gridGroupingControl1.ShowNavigationBar = true;
   ~~~
   {:.prettyprint}
   
   ~~~ vbnet
              Me.gridGroupingControl1.ShowNavigationBar = True
   ~~~
   {:.prettyprint}
{% endtabs %}

2. Call the methods for navigation bar i.e., MoveFirst(), MoveLast(), MoveNext() and MovePrevious() methods. The following code illustrates this: 

{% tabs %}
   ~~~ cs

				//This property should set to true to show navigation bar.      
				 this.gridGroupingControl1.ShowNavigationBar = true;
				 
				 //This method is used to navigate the first record.this.gridGroupingControl1.RecordNavigationBar.MoveFirst();
				 
				 //This method is used to navigate the last record.this.gridGroupingControl1.RecordNavigationBar.MoveLast();
				 
				 //This method is used to navigate the next record.this.gridGroupingControl1.RecordNavigationBar.MoveNext();
				 
				 //This method is used to navigate the previous record.    
				 this.gridGroupingControl1.RecordNavigationBar.MovePrevious();
   ~~~
   {:.prettyprint}
   
   ~~~ vbnet
				'This property should set to true to show the navigation bar.      
				Me.gridGroupingControl1.ShowNavigationBar = True'This method is used to navigate the first record.   
				Me.gridGroupingControl1.RecordNavigationBar.MoveFirst()'This method is used to navigate the last record.   
				Me.gridGroupingControl1.RecordNavigationBar.MoveLast()'This method is used to navigate the next record. 
				Me.gridGroupingControl1.RecordNavigationBar.MoveNext()'This method is used to navigate the previous record.
				Me.gridGroupingControl1.RecordNavigationBar.MovePrevious()
   ~~~
   {:.prettyprint}
   {% endtabs %}
   
   ![](Builtin_images/Builtin_img1.png)



