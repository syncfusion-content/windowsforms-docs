---
layout: post
title: Appearance Settings in Windows Forms TabbedMDI control | Syncfusion®
description: Learn about Appearance Settings support in Syncfusion® Windows Forms TabbedMDI control and more details.
platform: windowsforms
control: TabbedMDIPackage 
documentation: ug
---

# Appearance Settings in Windows Forms TabbedMDI

The variousAppearance Settings for TabbedMDIManager are discussed in this section.

## Foreground settings

This section guides you in setting the text and icons for the tabs.

### Tab text

The text of the tabs can be set by directly setting the Text property of the form, if the tabbed window is going to be a normal form.



#### Icon settings

The below properties controls the appearance and behavior of the icon settings.

Property table

<table>
<tr>
<th>
 TabbedMDIManager property</th><th>
Description</th></tr>
<tr>
<td>
Icon</td><td>
Gets/sets icons for tabs. When the Icon property is clicked, the browse page will be displayed, through which the user can select the icon to be displayed.</td></tr>
<tr>
<td>
UseIconsInTabs</td><td>
Gets/sets the value which determines whether icons should be added to the MDIChild.</td></tr>
<tr>
<td>
ImageSize</td><td>
The size of the image or icon that you want to add to the tabs can be set using this property.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.Text = "Tabbed MDI Demo (Syncfusion Inc.)";

this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));

this.TabbedMDIManager.UseIconsInTabs = false;

this.tabbedMDIManager1.ImageSize = new System.Drawing.Size(16, 16);

{% endhighlight %}

{% highlight VB %}

Me.Text = "Tabbed MDI Demo (Syncfusion Inc.)" 

Me.Icon = CType((resources.GetObject("$this.Icon")), System.Drawing.Icon)

Me.TabbedMDIManager.UseIconsInTabs = False

Me.TabbedMDIManager1.ImageSize = New System.Drawing.Size(20, 20)

{% endhighlight %}

{% endtabs %}

![Appearance-Settings_img1](Appearance-Settings_images/Appearance-Settings_img1.jpeg)



## Applying themes

The TabbedMDIManager Control can be themed by enabling the ThemesEnabled property.

{% tabs %}

{% highlight C# %}

this.tabbedMDIManager1.ThemesEnabled = true;

{% endhighlight %}

{% highlight VB %}

Me.tabbedMDIManager1.ThemesEnabled = True

{% endhighlight %}

{% endtabs %}

![Appearance-Settings_img2](Appearance-Settings_images/Appearance-Settings_img2.jpeg)

## Customization

TabbedMDIManager provides complete support for customizing the active and inactive tabs back color, fore color, and font.

#### ActiveTabBackColor

This option helps to customize the active tab back color.

{% tabs %}

{% highlight C# %}

this.tabbedMDIManager.ActiveTabBackColor = Color.Red;

{% endhighlight %}


{% highlight VB %}

Me.tabbedMDIManager.ActiveTabBackColor = Color.Red

{% endhighlight %}

{% endtabs %}

![Appearance-Settings_img3](Appearance-Settings_images/Appearance-Settings_img3.png)

#### TabBackColor

This option helps to customize the inactive tab back color.

{% tabs %}

{% highlight C# %}

this.tabbedMDIManager.TabBackColor = Color.Green;

{% endhighlight %}


{% highlight VB %}

Me.tabbedMDIManager.TabBackColor = Color.Green

{% endhighlight %}

{% endtabs %}

![Appearance-Settings_img4](Appearance-Settings_images/Appearance-Settings_img4.png)

#### ActiveTabForeColor

This option helps to customize the active tab fore color.

{% tabs %}

{% highlight C# %}

this.tabbedMDIManager.ActiveTabForeColor = Color.Yellow;

{% endhighlight %}


{% highlight VB %}

Me.tabbedMDIManager.ActiveTabForeColor = Color.Yellow

{% endhighlight %}

{% endtabs %}

![Appearance-Settings_img5](Appearance-Settings_images/Appearance-Settings_img5.png)

#### TabForeColor

This option helps to customize the inactive tab fore color.

{% tabs %}

{% highlight C# %}

this.tabbedMDIManager.TabForeColor = Color.Violet;

{% endhighlight %}


{% highlight VB %}

Me.tabbedMDIManager.TabForeColor = Color.Violet

{% endhighlight %}

{% endtabs %}

![Appearance-Settings_img6](Appearance-Settings_images/Appearance-Settings_img6.png)

#### TabPanelBackColor

This option helps to customize the background color of tab panel.

{% tabs %}

{% highlight C# %}

this.tabbedMDIManager.TabPanelBackColor = Color.LightGreen;

{% endhighlight %}


{% highlight VB %}

Me.tabbedMDIManager.TabPanelBackColor = Color.LightGreen

{% endhighlight %}

{% endtabs %}

![Appearance-Settings_img7](Appearance-Settings_images/Appearance-Settings_img7.png)

#### ActiveTabFont

This option helps to customize the active tab font.

{% tabs %}

{% highlight C# %}

this.tabbedMDIManager.ActiveTabFont = new Font("Algerian", 10);

{% endhighlight %}


{% highlight VB %}

Me.tabbedMDIManager.ActiveTabFont = new Font("Algerian", 10)

{% endhighlight %}

{% endtabs %}

![Appearance-Settings_img8](Appearance-Settings_images/Appearance-Settings_img8.png)

#### TabFont

This property helps to customize the inactive tab font.

{% tabs %}

{% highlight C# %}

this.tabbedMDIManager.TabFont = new Font("Arial Black", 10);

{% endhighlight %}


{% highlight VB %}

Me.tabbedMDIManager.TabFont = new Font("Arial Black", 10)

{% endhighlight %}

{% endtabs %}

![Appearance-Settings_img9](Appearance-Settings_images/Appearance-Settings_img9.png)

#### TabPanelBorderColor

This property helps to customize bottom line in tab panel.

{% tabs %}

{% highlight C# %}

this.tabbedMDIManager.TabPanelBorderColor = Color.Orange;

{% endhighlight %}


{% highlight VB %}

Me.tabbedMDIManager.TabPanelBorderColor = Color.Orange

{% endhighlight %}

{% endtabs %}

![Appearance-Settings_img10](Appearance-Settings_images/Appearance-Settings_img10.png)
