---
layout: post
title: Creating a Simple Layout | Windows Forms | Syncfusion
description: creating a simple layout
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# Creating a Simple Layout

 This section discusses how a simple layout can be created using Layout Managers, which are discussed in the following topics.

{% seealso %}

[Overview](/windowsforms/layoutmanagers/overview)

{% endseealso %}

## Through Designer

This topic discusses how to create a simple layout for aligning Child controls through designer.

### Adding Child Controls

* Populate the form with the necessary Child controls (here, we are using Buttons), by dragging and dropping them from the toolbox.

![](Overview_images/Overview_img3.jpeg)



### Adding Layout Managers

The Layout Manager can be added before or after adding the Child controls to the Container control.

* The Layout Manager can be added to the form by just dragging and dropping the appropriate Layout Manager (for ex: BorderLayout) from the toolbox onto your form, which will be then be automatically added to the component tray.



![](Overview_images/Overview_img4.jpeg) 



### Setting Container Control

* You can optionally drop the Child controls onto the Container control that you want to layout and the design time will automatically set the ContainerControl property in the Layout Manager.
* Form, Panel or any control that inherits the Container control can be set as a Container control for the Child controls that are added (here, form is set as the Container control).

N> The FlowLayout, CardLayout and GridLayout controls automatically arrange the Child controls of the Container control in a specific manner. When new controls are added, the Layout Manager will ensure that the old layout is not broken and that the existing controls are not messed up.

### Configuring Child Controls

For BorderLayout and GridBagLayout, it is necessary to configure the Child controls by changing their extended properties via the property grid in the designer so that the Child controls can be aligned properly.

![](Overview_images/Overview_img6.jpeg) 


### Configuring Layout Manager

You can then configure the Layout Manager by changing its properties via the property grid in the designer.

{% seealso %}

[Through Code](#through-code)

{% endseealso %}

## Through Code

The following steps will help you to create a simple layout for button controls, via code. Here the programmatic creation of the BorderLayout is discussed. Similarly other layouts can also be created.

* Create a new Visual C# or VB.NET application in Visual Studio .NET.
* Add the Syncfusion.Shared.Base and Syncfusion.Tools.Windows assemblies to your application.
* Include the required namespace.




{% highlight c# %}
using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}



{% highlight vbnet %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

* Create variables for the Child controls (Buttons) and Layout Manager (Border Layout).



{% highlight c# %}

private System.Windows.Forms.Button btn1;

private System.Windows.Forms.Button btn2;

private System.Windows.Forms.Button btn3;

private System.Windows.Forms.Button btn4;

private System.Windows.Forms.Button btn5;

private Syncfusion.Windows.Forms.Tools.BorderLayout brd;


{% endhighlight %}


{% highlight vbnet %}

Private btn1 As System.Windows.Forms.Button

Private btn2 As System.Windows.Forms.Button

Private btn3 As System.Windows.Forms.Button

Private btn4 As System.Windows.Forms.Button

Private btn5 As System.Windows.Forms.Button

Private brd As Syncfusion.Windows.Forms.Tools.BorderLayout

{% endhighlight %}

* Declare instances for the Child controls (Buttons).



{% highlight c# %}

btn1 = new Button();

btn2 = new Button();

btn3 = new Button();

btn4 = new Button();

btn5 = new Button();

{% endhighlight %}



{% highlight vbnet %}

btn1 = New Button()

btn2 = New Button()

btn3 = New Button()

btn4 = New Button()

btn5 = New Button()

{% endhighlight %}

* Add the Child controls (Buttons) to the form.


{% highlight c# %}


this.Controls.AddRange(new Button[] {btn1,btn2,btn3,btn4,btn5});

{% endhighlight %}



{% highlight vbnet %}

Me.Controls.AddRange(New Button() {btn1,btn2,btn3,btn4,btn5})

{% endhighlight %}

* Declare an instance for the Layout Manager (Border Layout).



{% highlight c# %}

brd = new Syncfusion.Windows.Forms.Tools.BorderLayout();

{% endhighlight %}



{% highlight vbnet %}

brd = New Syncfusion.Windows.Forms.Tools.BorderLayout()

{% endhighlight %}

* Set the Container control for the Layout Manager (Border Layout).



{% highlight c# %}

this.brd.ContainerControl = this;

// To set the container control for a panel.

// this.brd.ContainerControl = this.panel1;

{% endhighlight %}



{% highlight vbnet %}

Me.brd.ContainerControl = Me

// To set the container control for a panel.

// Me.brd.ContainerControl = Me.panel1;

{% endhighlight %}

* Set the margin between the client rectangle and the layout rectangle.


{% highlight c# %}


this.brd.BottomMargin = 20;

this.brd.HorzFarMargin = 20;

this.brd.HorzNearMargin = 20;

this.brd.TopMargin = 20;

{% endhighlight %}


{% highlight vbnet %}


Me.brd.BottomMargin = 20

Me.brd.HorzFarMargin = 20

Me.brd.HorzNearMargin = 20

Me.brd.TopMargin = 20

{% endhighlight %}

* Set the spacing between the layout border and the components.



{% highlight c# %}

this.brd.HGap = 20;

this.brd.VGap = 20;

{% endhighlight %}



{% highlight vbnet %}

Me.brd.HGap = 20

Me.brd.VGap = 20

{% endhighlight %}

* Set the text and border position for the Child controls (Buttons).



{% highlight c# %}

this.btn1.Text = "One";

this.btn2.Text = "Two";

this.btn3.Text = "Three";

this.btn4.Text = "Four";

this.btn5.Text = "Five";

this.brd.SetPosition(this.btn1,Syncfusion.Windows.Forms.Tools.BorderPosition.North);

this.brd.SetPosition(this.btn2,Syncfusion.Windows.Forms.Tools.BorderPosition.South);

this.brd.SetPosition(this.btn3,Syncfusion.Windows.Forms.Tools.BorderPosition.East);

this.brd.SetPosition(this.btn4,Syncfusion.Windows.Forms.Tools.BorderPosition.West);

this.brd.SetPosition(this.btn5,Syncfusion.Windows.Forms.Tools.BorderPosition.Center);

{% endhighlight %}


{% highlight vbnet %}


Me.btn1.Text = "One"

Me.btn2.Text = "Two"

Me.btn3.Text = "Three"

Me.btn4.Text = "Four"

Me.btn5.Text = "Five"

Me.brd.SetPosition(Me.btn1,Syncfusion.Windows.Forms.Tools.BorderPosition.North)

Me.brd.SetPosition(Me.btn2,Syncfusion.Windows.Forms.Tools.BorderPosition.South)

Me.brd.SetPosition(Me.btn3,Syncfusion.Windows.Forms.Tools.BorderPosition.East)

Me.brd.SetPosition(Me.btn4,Syncfusion.Windows.Forms.Tools.BorderPosition.West)

Me.brd.SetPosition(Me.btn5,Syncfusion.Windows.Forms.Tools.BorderPosition.Center)

{% endhighlight  %}

![](Overview_images/Overview_img7.jpeg) 



{% seealso %}

[Through Designer](#through-designer)

{% endseealso %}