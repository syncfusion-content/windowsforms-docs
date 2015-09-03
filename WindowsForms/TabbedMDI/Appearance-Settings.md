---
layout: post
title: Appearance-Settings
description: appearance settings
platform: WindowsForms
control: TabbedMDIPackage 
documentation: ug
---

# Appearance Settings

The variousAppearance Settings for TabbedMDIManager are discussed in this section. 

It includes the below topics.

## Foreground Settings

This section guides you in setting the text and icons for the tabs.

#### Tab Text

The text of the tabs can be set by directly setting the Text property of the form, if the tabbed window is going to be a normal form.



#### Icon Settings

The below properties controls the appearance and behavior of the icon settings.

_Table_ _856_: Property Table

<table>
<tr>
<th>
 TabbedMDIManager Property</th><th>
Description</th></tr>
<tr>
<td>
Icon</td><td>
Gets / sets icons for tabs. When the Icon property is clicked, the browse page will be displayed, through which the user can select the icon to be displayed.</td></tr>
<tr>
<td>
UseIconsInTabs</td><td>
Gets / sets the value which determines whether icons should be added to the MDIChild.</td></tr>
<tr>
<td>
ImageSize</td><td>
The size of the image or icon that you want to add to the tabs can be set using this property.</td></tr>
</table>


{% highlight c# %}



this.Text = "Tabbed MDI Demo (Syncfusion Inc.)";

this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));

this.TabbedMDIManager.UseIconsInTabs = false;

this.tabbedMDIManager1.ImageSize = new System.Drawing.Size(16, 16);

{% endhighlight %}

{% highlight vbnet %}

Me.Text = "Tabbed MDI Demo (Syncfusion Inc.)" 

Me.Icon = CType((resources.GetObject("$this.Icon")), System.Drawing.Icon)

Me.TabbedMDIManager.UseIconsInTabs = False

Me.TabbedMDIManager1.ImageSize = New System.Drawing.Size(20, 20)

{% endhighlight %}

![](Appearance-Settings_images/Appearance-Settings_img1.jpeg)



## Applying Themes

The TabbedMDIManager Control can be themed by enabling the ThemesEnabled property.

{% highlight c# %}

this.tabbedMDIManager1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vbnet %}

Me.tabbedMDIManager1.ThemesEnabled = True

{% endhighlight %}

![](Appearance-Settings_images/Appearance-Settings_img2.jpeg)



