---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: Creating FontListBox
platform: WindowsForms
control: FontListBox
documentation: ug
---

# Getting Started

This section briefly describes how to create a new Windows Forms project in Visual Studio and add **FontListBox** with it’s basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#fontlistbox) section to get the list of assemblies or NuGet package details which needs to be added as reference to use the control in any application.

[Click here](https://help.syncfusion.com/windowsforms/nuget-packages) to find more details on how to install nuget packages in Windows Forms application.

## Adding the FontListBox control via designer

The **FontListBox** control can be added through designer by following steps.

1) Create a new Windows Forms application in Visual Studio.

2) The **FontListBox** control can be added to an application by dragging it from the toolbox to design view. The following dependent assemblies will be added automatically.

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows

 ![Drag and drop FontListBox from toolbox](Overview_images/Overview_img577.jpeg) 


## Adding the FontListBox control via code

The following steps illustrate how to create an **FontListBox** control programmatically:

1) Create C# or VB application via Visual Studio.

2) Add the following assembly reference to the project.

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows

3) Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools
 
{% endhighlight %}
{% endtabs %}

4) Create an instances of **FontListBox** control. Specify its size and add it to the Form.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.FontListBox fontListBox1;
this.fontListBox1=new Syncfusion.Windows.Forms.Tools.FontListBox();
this.fontListBox1.Size = new System.Drawing.Size(160, 94);
this.Controls.Add(this.fontListBox1);

{% endhighlight %}

{% highlight vb %}

Private fontListBox1 As Syncfusion.Windows.Forms.Tools.FontListBox
Me.fontListBox1 = New Syncfusion.Windows.Forms.Tools.FontListBox()
Me.fontListBox1.Size = New System.Drawing.Size(160, 94)
Me.Controls.Add(Me.fontListBox1)

{% endhighlight %}
{% endtabs %}

![Windows Forms FontListBox showing](Overview_images/Overview_img578.jpeg)


## Selection

At run time, the items in the **FontListBox** can be selected, based on the selection mode specified in `SelectionMode` property. Selection can be made using mouse as well as using keyboard.

The options are,

* One
* MultiSimple
* MultiExtended

{% tabs %}

{% highlight c# %}

this.fontListBox1.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;

{% endhighlight %}

{% highlight vb %}

Me.fontListBox1.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended

{% endhighlight %}

{% endtabs %}

![Windows Forms FontListBox showing different selection of font list](Overview_images/Overview_img579.jpeg)
