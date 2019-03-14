---
layout: post
title: Getting Started| TabbedForm | WindowsForms | Syncfusion
description: Getting Started
platform: WindowsForms
control: SfTabbedForm
documentation: ug
---

# Getting Started

## Assembly Deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sftabbedform) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application. 

## Converting Standard Form into SfTabbedForm

The default form can be changed into `SfTabbedForm` by the following steps:

1) Create a new Windows Forms Application in Visual Studio and refer to the `Syncfusion.Tools.WinForms` assembly.

2) Include the following namespace to the directives list.

{% tabs %}
{% highlight c# %}
using Syncfusion.Windows.Forms.Tools;
{% endhighlight %}
{% highlight vb %}
Imports Syncfusion.Windows.Forms.Tools
{% endhighlight %}
{% endtabs %}


3) Change the base class of your form from `System.Windows.Forms.Form` to `SfTabbedForm`.


{% tabs %}
{% highlight c# %}
public partial class Form1 : SfTabbedForm
{
    public Form1()
    {
        InitializeComponent();
    }
}
{% endhighlight %}
{% highlight vb %}
Partial Public Class Form1
	Inherits SfTabbedForm
	Public Sub New()
		InitializeComponent()
	End Sub
End Class
{% endhighlight %}
{% endtabs %}


## Loading TabbedFormControl to TabbedForm

`TabbedFormControl` provides the tabbed user interface to the `TabbedForm`. `TabbedFormControl` should be added to the form to have tabbed user interface. The control can be loaded to form using the following code.

{% tabs %}
{% highlight c# %}
SfTabbedFormControl tabbedFormControl = new SfTabbedFormControl();
this.Controls.Add(tabbedFormControl);
this.TabbedFormControl = tabbedFormControl;
{% endhighlight %}
{% highlight vb %}
Dim tabbedFormControl As New SfTabbedFormControl()
Me.Controls.Add(tabbedFormControl)
Me.TabbedFormControl = tabbedFormControl
{% endhighlight %}
{% endtabs %}


## Adding Tabs to TabbedForm

To add Tabs to the form create an instance of [TabPageAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabPageAdv.html) and add it to the Tabs collection of the `TabbedFormControl`.

{% tabs %}
{% highlight c# %}
TabPageAdv tabPageAdv1 = new TabPageAdv();
TabPageAdv tabPageAdv2 = new TabPageAdv();
SfTabbedFormControl tabbedFormControl = new SfTabbedFormControl();
this.tabPageAdv1.Text = "Document1";
this.tabPageAdv2.Text = "Document2";
tabbedFormControl.Tabs.Add(tabPageAdv1);
tabbedFormControl.Tabs.Add(tabPageAdv2);
this.Controls.Add(tabbedFormControl);
this.TabbedFormControl = tabbedFormControl;
{% endhighlight %}
{% highlight vb %}
Dim tabPageAdv1 As New TabPageAdv()
Dim tabPageAdv2 As New TabPageAdv()
Dim tabbedFormControl As New SfTabbedFormControl()
Me.tabPageAdv1.Text = "Document1"
Me.tabPageAdv2.Text = "Document2"
tabbedFormControl.Tabs.Add(tabPageAdv1)
tabbedFormControl.Tabs.Add(tabPageAdv2)
Me.Controls.Add(tabbedFormControl)
Me.TabbedFormControl = tabbedFormControl
{% endhighlight %}
{% endtabs %}


![tabbed form](Getting-Started_images/Getting-Started_img1.png)

## Show Tabs below TitleBar of the Form 

By default, the tabs will be extended to title bar. To avoid extending the tabs into title bar, disable the `SfTabbedForm.ExtendTabsToTitleBar` property.

{% tabs %}
{% highlight c# %}
this.ExtendTabsToTitleBar = false;
{% endhighlight %}
{% highlight vb %}
Me.ExtendTabsToTitleBar = False
{% endhighlight %}
{% endtabs %}


![tabbed form](Getting-Started_images/Getting-Started_img2.png)

