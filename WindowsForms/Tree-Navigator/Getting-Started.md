---
layout: post
title: Getting Started with Windows Forms TreeNavigator | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms TreeNavigator control. Explore setup, features, examples, and customization options.
platform: WindowsForms
control: TreeNavigator 
documentation: ug
---

# Getting Started with Windows Forms TreeNavigator

This section explains how to use the TreeNavigator control to build a navigable, expandable tree interface in a Windows Forms application.

## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#treenavigator) section for the list of assemblies or the NuGet package details that must be referenced to use the control in any application.

Refer to [NuGet Packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to learn how to install NuGet packages in a Windows Forms application.

To install via the NuGet Package Manager Console, run:

```powershell
Install-Package Syncfusion.Tools.Windows
```

## Adding TreeNavigator via Designer

1. The following dependent assemblies are added to the project automatically when you drag the control:

    * Syncfusion.Tools.Windows
    * Syncfusion.Shared.Base

2. Open the **Toolbox** in Visual Studio, locate the **Syncfusion** category, and drag **TreeNavigator** onto the form.

    ![Drag and drop the TreeNavigator control into a WinForms application](Getting-Started_images/DragDrop.png)

3. The control is added to the form with the required assemblies referenced.

    ![TreeNavigator added to the form](Getting-Started_images/AfterDragDrop.png)

## Adding TreeNavigator via code

To add the control manually, follow these steps:

1. Add the following required assembly references to the project ([Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#treenavigator)):

    * Syncfusion.Tools.Windows
    * Syncfusion.Shared.Base

2. Add the required namespace (`Syncfusion.Windows.Forms.Tools`), create the `TreeNavigator` control instance, initialize it, and add it to the form.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools;

namespace TreeNavigatorDemo
{
    public partial class Form1 : Form
    {
        private TreeNavigator treeNavigator;

        public Form1()
        {
            InitializeComponent();

            treeNavigator = new TreeNavigator();
            treeNavigator.Location = new Point(20, 20);
            treeNavigator.Size = new Size(200, 300);
            this.Controls.Add(treeNavigator);
        }
    }
}

{% endhighlight %}
{% highlight vb %}

Imports System.Drawing
Imports System.Windows.Forms
Imports Syncfusion.Windows.Forms.Tools

Public Class Form1
    Inherits Form

    Private treeNavigator As TreeNavigator

    Public Sub New()
        InitializeComponent()

        treeNavigator = New TreeNavigator()
        treeNavigator.Location = New Point(20, 20)
        treeNavigator.Size = New Size(200, 300)
        Me.Controls.Add(treeNavigator)
    End Sub
End Class

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

## Adding TreeMenuItem to the control

The TreeNavigator is populated with a collection of `TreeMenuItem` objects using the `Items` property. Items can be added in two ways:

* Adding items through the designer
* Adding items through code

### Adding items through the designer

1. After dragging the TreeNavigator onto the form, click the **Smart Tag** button at the top-right corner of the control.

    ![Click the Smart Tag button on the TreeNavigator](Getting-Started_images/ThroughDesigner.png)

2. Select the **Items** property from the listed properties to open the collection editor, then add the items.

    ![Adding items through the Items collection editor](Getting-Started_images/ThroughDesigner2.png)

3. The TreeMenuItems are added to the TreeNavigator.

    ![TreeNavigator output with TreeMenuItems](Getting-Started_images/Adding_TreeMenuitems.png)

### Adding items through code

The following code example shows how to add TreeMenuItems to the TreeNavigator.

{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

// Adds items to the TreeNavigator.
this.treeNavigator.Header.HeaderText = "This PC";

TreeMenuItem treemenuitem1 = new TreeMenuItem();
this.treeNavigator.Items.Add(treemenuitem1);
treemenuitem1.Text = "Desktop";

TreeMenuItem treemenuitem2 = new TreeMenuItem();
this.treeNavigator.Items.Add(treemenuitem2);
treemenuitem2.Text = "Documents";

TreeMenuItem treemenuitem3 = new TreeMenuItem();
this.treeNavigator.Items.Add(treemenuitem3);
treemenuitem3.Text = "Downloads";

{% endhighlight %}
{% highlight vb %}

' Adds items to the TreeNavigator.
Me.treeNavigator.Header.HeaderText = "This PC"

Dim treemenuitem1 As TreeMenuItem = New TreeMenuItem()
Me.treeNavigator.Items.Add(treemenuitem1)
treemenuitem1.Text = "Desktop"

Dim treemenuitem2 As TreeMenuItem = New TreeMenuItem()
Me.treeNavigator.Items.Add(treemenuitem2)
treemenuitem2.Text = "Documents"

Dim treemenuitem3 As TreeMenuItem = New TreeMenuItem()
Me.treeNavigator.Items.Add(treemenuitem3)
treemenuitem3.Text = "Downloads"

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

N> In .NET Core, when adding child items to a TreeMenuItem directly from the Visual Studio Properties window, the default Collection Editor opens instead of the expected editor.
Workaround: Use the main TreeNavigator Collection Editor to add items, then configure the child items as needed. A permanent fix is in progress.