---
layout: post
title: Getting Started with Windows Forms Tabbed Form | Syncfusion
description: Learn here about getting started with Syncfusion® Windows Forms Tabbed Form (SfTabbedForm) control, its elements and more details.
platform: WindowsForms
control: SfTabbedForm
documentation: ug
---

# Getting Started with Windows Forms Tabbed Form (SfTabbedForm)

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sftabbedform) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.

## Converting standard form into SfTabbedForm

The default form can be changed into `SfTabbedForm` by following the given steps:

1. Create a new Windows Forms application in Visual Studio and refer to the `Syncfusion.Tools.WinForms` assembly.

2. Include the following namespaces to the directives list.

{% capture codesnippet1 %}​
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

3. Change the base class of your form from `System.Windows.Forms.Form` to `SfTabbedForm`.

{% capture codesnippet2 %}​
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
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

## Loading TabbedFormControl to TabbedForm

The `TabbedFormControl` provides the tabbed user interface to the `TabbedForm`. The `TabbedFormControl` should be added to the form to have the tabbed user interface. The control can be loaded to form using the following code.

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


## Adding tabs to TabbedForm

To add tabs to form, create an instance of [TabPageAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabPageAdv.html) and add it to the tabs collection of the `TabbedFormControl`.

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


![Winforms showing the added tabs in tabbed form](Getting-Started_images/Getting-Started_img1.png)

## Show tabs below the title bar

By default, the tabs will be extended to title bar. To avoid extending the tabs into title bar, disable the `SfTabbedForm.ExtendTabsToTitleBar` property.

{% tabs %}
{% highlight c# %}
this.ExtendTabsToTitleBar = false;
{% endhighlight %}
{% highlight vb %}
Me.ExtendTabsToTitleBar = False
{% endhighlight %}
{% endtabs %}


![WinForms showing the tabs below the title bar in tabbed form](Getting-Started_images/Getting-Started_img2.png)

