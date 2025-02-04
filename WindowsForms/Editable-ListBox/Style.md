---
layout: post
title: Style in Windows Forms Editable ListBox control | Syncfusion®
description: Learn about Style support in Syncfusion® Windows Forms Editable ListBox (EditableList) control and more details.
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Style in Windows Forms Editable ListBox (EditableList)

EditableList supports visual styles such as Default, Metro, Office2016. The style can be set using Style property. 

The following code example allows you to set the style for the EditableList.

{% highlight c# %}

this.editableList1.Style = Syncfusion.Windows.Forms.Appearance.Office2016;

{% endhighlight %}

{% highlight vbnet %}

Me.editableList1.Style = Syncfusion.Windows.Forms.Appearance.Office2016

{% endhighlight %}

![Style_img3](Style_images/Style_img3.png)

The Office2016 Style has following Color Schemes

* Colorful
* White
* DarkGray
* Black

The following code example allows you to set the Color Schemes for the Office 2016 Theme.

{% highlight c# %}

this.editableList1.Office2016ColorScheme = ScrollBarOffice2016ColorScheme.Colorful;

{% endhighlight %}

{% highlight vbnet %}

Me.editableList1.Office2016ColorScheme = ScrollBarOffice2016ColorScheme.Colorful

{% endhighlight %}


![Style_img2](Style_images/Style_img2.png)



