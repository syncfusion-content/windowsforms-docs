---
layout: post
title: Adding-and-Filling-the-XPToolbar | WindowsForms | Syncfusion
description: adding and filling the xptoolbar
platform: WindowsForms
control: XPToolbar
documentation: ug
---

# Getting started

This section describes how to add `XPToolBar` control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

The following list of assemblies should be added as reference to use the XPToolBar in any application:

<table>
<tr>
<td>
{{'**Required assemblies**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.Grid.Base.dll
</td>
<td>
Syncfusion.Grid.Base contains classes that contains fundamentals and base classes of GridControl.
</td>
</tr>
<tr>
<td>
Syncfusion.Grid.Windows.dll
</td>
<td>
Syncfusion.Grid.Windows contains classes that handles all UI operations, fundamentals and base classes of GridControl which are used in the XPToolBar control.
</td>
</tr>
<tr>
<td>
Syncfusion.Shared.Base.dll
</td>
<td>
Syncfusion.Shared.Base contains style related properties of XPToolBar and various editor controls.
</td>
</tr>
<tr>
<td>
Syncfusion.Shared.Windows.dll
</td>
<td>
Syncfusion.Shared.Windows contains style related properties of XPToolBar and various editor controls.
</td>
</tr>
<tr>
<td>
Syncfusion.Tools.Base.dll
</td>
<td>
Syncfusion.Tools.Base contains base class which used for XPToolBar control.
</td>
</tr>
<tr>
<td>
Syncfusion.Tools.Windows.dll
</td>
<td>
Syncfusion.Tools.Windows contains the class that handles all UI operations and contains helper class of XPToolBar control.
</td>
</tr>
</table>


## Installing NuGet Packages

To use XPToolBar control in Windows Forms application via nuget, the following packages should be installed.
 
<table>
<tr>
<td>{{'**S.No**'| markdownify }}
</td>
<td>{{'**Framework version**'| markdownify }}
</td>
<td>{{'**NuGet Packages**'| markdownify }}
</td>
</tr>
<tr>
<td> 1
</td>
<td> 2.0
</td>
<td> Syncfusion.Tools.Windows20
</td>
</tr>
<tr>
<td> 2
</td>
<td> 3.5
</td>
<td> Syncfusion.Tools.Windows35
</td>
</tr>
<tr>
<td> 3
</td>
<td> 4.0
</td>
<td> Syncfusion.Tools.Windows40
</td>
</tr>
<tr>
<td> 4
</td>
<td> 4.5
</td>
<td> Syncfusion.Tools.Windows45
</td>
</tr>
<tr>
<td> 5
</td>
<td> 4.5.1
</td>
<td>Syncfusion.Tools.Windows451
</td>
</tr>
<tr>
<td> 6
</td>
<td> 4.6
</td>
<td>Syncfusion.Tools.Windows46
</td>
</tr>
</table>
 
Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)


# Creating simple application with XPToolBar

You can create the Windows Forms application with XPToolBar control as follows:

1. [Creating project](#creating-the-project)
2. [Adding control via designer](#adding-control-via-designer)
3. [Adding control manually using code](#adding-control-manually-using-code)
4. [Supported BarItem types](#Supported-BarItem-types)
5. [Adding separators](#Adding-separators)

### Creating the project

Create a new Windows Forms project in the Visual Studio to display the XPToolBar with  functionalities.

## Adding control via Form designer

The XPToolBar control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

![](Adding-and-Filling-the-XPToolbar_images/XPToolbar-img1.png)

**Adding BarItems**

BarItems can be added to XPToolBar using `Items` collection in Smart Tags of XPToolBar control.

![](Adding-and-Filling-the-XPToolbar_images/XPToolbar-img3.png)

## Adding control manually using code

To add control manually in C#, follow the given steps:

**Step 1** - Add the following required assembly references to the project:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

**Step 2** - Include the namespaces **Syncfusion.Windows.Forms.Tools.XPMenus**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools.XPMenus;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools.XPMenus

{% endhighlight  %}

{% endtabs %} 

**Step 3** - Create `XPToolBar` control instance and add it to the form.

{% tabs %}

{% highlight C# %}

 XPToolBar xpToolBar1 = new XPToolBar();

this.Controls.Add(xpToolBar1);

{% endhighlight %}

{% highlight VB %}

Dim xpToolBar1 As XPToolBar = New XPToolBar()

Me.Controls.Add(xpToolBar1)

{% endhighlight %}

{% endtabs %}

**Adding BarItem**

Create an instance for required `BarItem` and add it to XPToolbar's Item collection.

{% tabs %}

{% highlight C# %}

ComboBoxBarItem comboBoxBarItem1 = new ComboBoxBarItem();
ParentBarItem parentBarItem1 = new ParentBarItem();

parentBarItem1.Text="parentBarItem1";

this.xpToolBar1.Bar.Items.AddRange(new BarItem[] {
            this.comboBoxBarItem1,
            this.parentBarItem1});

{% endhighlight %}

{% highlight VB %}

Dim comboBoxBarItem1 As ComboBoxBarItem = New ComboBoxBarItem()
Dim parentBarItem1 As ParentBarItem = New ParentBarItem()

Me.parentBarItem1.Text="parentBarItem1"

Me.xpToolBar1.Bar.Items.AddRange(New BarItem[] {
            Me.comboBoxBarItem1,
            Me.parentBarItem1})

{% endhighlight %}

{% endtabs %}

![](Adding-and-Filling-the-XPToolbar_images/XPToolbar-img2.png)

## Supported BarItem types

The various types of BarItems supported by XPToolBar are:

* **BarItem**

BarItem represents an individual item in a menu structure.

![](Adding-and-Filling-the-XPToolbar_images/XPToolbar-img5.png)

* **ParentBarItem**

ParentBarItems represents the submenu that can be dropped down. BarItems can be added to ParentBarItems using `Item` collection property.

![](Adding-and-Filling-the-XPToolbar_images/XPToolbar-img6.png)

* **DropDownBarItem**

DropDownBarItem represents SubMenu that will drop down a popup when clicked on it

![](Adding-and-Filling-the-XPToolbar_images/XPToolbar-img7.png)

* **ComboBoxBarItem**

ComboBoxBarItem represents a BarItem that provides the combo box functionality in the XPMenus.

![](Adding-and-Filling-the-XPToolbar_images/XPToolbar-img8.png)

* **StaticBarItem**

 StaticBarItem represents a BarItem that could be used as a label for an adjacent BarItem.

![](Adding-and-Filling-the-XPToolbar_images/XPToolbar-img11.png)

* **TextBoxBarItem**

TextBoxBarItem represents a BarItem that provides the TextBox functionality in the XPMenus.

![](Adding-and-Filling-the-XPToolbar_images/XPToolbar-img10.png)


## Adding separators

In the absence of a BarManager, you can add separators to the items by editing the XPToolBar.SeparatorIndices property list.

Property table

<table>
<tr>
<th>
XPToolBar property</th><th>
Description</th></tr>
<tr>
<td>
SeparatorIndices</td><td>
Specifies the Indices values after which the separator have to be placed in an XPToolbar.</td></tr>
</table>


{% tabs %}

{% highlight C# %}

this.xpToolBar1.SeparatorIndices.AddRange(new int[] {1, 2});

{% endhighlight  %}
{% highlight VB %}

Me.xpToolBar1.SeparatorIndices.AddRange(New Integer() {1, 2})

{% endhighlight  %}

{% endtabs %}

![](Adding-and-Filling-the-XPToolbar_images/XPToolbar-img4.png)


