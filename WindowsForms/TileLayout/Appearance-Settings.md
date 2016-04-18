---
layout: post
title: Appearance Settings | WindowsForms | Syncfusion
description: Appearance Settings
platform: WindowsForms
control: TileLayout 
documentation: ug
---

# Appearance Settings

## SetParentFormFlat

This property gives flat look for the the parent Form while.

{% tabs %}

{% highlight C# %}

//Enables flat look for parent form

this.tileLayout1.SetParentFormFlat = true;

{% endhighlight %}


{% highlight VB %}

'Enables flat look for parent form

Me.tileLayout1.SetParentFormFlat = True

 
{% endhighlight %}

{% endtabs %}



## ShowGroupTitle

Shows the Group Title while enabling this property.

{% tabs %}

{% highlight C# %}

//Shows the Group Title

this.tileLayout1.ShowGroupTitle = true;

{% endhighlight %}

{% highlight VB %}

'Shows the Group Title

 Me.tileLayout1.ShowGroupTitle = True
 
{% endhighlight %}

{% endtabs %}

![](Appearance_images/LayoutTitle.png)


# IgnoreThemeBackground

`IgnoreThemeBackground` indicates whether the control will ignore the theme's background color and draw the BackColor instead. BackColor of the TileLayout will only be 
applied if the IgnoreThemeBackground property is set to True.


{% tabs %}

{% highlight C# %}

//To apply BackColor of the TileLayout

 this.tileLayout1.IgnoreThemeBackground = true;

{% endhighlight %}

{% highlight VB %}

‘To apply BackColor of the TileLayout

 Me.tileLayout1.IgnoreThemeBackground = true
 
{% endhighlight %}

{% endtabs %}

![](Appearance_images/ThemedBackground.png)