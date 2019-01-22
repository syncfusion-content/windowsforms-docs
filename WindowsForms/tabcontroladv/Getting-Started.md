---
layout: post
title: Getting-Started | TabControlAdv | WindowsForms | Syncfusion
description: How to add TabControlAdv and enable its basic features.
platform: WindowsForms
control: TabControlAdv 
documentation: ug
---

# Getting started

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#tabcontroladv) section to get the list of assemblies or NuGet package that needs to be added as a reference to use the control in any application.

You can find more details about installing the NuGet packages in a Windows Forms application in the following link:

[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

## Create a simple application with TabControlAdv

You can create a Windows Forms application with TabControlAdv using the following steps:

## Create a project

Create a new Windows Forms project in Visual Studio to display the TabControlAdv with its functionalities.

## Add control through designer

The TabControlAdv control can be added to an application by dragging it from the toolbox to a designer view. The following assembly references are added automatically:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

![wf tab control added by designer](GettingStarted_images/wf-tabcontrol-added-by-designer.png)

## Add tabs

The tabs can be added to TabControlAdv in the following ways:

**1.** Right-click the TabControlAdv and select the Add Tab option to add the TabPages to TabControlAdv through designer.

![tabs added using add tab option](GettingStarted_images/AddingTabs.png)

**2.** Add tabs using [TabPagesCollection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv~TabPages.html) in smart tags of TabControlAdv.

![tabs added using tab pages collection](GettingStarted_images/wf-tab-page-added-by-designer.png)

## Add controls in tab pages

You can add any control in tab page.

![tab page has calendar control](GettingStarted_images/calendar-control-added-in-tabpage.png)

## Add control manually in code

To add the control manually in C#, follow the given steps:

**1.** Add the following required assembly references to the project: 

  * Syncfusion.Grid.Base.dll
  * Syncfusion.Grid.Windows.dll
  * Syncfusion.Shared.Base.dll
  * Syncfusion.Shared.Windows.dll
  * Syncfusion.Tools.Base.dll
  * Syncfusion.Tools.Windows.dll

**2.** Include the **Syncfusion.Windows.Forms.Tools namespace**.

  {% tabs %}
  {% highlight C# %}
  using Syncfusion.Windows.Forms.Tools;
  {% endhighlight %}
  {% highlight VB %}
  Imports Syncfusion.Windows.Forms.Tools
  {% endhighlight %}
  {% endtabs %}

**3.** Create a TabControlAdv instance, and add it to the window.

  {% tabs %}
  {% highlight C# %}
  TabControlAdv tabControlAdv1 = new TabControlAdv();
  this.Controls.Add(tabControlAdv1);
  {% endhighlight %}
  {% highlight VB %}
  Dim tabControlAdv1 As TabControlAdv = New TabControlAdv()
  Me.Controls.Add(tabControlAdv1)
  {% endhighlight %}
  {% endtabs %}

## Add tabs

Create an instance of TabPageAdv, and add it to the TabControlAdv.

{% tabs %}
{% highlight C# %}
TabPageAdv tabPageAdv1 = new TabPageAdv();
this.tabPageAdv1.Text = "tabPageAdv1";
this.tabControlAdv1.Controls.Add(this.tabPageAdv1);
{% endhighlight %}
{% highlight VB %}
Dim tabPageAdv1 As TabPageAdv = New TabPageAdv()
Me.tabControlAdv1.Controls.Add(Me.tabPageAdv1)
Me.tabPageAdv1.Text = "tabPageAdv1"
{% endhighlight %}
{% endtabs %}

![tab page added in tabcontrol](GettingStarted_images/tabpage.png)

## Add controls in tab pages

You can add any control in TabPageAdv. Create an instance of the control, and add it to TabPageAdv.

{% tabs %}
{% highlight C# %}
SfCalendar calendar = new SfCalendar();
tabPageAdv1.Controls.Add(calendar);
{% endhighlight %}
{% highlight VB %}
Dim calendar As New SfCalendar()
tabPageAdv1.Controls.Add(calendar)
{% endhighlight %}
{% endtabs %}

![calendar control added in tab page](GettingStarted_images/calendar-control-added-in-tabpage-new.png)

## Tab placement

TabControlAdv provides an option to display tabs horizontally at the top or bottom and vertically at the left or right by setting the [Alignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv~Alignment.html) property of TabControlAdv.

{% tabs %}
{% highlight C# %}
//Tabs placement
tabControlAdv1.Alignment = TabAlignment.Bottom;
{% endhighlight %}
{% highlight VB %}
'Tabs placement
tabControlAdv1.Alignment = TabAlignment.Bottom
{% endhighlight %}
{% endtabs %}

**Left**

![tabcontrol left alignment](GettingStarted_images/tabcontrol-left-alignment.png)

**Right**

![tabcontrol right alignment](GettingStarted_images/tabcontrol-right-alignment.png)

**Top**

![tabcontrol top alignment](GettingStarted_images/tabcontrol-top-alignment.png)

**Bottom**

![tabcontrol bottom alignment](GettingStarted_images/tabcontrol-bottom-alignment.png)

## Edit header at run time

You can rename or edit the header at run time by enabling the [LabelEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv~LabelEdit.html) property of TabControlAdv. 

{% tabs %}
{% highlight C# %}
// Renaming header text.
this.tabControlAdv.LabelEdit = true;
{% endhighlight %}
{% highlight VB %}
' Renaming header text.
Me.tabControlAdv.LabelEdit = True
{% endhighlight %}
{% endtabs %}

![tabcontrol header edit](GettingStarted_images/tabcontrol-header-edit-option.png)

## Multi-line tabs

You can arrange the tabs in multiple rows by enabling the [Multiline](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv~Multiline.html) property of TabControlAdv.

{% tabs %}
{% highlight C# %}
//Multiline tabs
tabControlAdv1.Multiline = true;
{% endhighlight %}
{% highlight VB %}
'Multiline tabs
tabControlAdv1.Multiline = True
{% endhighlight %}
{% endtabs %}

![tabcontrol multi tabs](GettingStarted_images/tabcontrol-multi-tabs.png)

