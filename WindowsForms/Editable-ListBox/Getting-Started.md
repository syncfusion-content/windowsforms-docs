---
layout: post
title: Getting Started with Windows Forms Editable ListBox | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms Editable ListBox (EditableList) control, its elements, and more.
platform: WindowsForms
control: EditableList
documentation: ug
---

# Getting Started with Windows Forms Editable ListBox

## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#editablelist) section to get the list of assemblies or details of NuGet package that needs to be added as a reference to use the control in any application.

Click [NuGet Packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to learn how to install nuget packages in a Windows Forms application.

## Adding EditableList control via designer

1) Create a new Windows Forms application in Visual Studio.

2) The [EditableList](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.EditableList.html) control can be added to an application by dragging it from the toolbox to a designer view. The following dependent assemblies will be added automatically:

* Syncfusion.Shared.Base

![Windows Forms EditableList drag and drop from toolbox](Creating-Editable-List_images/Creating-Editable-List_img1.png)

## Adding EditableList control via code

1) Create a C# or VB application via Visual Studio.

2) Add the following reference to the project:

* Syncfusion.Shared.Base

3) Include the required namespace.

{% capture codesnippet1 %}
{% tabs %}
{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}
{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }} 

4) Create an instance of [EditableList](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.EditableList.html), and add it to the form.

{% capture codesnippet2 %}
{% tabs %}
{% highlight C# %}

EditableList editableList1 = new EditableList();
this.Controls.Add(this.editableList1);

{% endhighlight %}

{% highlight vb %}

EditableList editableList1 = New EditableList()
Me.Controls.Add(Me.editableList1)

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }} 
 
5) Associate Button, TextBox, and ListBox with the EditableList control.

{% capture codesnippet3 %}
{% tabs %}
{% highlight c# %}

// Add the Button, ListBox, and TextBox controls.
editableList1.Controls.Add(this.editableList1.Button);
editableList1.Controls.Add(this.editableList1.ListBox);
editableList1.Controls.Add(this.editableList1.TextBox);

// Set size and add items.
this.editableList1.Size = new System.Drawing.Size(144, 40);

editableList.ListBox.Items.AddRange(new object[] { "Button", "Text", "Image", "Font style" });

{% endhighlight %}

{% highlight vb %}

' Add Button, ListBox, and TextBox controls
editableList1.Controls.Add(Me.editableList1.Button)
editableList1.Controls.Add(Me.editableList1.ListBox)
editableList1.Controls.Add(Me.editableList1.TextBox)

' Set size and add items.
Me.editableList1.Size = New System.Drawing.Size(144, 140)

editableList.ListBox.Items.AddRange(New Object() { "Button", "Text", "Image", "Font style" })

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }} 

![Windows Forms EditableList shows added item into the list box](Creating-Editable-List_images/EditableList_addingitem.png)

## Select and edit item

### Selecting item

Click any item in the collection list at run time, and the item will be selected in the list.

This selection process can be achieved using the the following code.

{% tabs %}
{% highlight C# %}

editableList.ListBox.SelectedItem = "Text";

{% endhighlight %}
{% highlight VB %}

editableList.ListBox.SelectedItem = "Text"

{% endhighlight %}
{% endtabs %}

![Windows Forms EditableList shows selected item](Creating-Editable-List_images/EditableList_selecteditem.png)

### Editing item

At run time, select text, and double click the text or press F2 button. Now, you can edit the text.

![Windows Forms EditableList shows edited item](Creating-Editable-List_images/EditableList_edititem.png)
