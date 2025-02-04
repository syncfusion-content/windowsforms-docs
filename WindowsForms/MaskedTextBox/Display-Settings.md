---
layout: post
title: Display Settings | WindowsForms | Syncfusion®
description: Learn here about how to set the display settings of the Syncfusion® Windows Forms MaskedEditBox control.
platform: windowsforms
control: MaskedEditBox
documentation: ug
---
# Display Settings in MaskedEditBox

This section discusses the display settings of the [MaskedEditBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html) control.

## Separators

You can display the data along with separators specifying date, time, decimals and thousands at run time by using [DateSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_DateSeparator), [TimeSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_TimeSeparator), [DecimalSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_DecimalSeparator) and [ThousandSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_ThousandSeparator) properties. It is not required to type separators at run time. Separators can be specified in the mask character itself.


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

We can change the default separators used. If you want to display the date time as 'mm-dd-yy', change the DateSeparator property from '/' to '-'.

Similarly other separators can be used.

{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.DateSeparator = '-';
this.maskedEditBox1.DecimalSeparator = '.';
this.maskedEditBox1.ThousandSeparator = ',';
this.maskedEditBox1.TimeSeparator = ':';

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.DateSeparator = "-"C
Me.maskedEditBox1.DecimalSeparator = "."C
Me.maskedEditBox1.ThousandSeparator = ","C
Me.maskedEditBox1.TimeSeparator = ":"C

{% endhighlight %}

{% endtabs %}

![Set date separator to WF MaskedEditBox control](MaskedEditBox-images/MarkedEditBox-img6.png)


![Set decimal separator to WF MaskedEditBox control](MaskedEditBox-images/MarkedEditBox-img7.png)


![Set thousand separator to WF MaskedEditBox control](MaskedEditBox-images/MarkedEditBox-img8.png)



![Set time separator to WF MaskedEditBox control](MaskedEditBox-images/MarkedEditBox-img9.png)



## Cursor position

You can set the cursor position of the MaskedEditBox control by using [PositionAt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_PositionAt) and [PositionAtDecimal](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_PositionAtDecimal) properties.

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

{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.PositionAt = Syncfusion.Windows.Forms.Tools.SpecialCursorPosition.Decimal;
this.maskedEditBox1.PositionAtDecimal = true;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.PositionAt = Syncfusion.Windows.Forms.Tools.SpecialCursorPosition.Decimal
Me.maskedEditBox1.PositionAtDecimal = true;

{% endhighlight %} 

{% endtabs %}

## DataGroups

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


The [DataGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_DataGroups) property of the MaskedEditBox defines a virtual grouping of the mask value. Each group is defined by a [MaskedEditDataGroupInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditDataGroupInfoCollection.html#Syncfusion_Windows_Forms_Tools_MaskedEditDataGroupInfoCollection_Add_Syncfusion_Windows_Forms_Tools_MaskedEditDataGroupInfo_) object (the DataGroups property is a collection of these objects).

A data group is defined by its `GroupLength` property. For example, if the mask is given as follows,

###.###.###.###

and there are 4 groups specified with group lengths of 4, 4, 4, 3 respectively, the groups will be defined as:

Group1 ###.

Group2 ###.

Group3 ###.

Group4 ###

The `DataAlignment` property of the `MaskedEditDataGroupInfo` object specifies the type of alignment to be used for the group. The data alignment behavior will be defined as given below:

* Left : All the filled-in mask fields in the group will be grouped to the left-most positions.
* Right : All the filled-in mask fields in the group will be grouped to the right-most positions.
* Center : All the filled-in mask fields in the group will be grouped to the center-most positions.

The group alignments will only be enforced after the control has lost focus.

The `MaskedEditDataGroupInfo.Value` property can be used to get the value of a group without any parsing. For example, if the mask is given as follows,

(###) - ### #### Extent ####

3 groups can be defined as follows:

Group1 - (###)

Group2 - ### ####

Group3 Extent - ####

The value of Group 1 will be the area code, Group 2 will be the phone number, and Group 3 will be the extension.

The following code snippet uses two groups.

{% tabs %}

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

{% highlight VB %} 

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

{% endtabs %}


## Displaying characters as substitutes for user input

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


The [MaskedEditBox.Sequentially](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_Sequentially) property indicates whether the control can sequentially display mask characters. After setting the `Sequentially` property to 'True', you can use the [PasswordChar](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.passwordchar?view=windowsdesktop-7.0&viewFallbackFrom=netcore-3.1&redirectedfrom=MSDN#System_Windows_Forms_TextBox_PasswordChar) property in order to set the character, that is to be displayed as a substitute for the user input.

{% tabs %}

{% highlight C# %}  

private void Form1_Load(object sender, System.EventArgs e)
{
    this.maskedEditBox1.Sequentially = true;
    this.maskedEditBox1.PasswordChar = '$';
}

{% endhighlight %}

{% highlight VB %} 

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)
Me.maskedEditBox1.Sequentially = True
Me.maskedEditBox1.PasswordChar = "$"c
End Sub

{% endhighlight %}

{% endtabs %}

![Set the character as substitutes in WF MaskedEditBox control](MaskedEditBox-images/MarkedEditBox-img10.png)

