---
layout: post
title: Concept-and-Features
description: concept and features
platform: windowsforms
control: Splitter  
documentation: ug
---

# Concept and Features

## Scrollbar customization

The appearance of the SplitterControl scrollbar can be customized by using the GridOfficeScrollBars property. The scrollbar can be customized to get the following style look and feel.

* Office2007
* Office2010
* Metro
* None

The following code example illustrates this.

{% highlight c# %}

//Customizes the Scrollbar.

this.splitterControl1.GridOfficeScrollBars= OfficeScrollBars.Office2007;

{% endhighlight %}

{% highlight vbnet %}

'Customizes the Scrollbar

Me.splitterControl1.GridOfficeScrollBars= OfficeScrollBars.Office2007

{% endhighlight %}

## Hiding the Scrollbars

The Horizontal and Vertical scrollbars in SplitterControl can be hidden by using the ShowHorizontalScrollBar and ShowVerticalScrollBar properties.

The following code example illustrates this.

{% highlight c# %}

this.splitterControl1.ShowHorizontalScrollBar = false;

this.splitterControl1.ShowVerticalScrollBar = false;

{% endhighlight %}

{% highlight vbnet %}

Me.splitterControl1.ShowHorizontalScrollBar = False

Me.splitterControl1.ShowVerticalScrollBar = False

{% endhighlight %}

## Sizing Grip

The Sizing Grip appearance is customized by using ShowSizeGrip property in SplitterControl. The following code example illustrates this.

{% highlight c# %}



this.splitterControl1.ShowSizeGrip = true;

{% endhighlight %}

{% highlight vbnet %}

Me.splitterControl1.ShowSizeGrip = False

{% endhighlight %}

## Splitter Behavior

The splitter in the SplitterControl can be supported with Row splitter and Column splitter or both.

* None
* SplitColumns
* SplitRows
* Both

The following code example illustrates this.

{% highlight c# %}

this.splitterControl1.SplitBars = DynamicSplitBars.SplitColumns;

{% endhighlight %}

{% highlight vbnet %}


Me.splitterControl1.SplitBars = DynamicSplitBars.SplitColumns

{% endhighlight %}

### Style

SplitterControl supports visual styles such as Default and Metro. The styles can be set by using Style property. 

* Default
* Metro

The following code example allows you to set the style for the SplitterControl.

{% highlight c# %}

this.splitterControl1.Style = Syncfusion.Windows.Forms.Appearance.Metro;

{% endhighlight %}

{% highlight vbnet %}

Me.splitterControl1.Style = Syncfusion.Windows.Forms.Appearance.Metro

{% endhighlight %}

 ![](Concept-and-Features_images/Concept-and-Features_img1.png)



