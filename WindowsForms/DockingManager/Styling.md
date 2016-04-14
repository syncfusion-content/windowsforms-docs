---
layout: post
title: Styling | WindowsForms | Syncfusion
description: Styling
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# Styling 

The UI for Dock, Float and AutoHide windows of DockingManager can be changed using different Style.

## Visual Styles

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

Code snippet

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


## Office2007 Color Schemes

DockingManager supports all the three color schemes in Office2007 visual style. This can be controlled using `Office2007Theme` property. 

{% tabs %}

{% highlight C# %}


this.dockingManager1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

{% endhighlight %}


{% highlight VB %}


Me.dockingManager1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Silver

{% endhighlight %}

{% endtabs %}


 ![](Styling_images/Styling_img10.png)

## Custom Color Schemes

Custom colors can also be applied for Office2007 style, using the below code snippet.

{% tabs %}

{% highlight C# %}


dockingManager1.Office2007Theme = Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Red);

{% endhighlight %}


{% highlight VB %}

dockingManager1.Office2007Theme = Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Red);

{% endhighlight %}

{% endtabs %}

 ![](Styling_images/Styling_img15.png)



## Windows Color Schemes

Windows color schemes like Blue, Silver and OliveGreen can be applied to the controls when Default or Office2003 styles are selected. XP themes can be enabled for the docked controls using `ThemesEnabled` property.

{% tabs %}

{% highlight C# %}

this.dockingManager1.ThemesEnabled = true;

{% endhighlight %}


{% highlight VB %}

Me.dockingManager1.ThemesEnabled = True

{% endhighlight %}

{% endtabs %}

 ![](Styling_images/Styling_img11.png)







