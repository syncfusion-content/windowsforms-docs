---
layout: post
title: Getting Started with Windows Forms XPTaskBar | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms XPTaskBar control. Explore setup, features, examples, and customization options.
platform: windowsforms
control: XPTaskBar
documentation: ug
---
# Getting Started with Windows Forms XPTaskBar

This section describes how to add the `XPTaskBar` control in a Windows Forms application and gives an overview of its basic functionalities.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#xptaskbar) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.
 
Please find more details regarding how to install the NuGet packages in Windows Forms application in the below link:
 
[How to install NuGet packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)

To generate the license validated application, refer to the [licensing](https://help.syncfusion.com/windowsforms/licensing/overview) documentation.


## Creating simple application with XPTaskBar

You can create the Windows Forms application with XPTaskBar control as follows:

1. [Creating project](#creating-the-project)
2. [Adding control via designer](#adding-control-via-designer)
3. [Adding control manually using code](#adding-control-manually-using-code)

### Creating the project

Create a new Windows Forms project in the Visual Studio to display the XPTaskBar with its functionalities.

## Adding control via designer

The XPTaskBar control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

![Adding control via designer](Overview_images/XPTaskBar_Img1.png)

**Adding XPTaskBarBox**

To add XPTaskBarBox, click on `Add TaskBarBox` in Smart Tag of XPTaskBar in design view.

![Adding XPTaskBarBox](Overview_images/XPTaskBar_Img2.png)

**Adding XPTaskBarItems**

XPTaskBarItems can be added to XPTaskBarBox using `Items` collection, in Smart Tag of XPTaskBarBox in design view.

![Adding XPTaskBarItems](Overview_images/XPTaskBar_Img4.png)

## Adding control manually using code

To add control manually in C#, follow the given steps:

**Step 1** - Add the following required assembly references to the project:

        * Syncfusion.Grid.Base.dll
        * Syncfusion.Grid.Windows.dll
        * Syncfusion.Shared.Base.dll
        * Syncfusion.Shared.Windows.dll
        * Syncfusion.Tools.Base.dll
        * Syncfusion.Tools.Windows.dll

**Step 2** - Include the namespace **Syncfusion.Windows.Forms.Tools**.

{% capture codesnippet1 %}​
{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight  %}

{% endtabs %} 
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

**Step 3** - Create `XPTaskBar` control instance and add it to the form.

{% capture codesnippet2 %}​
{% tabs %}

{% highlight C# %}

XPTaskBar xpTaskBar1 = new XPTaskBar();

this.Controls.Add(xpTaskBar1);

{% endhighlight %}

{% highlight VB %}

Dim xpTaskBar1 As XPTaskBar = New XPTaskBar()

Me.Controls.Add(xpTaskBar1)

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

**Adding XPTaskBarBox**

Create an instance of the `XPTaskBarBox` class and add it to the XPTaskBar's controls collection.

{% tabs %}

{% highlight C# %}

XPTaskBarBox xpTaskBarBox1 = new XPTaskBarBox();
XPTaskBarBox xpTaskBarBox2 = new XPTaskBarBox();
XPTaskBarBox xpTaskBarBox3 = new XPTaskBarBox();

this.xpTaskBarBox1.Text = "xpTaskBarBox1";
this.xpTaskBarBox2.Text = "xpTaskBarBox2";
this.xpTaskBarBox3.Text = "xpTaskBarBox3";

this.xpTaskBar1.Controls.Add(this.xpTaskBarBox1);
this.xpTaskBar1.Controls.Add(this.xpTaskBarBox2);
this.xpTaskBar1.Controls.Add(this.xpTaskBarBox3);

{% endhighlight %}

{% highlight VB %}

Dim xpTaskBarBox1 As XPTaskBarBox = New XPTaskBarBox()
Dim xpTaskBarBox2 As XPTaskBarBox = New XPTaskBarBox()
Dim xpTaskBarBox3 As XPTaskBarBox = New XPTaskBarBox()

Me.xpTaskBarBox1.Text = "xpTaskBarBox1"
Me.xpTaskBarBox2.Text = "xpTaskBarBox2"
Me.xpTaskBarBox3.Text = "xpTaskBarBox3"

Me.xpTaskBar1.Controls.Add(Me.xpTaskBarBox1)
Me.xpTaskBar1.Controls.Add(Me.xpTaskBarBox2)
Me.xpTaskBar1.Controls.Add(Me.xpTaskBarBox3)

{% endhighlight %}

{% endtabs %}

![Adding XPTaskBarBox](Overview_images/XPTaskBar_Img3.png)

**Adding XPTaskBarItems**

XPTaskBarItems can be added to XPTaskBarBox using `Items` collection in XPTaskBarBox class. The [XPTaskBarItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarItem.html) constructor used below takes the item name, highlight color, image index and display text as arguments, in that order.

{% tabs %}

{% highlight C# %}

this.xpTaskBarBox1.Items.AddRange(new Syncfusion.Windows.Forms.Tools.XPTaskBarItem[] {
            new Syncfusion.Windows.Forms.Tools.XPTaskBarItem("XPTaskBarItem5", System.Drawing.Color.Empty, -1, "XPTaskBarItem5"),
            new Syncfusion.Windows.Forms.Tools.XPTaskBarItem("XPTaskBarItem6", System.Drawing.Color.Empty, -1, "XPTaskBarItem6")});

{% endhighlight %}

{% highlight VB %}

Me.xpTaskBarBox1.Items.AddRange(New Syncfusion.Windows.Forms.Tools.XPTaskBarItem[] {
            New Syncfusion.Windows.Forms.Tools.XPTaskBarItem("XPTaskBarItem5", System.Drawing.Color.Empty, -1, "XPTaskBarItem5"),
            New Syncfusion.Windows.Forms.Tools.XPTaskBarItem("XPTaskBarItem6", System.Drawing.Color.Empty, -1, "XPTaskBarItem6")})

{% endhighlight %}

{% endtabs %}

![Adding XPTaskBarItems](Overview_images/XPTaskBar_Img5.png)
