---
layout: post
title: Display Settings | Windows Forms | Syncfusion
description: Display Settings
platform: windowsforms
control: MaskedEditBox
documentation: ug
---
# Display Settings

This section discusses the display settings of the MaskedEditBox control.

## Separators

The user data can be displayed along with separators at run time for specifying date, time, decimals and thousands. It is not 
required to type separators at run time. Separators can be specified in the mask character itself.



<table>
<tr>
<th>
MaskedEditBox Properties</th><th>
Description</th></tr>
<tr>
<td>
DateSeparator</td><td>
Specifies the character to use when a date separator position is specified.The default separator is '/'.</td></tr>
<tr>
<td>
DecimalSeparator</td><td>
Specifies the character to use when a decimal separator position is specified.The default separator is '.'.</td></tr>
<tr>
<td>
ThousandSeparator</td><td>
Specifies the character to use when a thousands separator position is specified.The default separator is ','.</td></tr>
<tr>
<td>
TimeSeparator</td><td>
Specifies the character to use when a time separator position is specified.The default separator is ':'.</td></tr>
</table>


For example, if you want to display the user data in date time format say mm/dd/yy, the mask character should be '##/##/##'.

We can change the default separators used. If you want to display the date time as 'mm-dd-yy', change the DateSeparatorproperty from '/' to '-'.

Similarly other separators can be used.

