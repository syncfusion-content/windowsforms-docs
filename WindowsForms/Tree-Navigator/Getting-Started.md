---
layout: post
title: Getting Started with Windows Forms Tree Navigator | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms Tree Navigator control. Explore setup, features, examples, and customization options.
platform: WindowsForms
control: Tree Navigator 
documentation: ug
---

# Getting Started with Windows Forms Tree Navigator

This section briefly describes how to design a Tree Navigator Control in a Windows Forms Application.

## Assembly Deployment
The following list of assemblies needs to be added as reference to use Tree Navigator in any application,

NameSpace: Syncfusion.Windows.Forms.Tools

Assembly: Syncfusion.Tools.Windows

Dependent Assembly : Syncfusion.Shared.Base

<table>
<tr>
<th>
Required assemblies<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Syncfusion.Tools.Windows<br/><br/></td><td>
Syncfusion.Tools.Windows assembly contains classes that handles all UI operations, fundamentals and base classes of Tree Navigator Control.<br/><br/></td></tr>
<tr>
<td>
Syncfusion.Shared.Base<br/><br/></td><td>
Syncfusion.Shared.Base contains style related properties and various other controls which are used in Tree Navigator Control.<br/><br/></td></tr>
</table>

We can Implement Tree navigator in Two ways they are,
*	Adding Control Via Designer
*	Adding Control Manually in C#


## Adding Control Via Designer

1. Create a new Windows Forms Application Project in VS IDE through New Project Wizard.
2. Then Drag and Drop the Tree Navigator control from the toolbox into the designer page.


![Adding Tree Navigator Control Via Designer](Getting-Started_images/DragDrop.png)


3. Once you drag drop the Tree Navigator into the designer page, the Tree Navigator will be added successfully into the application with the required libraries.


![Drag Drop the Tree Navigator](Getting-Started_images/AfterDragDrop.png)



## Adding control manually in C#
Tree Navigator can be added through code-behind by following the below steps.

1. Include the namespaces Syncfusion.Windows.Forms and Syncfusion.Windows.Forms.Tools which are needed for the Control.

{% tabs %}
{% highlight c# %}

		//Namespaces.

		using Syncfusion.Windows.Forms.Tools;

		using Syncfusion.Windows.Forms;

{% endhighlight %}

{% highlight vb %}

		‘Namespaces.

		Imports Syncfusion.Windows.Forms

		Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

2. To add Tree Navigator Control to a Windows Forms Application through code, Create an instance of the Tree Navigator control and add it to the Form.

{% tabs %}
{% highlight c# %}

		//Creates the Tree Navigator instance.

		TreeNavigator treeNavigator = new TreeNavigator();

		this.Controls.Add(treeNavigator);

{% endhighlight %}

{% highlight vb %}

		‘Creates the Tree Navigator instance.

		Dim treeNavigator As TreeNavigator = New TreeNavigator()

		Me.Controls.Add(treeNavigator)

{% endhighlight %}
{% endtabs %}

## Adding TreeMenuItem to the control
     The Tree Navigator is populated with the collection of TreeMenuItem using the items property. we can add TreeMenuItem in two Ways,
     
     * Adding items manually in C#
	 * Adding items through Designer 

The following code example allows you to add TreeMenuItem to the Tree Navigator.


{% tabs %}
{% highlight c# %}

//Adds items to the Tree Navigator.
this.treeNavigator.Header.HeaderText = "This PC";
TreeMenuItem treemenuitem1 = new TreeMenuItem();
this.treeNavigator.Items.Add(treemenuitem1);
treemenuitem1.Text = "Desktop";
TreeMenuItem treemenuitem2 = new TreeMenuItem();
this.treeNavigator.Items.Add(treemenuitem2);
treemenuitem2.Text = "Document";
TreeMenuItem treemenuitem3 = new TreeMenuItem();
this.treeNavigator.Items.Add(treemenuitem3);
treemenuitem3.Text = "Downloads";

{% endhighlight %}

{% highlight vb %}


'Adds items to the Tree Navigator.
Me.treeNavigator1.Header.HeaderText = "This PC"
Dim treemenuitem1 As TreeMenuItem = New TreeMenuItem()
Me.treeNavigator1.Items.Add(treemenuitem1)
treemenuitem1.Text = "Desktop"
Dim treemenuitem2 As TreeMenuItem = New TreeMenuItem()
Me.treeNavigator1.Items.Add(treemenuitem2)
treemenuitem2.Text = "Document"
Dim treemenuitem3 As TreeMenuItem = New TreeMenuItem()
Me.treeNavigator1.Items.Add(treemenuitem3)
treemenuitem3.Text = "Downloads"


{% endhighlight %}
{% endtabs %}



The following steps allows you to add TreeMenuItem to the Tree Navigator through Designer,
1. Once you drag drop the Tree Navigator into the designer page, the Tree Navigator will be added successfully into the application, you can see the Smart Tag on the top right corner.

2. Click the Smart Tag button and select the items property from the listed properties.

![Click Smart Tag button](Getting-Started_images/ThroughDesigner.png)

3. Then add  items as shown below.
   
![Adding the Items](Getting-Started_images/ThroughDesigner2.png)

![WinForms Tree Navigator](Getting-Started_images/Adding_TreeMenuitems.png)

N> In .NET Core, when adding child items to a TreeMenuItem directly from the Visual Studio Properties window, the default Collection Editor opens instead of the expected editor.
Workaround: Use the main Tree Navigator Collection Editor to add items, then configure the child items as needed. A permanent fix is in progress.