---
layout: post
title: Style in Windows Forms GridRecordNavigationControl | Syncfusion®
description: Learn about Style support in Syncfusion® Windows Forms GridRecordNavigationControl, its elements and more details.
platform: windowsforms
control: GridRecordNavigation
documentation: ug
---

# Style in Windows Forms GridRecordNavigationControl

The RecordNavigationControl supports Visual Styles like Default, Metro, and Office2016 by using the Style property. 

{% tabs %}
{% highlight c# %}
this.recordNavigationControl1.Style = Syncfusion.Windows.Forms.Appearance.Metro;
{% endhighlight  %}
{% highlight vb %}
Me.recordNavigationControl1.Style = Syncfusion.Windows.Forms.Appearance.Metro
{% endhighlight  %}
{% endtabs %}

![Style_img1](Style_images/Style_img1.png) 

{% tabs %}
{% highlight c# %}
//Applying Office 2016 Theme.
this.recordNavigationControl1.Style = Syncfusion.Windows.Forms.Appearance.Office2016;
this.recordNavigationControl1.GridOfficeScrollBars = OfficeScrollBars.Office2016;

//Applying color schemes of Office 2016 theme
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

![Style_img2](Style_images/Style_img2.png) 
