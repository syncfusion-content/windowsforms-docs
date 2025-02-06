---
layout: post
title: Drop Down Selection in Windows Forms NavigationView | Syncfusion®
description: Learn about Drop Down Selection support in Syncfusion® Windows Forms NavigationView control and more details.
platform: WindowsForms
control: Navigation View 
documentation: ug
---

# Drop Down Selection in Windows Forms NavigationView

NavigationView control provides drop-down selection support.

Each folder that is navigated through, is shown in the Address Bar, separated by a Forward Arrow. Clicking on this arrow, will show a drop-down list, displaying all the folders directly below the one you have opened.

![Drop-down selection](Drop-Down-Selection_images/Drop-Down-Selection_img1.jpeg)



## Images support

NavigationView control provides support for adding images to both Parent Bars and Child Bars. It displays the image of the Selected Bar to the left of the control.

{% tabs %}

{% highlight C# %}



navigationView4.ImageList = this.imageList1;

root.ImageIndex = 0;

ChildBar1.ImageIndex = 1;

ChildBar2.ImageIndex = 1;

{% endhighlight %}

{% highlight VB %}



navigationView4.ImageList = Me.imageList1

root.ImageIndex = 0

ChildBar1.ImageIndex = 1

ChildBar2.ImageIndex = 1

{% endhighlight %}

{% endtabs %}

![Images support](Drop-Down-Selection_images/Drop-Down-Selection_img2.jpeg) 



## Tracking the previously selected items using drop-down button

You can trace the previously selected locations by clicking on the Drop-Down button of the NavigationView.

![Tracking the previously selected items](Drop-Down-Selection_images/Drop-Down-Selection_img3.jpeg) 



## Custom button collection

You can add one or more custom buttons to the NavigationView through designer and code.

* Adding Custom Button Through Designer

  You can add custom buttons to the NavigationView using the CustomButton Collection Editor.

  ![Custom button collection](Drop-Down-Selection_images/Drop-Down-Selection_img4.jpeg)



* Adding Custom Button Through Code

{% tabs %}

{% highlight C# %}



Syncfusion.Windows.Forms.Tools.Navigation.CustomButton customButton = new Syncfusion.Windows.Forms.Tools.Navigation.CustomButton();

customButton.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;

customButton.Name = "customButton";

Bitmap imp = new Bitmap("..//..//Search.gif");

customButton.Image = imp;

navigationView4.Controls.Add(customButton);

{% endhighlight %}

{% highlight VB %}



Dim customButton As Syncfusion.Windows.Forms.Tools.Navigation.CustomButton = New Syncfusion.Windows.Forms.Tools.Navigation.CustomButton()

customButton.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007

customButton.Name = "customButton"

Dim imp As Bitmap = New Bitmap("..//..//Search.gif")

customButton.Image = imp

navigationView4.Controls.Add(customButton)

{% endhighlight %}

{% endtabs %}

![Custom button collection](Drop-Down-Selection_images/Drop-Down-Selection_img5.jpeg) 

