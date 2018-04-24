---
layout: post
title: Style | Windows Forms | Syncfusion
description: style
platform: windowsforms
control: GridRecordNavigation
documentation: ug
---

# Style

RecordNavigationControl supports visual styles such as Default, Metro. The style can be set using Style property. 

* Default
* Metro
* Office2016

The following code example allows you to set the style for the RecordNavigationControl.

{% tabs %}
{% highlight c# %}
this.recordNavigationControl1.Style = Syncfusion.Windows.Forms.Appearance.Metro;
{% endhighlight  %}
{% highlight vb %}
Me.recordNavigationControl1.Style = Syncfusion.Windows.Forms.Appearance.Metro
{% endhighlight  %}
{% endtabs %}



![](Style_images/Style_img1.png) 

{% tabs %}
{% highlight c# %}
//Applying Office 2016 Theme.
this.recordNavigationControl1.Style = Syncfusion.Windows.Forms.Appearance.Office2016;
this.recordNavigationControl1.GridOfficeScrollBars = OfficeScrollBars.Office2016;

//Applying Color Schemes of Office 2016 Theme
this.recordNavigationControl1.Office2016ScrollBarsColorScheme = ScrollBarOffice2016ColorScheme.Black;
{% endhighlight  %}
{% highlight vb %}
'Applying Office 2016 Theme.
Me.recordNavigationControl1.Style = Syncfusion.Windows.Forms.Appearance.Office2016
Me.recordNavigationControl1.GridOfficeScrollBars = OfficeScrollBars.Office2016

'Applying Color Schemes of Office 2016 Theme
Me.recordNavigationControl1.Office2016ScrollBarsColorScheme = ScrollBarOffice2016ColorScheme.Black
{% endhighlight  %}
{% endtabs %}

![](Style_images/Style_img2.png) 



