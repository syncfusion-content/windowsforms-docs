---
layout: post
title: Themes-And-Visual-Styles
description: themes and visual styles
platform: WindowsForms
control: CommandBars
documentation: ug
---

# Themes And Visual Styles

This section discusses the themes and visual styles settings of the CommandBar control.

## Themes

Themes define the look and feel of the CommandBar control. They can be set using the property given below.


<table>
<tr>
<th>
CommandBarController Property</th><th>
Description</th></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether XP themes should be used for the CommandBars.</td></tr>
</table>

{% highlight C# %}






this.commandBarController1.ThemesEnabled=true;
{% endhighlight %}

{% highlight vbnet %}





Me.commandBarController1.ThemesEnabled=True
{% endhighlight %}

![](Themes-And-Visual-Styles_images/Themes-And-Visual-Styles_img1.jpeg) 



## Visual Styles

Visual Styles enhance the appearance of the CommandBar control and can be set using the property given below.


<table>
<tr>
<th>
CommandBarController Property</th><th>
Description</th></tr>
<tr>
<td>
Style</td><td>
Specifies the visual style of the CommandBar. It includes the options given below.OfficeXP,Office2003,Office2007,VS2005 andOffice2007Outlook.</td></tr>
</table>

{% highlight C# %}






this.commandBarController1.ThemesEnabled = true;

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.OfficeXP;
{% endhighlight %}


{% highlight vbnet %}





Me.commandBarController1.ThemesEnabled=True

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.OfficeXP
{% endhighlight %}


![](Themes-And-Visual-Styles_images/Themes-And-Visual-Styles_img2.jpeg) 




N> For the Office2003 and VS2005 styles to take effect, the ThemesEnabled property should be set to 'False'.

## Office 2007 Theme

CommandBarController provides the new Microsoft Office 2007 style in different color schemes, to enhance the appearance of the CommandBar control. Office 2007 color schemes can be enabled using the Office2007Theme property.


<table>
<tr>
<th>
CommandBarController Property</th><th>
Description</th></tr>
<tr>
<td>
Office2007Theme</td><td>
Specifies the color scheme for the Office 2007 visual style. It includes the options given below.Blue,Silver,Black andManaged.</td></tr>
</table>

{% highlight C# %}






this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook;

this.commandBarController1.Office2007Theme = Syncfusion.Windows.Forms.Office2007ColorScheme.Blue;
{% endhighlight %}


{% highlight vbnet %}





Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook

Me.commandBarController1.Office2007Theme = Syncfusion.Windows.Forms.Office2007ColorScheme.Blue
{% endhighlight %}


 ![](Themes-And-Visual-Styles_images/Themes-And-Visual-Styles_img4.jpeg) 




N> The Style property must be set to 'Office2007' or 'Office2007Outlook' to get the Office 2007 theme effect.

## Office 2010 Styles

This feature provides Office 2010-like themes for Windows Forms UI controls. These themes add the Office 2010-like look and feel to your application. This feature enables you to easily apply uniform style to all of the child controls in the application. Windows Forms UI controls support three themes found in Office 2010. They are:  

* Blue
* Black 
* Silver

There is also a user-managed theme called Managed.

### Supported Controls

Controls that support Office 2007 themes will also support the Office 2010 themes. The API used to set the style will also be the same as Office 2007.

The following code samples can be used to apply Office 2010 themes to the DockingManager.
{% highlight C# %}





//Set the visual style of the docked controls.

this.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010;

this.dockingManager1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Silver;
{% endhighlight %}


{% highlight vbnet %}





' Set the visual style of the docked controls.

Me.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010

Me.dockingManager1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Silver
{% endhighlight %}


The list of controls that support Office 2010 styles is displayed in the following table:


<table>
<tr>
<td>
1</td><td>
ButtonAdv</td></tr>
<tr>
<td>
2</td><td>
ButtonEdit</td></tr>
<tr>
<td>
3</td><td>
CalculatorControl</td></tr>
<tr>
<td>
4</td><td>
CheckBoxAdv</td></tr>
<tr>
<td>
5</td><td>
ColorPickerButton</td></tr>
<tr>
<td>
6</td><td>
ColorPickerUIAdv</td></tr>
<tr>
<td>
7</td><td>
ColorUIControl</td></tr>
<tr>
<td>
8</td><td>
ComboBoxAdv</td></tr>
<tr>
<td>
9</td><td>
ComboBoxBase</td></tr>
<tr>
<td>
10</td><td>
ComboDropDown</td></tr>
<tr>
<td>
11</td><td>
CurrencyEdit</td></tr>
<tr>
<td>
12</td><td>
CurrencyTextBox</td></tr>
<tr>
<td>
13</td><td>
ChildFrameBar Manager</td></tr>
<tr>
<td>
14</td><td>
DateTimePickerAdv</td></tr>
<tr>
<td>
15</td><td>
DockingManager</td></tr>
<tr>
<td>
16</td><td>
DomainUpDownExt</td></tr>
<tr>
<td>
17</td><td>
DoubleTextBox</td></tr>
<tr>
<td>
18</td><td>
GroupBar</td></tr>
<tr>
<td>
19</td><td>
IntegerTextBox</td></tr>
<tr>
<td>
20</td><td>
MainFrameBarManager</td></tr>
<tr>
<td>
21</td><td>
MaskedEditBox</td></tr>
<tr>
<td>
22</td><td>
MonthCalendarAdv</td></tr>
<tr>
<td>
23</td><td>
MultiColumnComboBox</td></tr>
<tr>
<td>
24</td><td>
NumericUpDownExt</td></tr>
<tr>
<td>
25</td><td>
PercentTextBox</td></tr>
<tr>
<td>
26</td><td>
RadioButtonAdv</td></tr>
<tr>
<td>
27</td><td>
RibbonControlAdv</td></tr>
<tr>
<td>
28</td><td>
RecordNavigationControl</td></tr>
<tr>
<td>
29</td><td>
ScrollersFrame</td></tr>
<tr>
<td>
30</td><td>
SplitterControl</td></tr>
<tr>
<td>
31</td><td>
SkinManager</td></tr>
<tr>
<td>
32</td><td>
TabbedMDIPackage</td></tr>
<tr>
<td>
33</td><td>
TabbedGroupedMDIManager</td></tr>
<tr>
<td>
34</td><td>
TabControlAdv</td></tr>
<tr>
<td>
35</td><td>
TextBoxExt</td></tr>
<tr>
<td>
36</td><td>
TreeViewAdv</td></tr>
<tr>
<td>
37</td><td>
XPTaskBar</td></tr>
<tr>
<td>
38</td><td>
XPTaskPane</td></tr>
<tr>
<td>
39</td><td>
XPToolBar</td></tr>
</table>

## Skin Manager Compatibility

Previously, the SkinManager supported only Office 2007 themes. Now the SkinManager will support Office 2010 themes for the following color schemes:

* Office 2010 Blue
* Office 2010 Black
* Office 2010 Silver
