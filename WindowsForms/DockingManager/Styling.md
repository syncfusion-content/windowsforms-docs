---
layout: post
title: Styling | WindowsForms | Syncfusion
description: styling
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# Styling

The UI for Dock, Float, and AutoHide windows of DockingManager can be changed using different Style.

## Visual styles

VisualStyles provides rich and professional look and feel UI for the Dock windows. Some of the available VisualStyles are as follows:

* Default
* Metro
* Office2003
* Office2007
* Office2007Outlook
* Office2010
* OfficeXP
* VS2003
* VS2005
* Office2016Colorful
* Office2016White
* Office2016DarkGray
* Office2016Black

The visual style can be applied for the DockingManager using `VisualStyle` property.

{% tabs %}

{% highlight C# %}

//Set the visual Style of the docked controls

this.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2003;

{% endhighlight %}


{% highlight VB %}

'Set the visual Style of the docked controls

Me.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2003;
 
{% endhighlight %}

{% endtabs %}


* Metro 


![](Styling_images/Styling_img1.jpeg)


* Default 

![](Styling_images/Styling_img2.jpeg)


* Office2003

![](Styling_images/Styling_img3.jpeg)


* Office2007

![](Styling_images/Styling_img4.jpeg)


* Office2007Outlook

![](Styling_images/Styling_img5.jpeg)


* Office2010

![](Styling_images/Styling_img6.jpeg)


* OfficeXP

![](Styling_images/Styling_img7.jpeg)


* VS2005

![](Styling_images/Styling_img8.jpeg)


* VS2010

![](Styling_images/Styling_img9.jpeg)

**Office2016Colorful**

This option helps to set the Office2016Colorful style.

{% tabs %}

{% highlight C# %}

// Office2016Colorful

this.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful;

{% endhighlight %}

{% highlight VB %}

'Office2016Colorful

Me.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful

{%endhighlight %}

{% endtabs %}

 ![](Styling_images/Styling_img16.png)

**Office2016White**

This option helps to set the Office2016White style.

{% tabs %}

{% highlight C# %}

// Office2016White

this.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016White;

{% endhighlight %}

{% highlight VB %}

'Office2016White

Me.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016White

{%endhighlight %}

{% endtabs %}

 ![](Styling_images/Styling_img17.png)

**Office2016DarkGray**

This option helps to set the Office2016DarkGray style.

{% tabs %}

{% highlight C# %}

// Office2016DarkGray

this.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray;

{% endhighlight %}

{% highlight VB %}

'Office2016DarkGray

Me.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray

{%endhighlight %}

{% endtabs %}

 ![](Styling_images/Styling_img18.png)

**Office2016Black**

This option helps to set the Office2016Black style.

{% tabs %}

{% highlight C# %}

// Office2016Black

this.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Black;

{% endhighlight %}

{% highlight VB %}

'Office2016Black

Me.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Black

{%endhighlight %}

{% endtabs %}

 ![](Styling_images/Styling_img19.png)

## Office2007 color schemes

DockingManager supports all the three color schemes in Office2007 visual style. This can be controlled using `Office2007Theme` property.

{% tabs %}

{% highlight C# %}


this.dockingManager.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

{% endhighlight %}


{% highlight VB %}


Me.dockingManager.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Silver

{% endhighlight %}

{% endtabs %}


 ![](Styling_images/Styling_img10.png)

## Custom color schemes

Custom colors can also be applied for Office2007 style, using the below code snippet.

{% tabs %}

{% highlight C# %}


dockingManager.Office2007Theme = Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Red);

{% endhighlight %}


{% highlight VB %}

dockingManager.Office2007Theme = Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Red);

{% endhighlight %}

{% endtabs %}

 ![](Styling_images/Styling_img15.png)
