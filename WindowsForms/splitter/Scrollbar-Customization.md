---
layout: post
title: Scrollbar Customization in Windows Forms Splitter control | Syncfusion
description: Learn about Scrollbar Customization support in Syncfusion Windows Forms Splitter control and more details.
platform: windowsforms
control: Splitter  
documentation: ug
---

# Scrollbar Customization in Windows Forms Splitter

The appearance of the SplitterControl scrollbar can be customized by using the GridOfficeScrollBars property. The scrollbar can be customized to get the following style look and feel.

* Office2007
* Office2010
* Metro
* None


{% tabs %}

{% highlight C# %}

//Customizes the Scrollbar.

this.splitterControl1.GridOfficeScrollBars= OfficeScrollBars.Office2007;

{% endhighlight %}

{% highlight VB %}

'Customizes the Scrollbar

Me.splitterControl1.GridOfficeScrollBars= OfficeScrollBars.Office2007

{% endhighlight %}

{% endtabs %}
![Scrollbar with customization](getting-started_images/SplitterControl_ScrollbBarCustomization.png)