{% highlight C# %}  

this.maskedEditBox1.DateSeparator = '-';

this.maskedEditBox1.DecimalSeparator = '.';

this.maskedEditBox1.ThousandSeparator = ',';

this.maskedEditBox1.TimeSeparator = ':';

{% endhighlight %}



{% highlight vbnet %} 

Me.maskedEditBox1.DateSeparator = "-"C

Me.maskedEditBox1.DecimalSeparator = "."C

Me.maskedEditBox1.ThousandSeparator = ","C

Me.maskedEditBox1.TimeSeparator = ":"C

{% endhighlight %}

![](MaskedEditBox-images/MarkedEditBox-img6.png)


![](MaskedEditBox-images/MarkedEditBox-img7.png)


![](MaskedEditBox-images/MarkedEditBox-img8.png)



![](MaskedEditBox-images/MarkedEditBox-img9.png)





## Cursor Position

The cursor position of the MaskedEditBox control can be specified using the options provided by the following properties.



<table>
<tr>
<th>
MaskedEditBox Properties</th><th>
Description</th></tr>
<tr>
<td>
PositionAt</td><td>
Defines the control's cursor position behavior on getting the focus. The options included are as follows:{{ '_Decimal_' | markdownify }}{{ '_FirstPosition and_' | markdownify }}{{ '_FirstMaskPosition._' | markdownify }}The default value is 'FirstPosition'.</td></tr>
<tr>
<td>
PositionAtDecimal</td><td>
Indicates whether the cursor is to be positioned at the decimal separator (if any) when the control receives focus.</td></tr>
</table>


{% highlight C# %}  

this.maskedEditBox1.PositionAt = Syncfusion.Windows.Forms.Tools.SpecialCursorPosition.Decimal;

this.maskedEditBox1.PositionAtDecimal = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.maskedEditBox1.PositionAt = Syncfusion.Windows.Forms.Tools.SpecialCursorPosition.Decimal

Me.maskedEditBox1.PositionAtDecimal = true;

{% endhighlight %} 


### DataGroups

Text can be split up and aligned using the options provided by the below given property.



<table>
<tr>
<th>
MaskedEditBox Property</th><th>
Description</th></tr>
<tr>
<td>
DataGroups</td><td>
Specifies the data groups that can be used for splitting up the text.</td></tr>
</table>


The DataGroups property of the MaskedEditBox defines a virtual grouping of the mask value. Each group is defined by aMaskedEditDataGroupInfo object (the DataGroups property is a collection of these objects).

A data group is defined by its GroupLength property. For example, if the mask is given as follows,

###.###.###.###

and there are 4 groups specified with group lengths of 4, 4, 4, 3 respectively, the groups will be defined as:

Group1 ###.

Group2 ###.

Group3 ###.

Group4 ###

The DataAlignment property of the MaskedEditDataGroupInfo object specifies the type of alignment to be used for the group. The data alignment behavior will be defined as given below:

* Left : All the filled-in mask fields in the group will be grouped to the left-most positions.
* Right : All the filled-in mask fields in the group will be grouped to the right-most positions.
* Center : All the filled-in mask fields in the group will be grouped to the center-most positions.

The group alignments will only be enforced after the control has lost focus.

The MaskedEditDataGroupInfo.Value property can be used to get the value of a group without any parsing. For example, if the mask is given as follows,

(###) - ### #### Extn ####

3 groups can be defined as follows:

Group1 - (###)

Group2 - ### ####

Group3 Extn - ####

The value of Group 1 will be the area code, Group 2 will be the phone number, and Group 3 will be the extension.

The following code snippet uses two groups.

{% highlight C# %}  



// Adding DataGroups.

this.maskedEditBox1.DataGroups.Add(this.maskedEditDataGroupInfo1);

this.maskedEditBox1.DataGroups.Add(this.maskedEditDataGroupInfo2);



// Defining maskedEditDataGroupInfo1.

this.maskedEditDataGroupInfo1.DataGroupAlignment = Syncfusion.Windows.Forms.Tools.MaskGroupAlignment.Left;

this.maskedEditDataGroupInfo1.DataGroupName = "One";

this.maskedEditDataGroupInfo1.DataGroupSize = 3;



// Defining maskedEditDataGroupInfo2.

this.maskedEditDataGroupInfo2.DataGroupAlignment = Syncfusion.Windows.Forms.Tools.MaskGroupAlignment.None;

this.maskedEditDataGroupInfo2.DataGroupName = "Two";

this.maskedEditDataGroupInfo2.DataGroupSize = 4;

{% endhighlight %}



{% highlight vbnet %} 

' Adding DataGroups.

Me.maskedEditBox1.DataGroups.Add(Me.maskedEditDataGroupInfo1)

Me.maskedEditBox1.DataGroups.Add(Me.maskedEditDataGroupInfo2)



' Defining maskedEditDataGroupInfo1.

Me.maskedEditDataGroupInfo1.DataGroupAlignment = Syncfusion.Windows.Forms.Tools.MaskGroupAlignment.Left

Me.maskedEditDataGroupInfo1.DataGroupName = "One"

Me.maskedEditDataGroupInfo1.DataGroupSize = 3



' Defining maskedEditDataGroupInfo2.

Me.maskedEditDataGroupInfo2.DataGroupAlignment = Syncfusion.Windows.Forms.Tools.MaskGroupAlignment.None

Me.maskedEditDataGroupInfo2.DataGroupName = "Two"

Me.maskedEditDataGroupInfo2.DataGroupSize = 4

{% endhighlight %}


## Displaying Characters as Substitutes for User Input

We can display different characters as substitutes for the user input. This can be done using the below given properties.



<table>
<tr>
<th>
MaskedEditBox Properties</th><th>
Description</th></tr>
<tr>
<td>
Sequentially</td><td>
Indicates whether the control can sequentially display mask characters.</td></tr>
<tr>
<td>
PasswordChar</td><td>
Indicates the character to display for password input for single-line edit controls.</td></tr>
</table>


The MaskedEditBox.Sequentially property indicates whether the control can sequentially display mask characters. After setting the Sequentially property to 'True', you can use the PasswordChar property in order to set the character, that is to be displayed as a substitute for the user input.

{% highlight C# %}  



private void Form1_Load(object sender, System.EventArgs e)

{

this.maskedEditBox1.Sequentially = true;

this.maskedEditBox1.PasswordChar = '$';

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)

Me.maskedEditBox1.Sequentially = True

Me.maskedEditBox1.PasswordChar = "$"c

End Sub

{% endhighlight %}

![](MaskedEditBox-images/MarkedEditBox-img10.png)


A Sample which demonstrates the PasswordChar property of MaskedEditBox control is available in the below sample installation 
path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_