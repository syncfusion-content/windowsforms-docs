---
layout: post
title: MenuButton-Settings 
description: MenuButton Settings 
platform: Windows Forms
control: Tools 
documentation: ug
---

# MenuButton Settings 

The following properties controls the appearance of the Menu button.

_Table 693: Property Table_


<table>
<tr><th>
Property</th><th>Description</th></tr>
<tr><td>
MenuButtonVisible</td>	<td>Sets the visibility of the OfficeMenuButton.</td></tr>
<tr><td>MenuButtonImage</td><td>	Gets or sets the image for the OfficeMenuButton.,/td></tr>
<tr><td>MenuButtonWidth</td><td>	Specifies the width of the menu button.</td></tr></table>

{% highlight C#%}

//Sets the visibility of the Menu Button
this.ribbonControlAdv1.MenuButtonVisible = true;

//Sets image for the Menu Button
Image img = Image.FromFile(Application.StartupPath + @"\image.png");
this.ribbonControlAdv1.MenuButtonImage = img;

//Sets width of the Menu Button
this.ribbonControlAdv1.MenuButtonWidth = 50;

{% endhighlight %}

{% highlight vbnet %}

'Sets the visibility of the Menu Button
Me.ribbonControlAdv1.MenuButtonVisible = True

'Sets image for the Menu Button
Dim img As Image =  Image.FromFile(Application.StartupPath + "\image.png") 
Me.ribbonControlAdv1.MenuButtonImage = img

'Sets width of the Menu Button
Me.ribbonControlAdv1.MenuButtonWidth = 50

{% endhighlight %}

![](Office_images/office_img40.png)

_Figure 1174: MenuButton with Image; MenuButtonWidth = "50"_


## MenuButtonAccelerator
When the SuperAccelerator component is added to the form, an extender property MenuButtonAccelerator on superAccelerator will be added to the RibbonControlAdv properties, where the user can add the key for MenuButton. 

{% highlight C# %}

this.superAccelerator1.SetMenuButtonAccelerator(this.ribbonControlAdv1, "F"); 

{% endhighlight %}

{% highlight vbnet %}

Me.superAccelerator1.SetMenuButtonAccelerator(Me.ribbonControlAdv1, "F")

{% endhighlight %}

At run time when you press Alt key, the menu button will display "F" key as shown in the image.


![](Office_images/office_img41.png)

_Figure 1175: SuperAccelerator set for MenuButton_