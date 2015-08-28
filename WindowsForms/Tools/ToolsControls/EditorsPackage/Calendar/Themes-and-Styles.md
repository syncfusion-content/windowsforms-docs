---
layout: post
title: Themes and Styles
description: themes and styles
platform: windowsforms
control: Calendar
documentation: ug
---
# Themes and Styles

## Themes

We can apply themes for the DateTimePickerAdv and also the child controls using the below properties.

_Table193: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether to enable themes for the DateTimePickerAdv control.</td></tr>
<tr>
<td>
ThemedChildControls</td><td>
Setting ThemesEnabled to true will not enable themes for its child controls (CheckBox, DropDown , UpDown and Calendar). To enable themes for the child controls of the DateTimePicker, set ThemedChildControls to true.</td></tr>
</table>




{% highlight c#  %}

this.dateTimePickerAdv1.ThemesEnabled = true;

this.dateTimePickerAdv1.ThemedChildControls = true;

{% endhighlight   %}
{% highlight vbnet  %}





Me.dateTimePickerAdv1.ThemesEnabled = True

Me.dateTimePickerAdv1.ThemedChildControls = True



' Setting backcolor for the control when it is ReadOnly

Me.dateTimePickerAdv1.ReadOnly = True

Me.dateTimePickerAdv1.IgnoreThemeBackground = True

{% endhighlight   %}

![](Calendar_Images/Overview_img213.jpeg)



![](Calendar_Images/Overview_img214.jpeg) 



## Styles

Visual Styles for the DateTimePickerAdv and its child controls can be applied using the Style property. 

_Table194: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
Style</td><td>
Specifies the Office style of the picker. The options are :* {{ '_OfficeXP_'  | markdownify }}* {{ '_Office2003_'  | markdownify }}* {{ '_VS2005_' | markdownify }}* {{ '_Office2007_'  | markdownify }}* {{ '_Default (default)_' | markdownify }}</td></tr>
<tr>
<td>
<br>Office2007Theme</td><td>
Indicates the office color scheme used, when Style is set to Office2007.</td></tr>
</table>



{% highlight c#  %}


// Sample for setting Office2007 style for the control

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;



{% endhighlight   %}
{% highlight vbnet  %}



' Sample for setting Office2007 style for the control

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007


{% endhighlight   %}
![](Calendar_Images/Overview_img215.jpeg) 







{% highlight c#  %}

//Sets the Color scheme as Blue when the style is Office2007

this.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Blue;



{% endhighlight   %}

{% highlight vbnet  %}

'Sets the Color scheme as Blue when the style is Office2007

Me.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Blue

{% endhighlight   %}

![](Calendar_Images/Overview_img216.jpeg) 



### Custom Colors

We can also apply custom colors to the DateTimePickerAdv control by setting Office2007Theme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.




{% highlight c#  %}
this.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Orange);

{% endhighlight   %}

{% highlight vbnet  %}



Me.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Orange)


{% endhighlight   %}
![](Calendar_Images/Overview_img217.jpeg) 


