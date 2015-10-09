---
layout: post
title: Drop-Down-Selection | WindowsForms | Syncfusion
description: drop-down selection
platform: WindowsForms
control: Navigation View 
documentation: ug
---

# Drop-Down Selection

NavigationView control provides drop-down selection support.

Each folder that is navigated through, is shown in the Address Bar, separated by a Forward Arrow. Clicking on this arrow, will show a drop-down list, displaying all the folders directly below the one you have opened.

![](Drop-Down-Selection_images/Drop-Down-Selection_img1.jpeg) 



## Images Support

NavigationView control provides support for adding images to both Parent Bars and Child Bars. It displays the image of the Selected Bar to the left of the control.

{% highlight c# %}



navigationView4.ImageList = this.imageList1;

Rootbar.ImageIndex = 0;

ChildBar1.ImageIndex = 1;

ChildBar2.ImageIndex = 1;

{% endhighlight %}

{% highlight vbnet %}



navigationView4.ImageList = Me.imageList1

Rootbar.ImageIndex = 0

ChildBar1.ImageIndex = 1

ChildBar2.ImageIndex = 1

{% endhighlight %}

The following illustration shows the NavigationView with Bar Images.

![](Drop-Down-Selection_images/Drop-Down-Selection_img2.jpeg) 



## Tracking the Previously Selected Items using DropDown Button

You can trace the previously selected locations by clicking on the Drop-Down button of the NavigationView.

The following illustration shows the NavigationView displaying Previously Selected Items.

![](Drop-Down-Selection_images/Drop-Down-Selection_img3.jpeg) 



## Custom Button Collection

You can add one or more custom buttons to the NavigationView through designer and code. This is illustrated below.

* Adding Custom Button Through Designer

  You can add custom buttons to the NavigationView using the CustomButton Collection Editor.

  The following illustration shows the CustomButton Collection Editor.

  ![](Drop-Down-Selection_images/Drop-Down-Selection_img4.jpeg)



* Adding Custom Button Through Code



{% highlight c# %}



Syncfusion.Windows.Forms.Tools.Navigation.CustomButton customButton = new Syncfusion.Windows.Forms.Tools.Navigation.CustomButton();

customButton.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;

customButton.Name = "customButton";

Bitmap img = new Bitmap("..//..//Search.gif");

customButton.Image = img;

navigationView4.Controls.Add(customButton);

{% endhighlight %}

{% highlight vbnet %}



Dim customButton As Syncfusion.Windows.Forms.Tools.Navigation.CustomButton = New Syncfusion.Windows.Forms.Tools.Navigation.CustomButton()

customButton.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007

customButton.Name = "customButton"

Dim img As Bitmap = New Bitmap("..//..//Search.gif")

customButton.Image = img

navigationView4.Controls.Add(customButton)

{% endhighlight %}

The following illustration shows the NavigationView with Custom Button.

![](Drop-Down-Selection_images/Drop-Down-Selection_img5.jpeg) 



