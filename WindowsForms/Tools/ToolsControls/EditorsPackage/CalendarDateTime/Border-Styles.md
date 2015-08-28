---
layout: post
title: Border Styles
description: border styles
platform: windowsforms
control: Calendar
documentation: ug
---
# Border Styles

The wide variety of border options are available for DateTimePickerAdv control when they are in 2D or in 3D mode. The properties in the below table illustrates the border settings.

_Table190: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Specifies whether the DateTimePickerAdv should have a border and if it is 2D or 3D border. The options are,* {{ '_None_' | markdownify }}* {{ '_FixedSingle_'  | markdownify }}* {{ '_Fixed3D(Default)_' | markdownify }}</td></tr>
<tr>
<td>
<br>Border3DStyle</td><td>
Specifies the 3D border style of the DateTimePickerAdv.The options are,* {{ '_Raised_' | markdownify }}* {{ '_RaisedOuter_'  | markdownify }}* {{ '_RaisedInner_'  | markdownify }}* {{ '_Sunken(Default)_' | markdownify }}* {{ '_SunkenOuter_'  | markdownify }}* {{ '_SunkenInner_'  | markdownify }}* {{ '_Etched_'  | markdownify }}* {{ '_Bump_'  | markdownify }}* {{ '_Adjust_'  | markdownify }}* {{ '_Flat_' | markdownify }}</td></tr>
<tr>
<td>
<br>BorderSingle</td><td>
Specifies the 2D border style of the DateTimePickerAdv. The options are,* {{ '_None_' | markdownify }}* {{ '_Dotted_' | markdownify }}* {{ '_Dashed_' | markdownify }}* {{ '_Solid (default)_' | markdownify }}* {{ '_Inset_'  | markdownify }}* {{ '_Outset_' | markdownify }}</td></tr>
<tr>
<td>
<br>BorderSides</td><td>
Specifies the sides of the control which should have a border. The sides are,* {{ '_Left_' | markdownify }}* {{ '_Top_' | markdownify }}* {{ '_Right_'  | markdownify }}* {{ '_Bottom_' | markdownify }}* {{ '_Middle_'  | markdownify }}* {{ '_All (Default)_' | markdownify }}</td></tr>
<tr>
<td>
<br>BorderColor</td><td>
Specifies the color of the 2D border when BorderStyle is set FixedSingle.</td></tr>
</table>



{% highlight c#  %}


//Sets 2D border

this.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

//Sets 2D border style

this.dateTimePickerAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed;

//Sets border for all the side of the control

this.dateTimePickerAdv1.BorderSides = System.Windows.Forms.Border3DSide.All;

//Sets color for the 2D border

this.dateTimePickerAdv1.BorderColor = System.Drawing.Color.SteelBlue;



//Sets 3D border

this.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;

//Sets SunkenInner 3D border style

this.dateTimePickerAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner;




{% endhighlight  %}
{% highlight vbnet  %}


'Sets 2D border 

Me.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

'Sets 2D border style 

Me.dateTimePickerAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed 

'Sets border for all the side of the control 

Me.dateTimePickerAdv1.BorderSides = System.Windows.Forms.Border3DSide.All 

'Sets color for the 2D border 

Me.dateTimePickerAdv1.BorderColor = System.Drawing.Color.SteelBlue 



'Sets 3D border 

Me.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D 

'Sets SunkenInner 3D border style 

Me.dateTimePickerAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner 
{% endhighlight   %}


![](Calendar_Images/Overview_img209.jpeg) 



See Also

Background Settings
