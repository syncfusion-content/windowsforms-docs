---
layout: post
title: Getting Started in Windows Forms ComboBox DropDown | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms ComboBox DropDown (ComboDropDown) control, its elements, and more.
platform: WindowsForms
control: ComboBoxDropDown
documentation: ug
---

# Getting Started with Windows Forms ComboBox DropDown (ComboDropDown)

In this section, ComboDropDown is used to host TreeView control and this can be achieved in the following ways.

## Through Designer

This section will guide you to create a ComboDropDown control through designer and associate a TreeView control as its popup.

The below steps will guide you with this.

1. Create a new Visual C# application or VB.NET application in Visual Studio .NET. 

   ![Create new application](Overview_images/Overview_img278.jpeg) 



2. Drag and drop a ComboDropDown control, TreeView control from the toolbox onto the form.

   ![Drag and drop ComboDropDown control](Overview_images/Overview_img279.jpeg) 



3. Add nodes to the TreeView control and set HideSelection property to false. The HideSelection property specifies whether the selected tree node remains highlighted even when the tree view has lost the focus.

   ![set HideSelection property to false](Overview_images/Overview_img280.jpeg) 



4. Now set the ComboDropDown's PopupControl property to be the above TreeView instance. 

   ![set the ComboDropDowns PopupControl property](Overview_images/Overview_img281.jpeg) 



N> We can also include code to set up the interaction between the combo and the treeview control. Refer_ Setting Interaction between ComboDropDown and TreeView.



## Through Code

Drag and drop the TreeView control which will be used in the drop-down portion of ComboDropDown control. 

1. Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

2. Create an instance of the ComboDropDown control class.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.ComboDropDown comboDropDown1;
this.comboDropDown1=new Syncfusion.Windows.Forms.Tools.ComboDropDown();

{% endhighlight %}

{% highlight vb %}

Private comboDropDown1 As Syncfusion.Windows.Forms.Tools.ComboDropDown
Me.comboDropDown1 = New Syncfusion.Windows.Forms.Tools.ComboDropDown()

{% endhighlight %}
{% endtabs %}

3. Add TreeView in the drop-down portion of ComboDropDown. Finally add ComboDropDown to the Form.

{% tabs %}
{% highlight c# %}

this.comboDropDown1.PopupControl=this.treeView1;
this.Controls.Add(this.comboDropDown1);

{% endhighlight %}

{% highlight vb %}

Me.comboDropDown1.PopupControl=Me.treeView1
Me.Controls.Add(Me.comboDropDown1)

{% endhighlight %}
{% endtabs %}

N> Refer Setting Interaction between ComboDropDown and TreeView to set the interaction between the ComboDropDown and Treeview.

