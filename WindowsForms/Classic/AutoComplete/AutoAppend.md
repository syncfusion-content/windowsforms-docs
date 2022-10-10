---
layout: post
title: AutoAppend in Windows Forms xptoolbar control | Syncfusion
description: Learn about AutoAppend support in Syncfusion Windows Forms ComboBoxAutoComplete(Classic) control and more details.
platform: WindowsForms
control: ComboBoxAutoComplete
documentation: ug
---


# AutoAppend in Windows Forms ComboBoxAutoComplete(Classic)

Combo box controls are commonly used to select from a particular value from a list of items. In several instances, the developer is not aware of the contents of the combo box before the application is being used. 

For instance, in an FTP client application, if the user is allowed to enter the FTP address of the servers in a combo box, it is not possible to provide a complete list of all possible FTP servers. When the user enters a FTP server into a combo box, the value is lost unless the developer writes additional code to persist the user entries in the registry or in a file. Also, at initialization, the combo box should be reinitialized with the saved items from the registry or file into which the values were saved. 

The AutoAppend class provides auto persisting of previously entered items in a Windows Forms combo box based on a category keyword and also populates the combo box control's items collection with the persisted list. 

The AutoAppend class provides this service for any combo box control without the developer having to write any code for the persisting and reading of the values. 

The following screen shot illustrates the usage of the AutoAppend class to persist items previously entered in a combo box and add them to the items collection of the combo box.

 ![AutoAppend support](ComboBoxAutoComplete-Images/Overview_img54.jpeg) 



## Associating AutoAppend with a Control


We can associate AutoAppend class to a ComboBox control by following the below steps. 

1. Open a Visual Studio project and include the required namespace. 

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}		

{% highlight vb %}
 
Imports Syncfusion.Windows.Forms.Tools
		
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

2. Drag and drop a ComboBox control from the Toolbox onto the form. 
3. Create and instance of the AutoAppend class as follows.

{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

// Creating an instance of the AutoAppend Class.
private AutoAppend autoAppend1;
autoappend1 = new AutoAppend();

{% endhighlight %}

{% highlight vb %}

' Creating an instance of the AutoAppend Class.
Private autoAppend1 As AutoAppend
Private autoappend1 = New AutoAppend()

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

4. After creating the AutoAppend instance we need to associate it with an edit control. To achieve this use the AutoAppend.SetAutoAppend method. This method takes an object of AutoAppendInfo class which is used to hold the details of the data associated. 


<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
SetAutoAppend</td><td>
Sets AutoAppend behavior for the control specified. The parameters are,{{ 'control' | markdownify }} - control to which auto append class has to be associated.{{ 'autoAppendInfo' | markdownify }} - Initializes an AutoAppendInfo class which  has three parameters - {{ 'AutoAppend' | markdownify }} - specifies whether auto append is enabled or not (true or false){{ 'categoryName' | markdownify }} - category to which contents in this control belong to.{{ 'items' | markdownify }} - Reference to an item list.{{ 'maxItems' | markdownify }} - specifies maximum number of items.</td></tr>
<tr>
<td>
GetAutoAppend</td><td>
Returns the AutoAppend info associated with the control. The parameter is control.</td></tr>
</table>

{% tabs %}
{% highlight C# %}

// Calling this will enable AutoAppend behavior in the control.
autoappend1.SetAutoAppend(cmbBox,new AutoAppendInfo(true,"category name", al, 10)); //al is an IList object

{% endhighlight %}

{% highlight vb %}

' Calling this will enable AutoAppend behavior in the control.
autoappend1.SetAutoAppend(cmbBox,New AutoAppendInfo(True, "category name", al, 10)) ' al is an IList object

{% endhighlight %}
{% endtabs %}

{% seealso %}
[Adding New Entries Programmatically](#adding-new-entries-programmatically)
{% endseealso %}
 
 

## Adding New Entries Programmatically

1. To add or move an item to the top of controls' AutoAppend list, call the method InsertOrMoveToTop. If the item is already present, it will be moved to the first place otherwise it will be added.
2. It takes 2 arguments. First one is the associated control and the second is the value in string.

{% capture codesnippet3 %}
{% tabs %}   
{% highlight c# %}
   
this.autoAppend1.InsertOrMoveToTop(this.comboBox1,"www.syncfusion.com");

{% endhighlight %}

{% highlight vb %}

Me.autoAppend1.InsertOrMoveToTop(Me.comboBox1,"www.syncfusion.com")

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}

 ![Adding New Entries Programmatically](ComboBoxAutoComplete-Images/Overview_img55.jpeg) 

