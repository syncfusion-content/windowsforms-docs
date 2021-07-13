---
layout: post
title: Text Visualization in Windows Forms Syntax Editor | Syncfusion
description: Learn about Text Visualization support in Syncfusion Windows Forms Syntax Editor control and more details.
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Text Visualization in Windows Forms Syntax Editor

Various text visualization features of EditControl is elaborated under the following topics.

## Outlining

Sections of code form outlining blocks can be specified by using the Configuration Settings. The EditControl defines different brackets for highlighting different languages.

### Configure outline

Outlining blocks can be specified for code as well as for plain text. By Setting the [ShowOutliningCollapsers](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ShowOutliningCollapsers) property to `true`, you can enable or disable automatic outlining in the EditControl. 

{% tabs %}

{% highlight C# %}

// Enabling Automatic Outlining.

this.editControl1.ShowOutliningCollapsers = true;

{% endhighlight %}


{% highlight VB %}

' Enabling Automatic Outlining.

Me.editControl1.ShowOutliningCollapsers = True

{% endhighlight %}

{% endtabs %}

### Toggle outline visibility

You can toggle the outline visibility in the EditControl by using the following functions.

<table>
<tr>
<th>
Functions</th><th>
Description</th></tr>
<tr>
<td>
{{ '[SwitchCollapsingOn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_SwitchCollapsingOn)' | markdownify }}
</td><td>
Turns on collapse and collapse all options.</td></tr>
<tr>
<td>
{{ '[SwitchCollapsingOff](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_SwitchCollapsingOff)' | markdownify }}</td><td>
Turns off collapse option.</td></tr>
<tr>
<td>
{{ '[ToggleLineCollapsing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ToggleLineCollapsing)' | markdownify }}</td><td>
Toggles collapse option for the current line.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Turns on collapse and collapse all option.

this.editControl1.SwitchCollapsingOff();

// Turns off collapse option.

this.editControl1.SwitchCollapsingOn();

// Toggles collapse option for current line.

this.editControl1.ToggleLineCollapsing();

{% endhighlight %}


{% highlight VB %}

' Turns on collapse and collapse all option.

Me.editControl1.SwitchCollapsingOff()

' Turns off collapse option.

Me.editControl1.SwitchCollapsingOn()

' Toggles collapse option for current line.

Me.editControl1.ToggleLineCollapsing()

{% endhighlight %}

{% endtabs %}

### Programmatically expand or collapse outline state 

Programmatically provides support like Visual Studio for collapsing and expanding blocks of code.

<table>
<tr>
<th>
Functions</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Collapse](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_Collapse)' | markdownify }}</td><td>
Collapses all regions in the currently selected area or in the current line.</td></tr>
<tr>
<td>
{{ '[Expand](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_Expand)' | markdownify }}</td><td>
Expands all the collapsed regions in currently selected area or in the current line.</td></tr>
<tr>
<td>
{{ '[CollapseAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_CollapseAll)' | markdownify }}</td><td>
Collapses all regions.</td></tr>
<tr>
<td>
{{ '[ExpandAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ExpandAll)' | markdownify }}</td><td>
Expands all collapsed regions.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Collapses all regions in currently selected area or in the current line.

this.editControl1.Collapse();

// Expands all collapsed regions in currently selected area or in the current line.

this.editControl1.Expand();

// Collapses all regions.

this.editControl1.CollapseAll();

// Expands all collapsed regions.

this.editControl1.ExpandAll();

{% endhighlight %}


{% highlight VB %}

' Collapses all regions in currently selected area or in the current line.

Me.editControl1.Collapse()

' Expands all collapsed regions in currently selected area or in the current line.

Me.editControl1.Expand()

' Collapses all regions.

Me.editControl1.CollapseAll()

' Expands all collapsed regions.

Me.editControl1.ExpandAll()

{% endhighlight %}

{% endtabs %}

The EditControl supports the following events to handle various outlining operations.

<table>
<tr>
<th>
Events</th><th>
Description</th></tr>
<tr>
<td>
{{ '[OutliningBeforeCollapse](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html)' | markdownify }}</td><td>
Occurs before the region is about to collapse.</td></tr>
<tr>
<td>
{{ '[OutliningBeforeExpand](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html)' | markdownify }}</td><td>
Occurs before the region is about to expand.</td></tr>
<tr>
<td>
{{ '[OutliningCollapse](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html)' | markdownify }}</td><td>
Occurs when the region collapses.</td></tr>
<tr>
<td>
{{ '[OutliningExpand](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html)' | markdownify }}</td><td>
Occurs when the region expands.</td></tr>
<tr>
<td>
{{ '[CollapsedAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html)' | markdownify }}</td><td>
Occurs when CollapseAll the function was called.</td></tr>
<tr>
<td>
{{ '[ExpandedAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html)' | markdownify }}</td><td>
Occurs when ExpandedAll the function was called.</td></tr>
<tr>
<td>
{{ '[CollapsingAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html)' | markdownify }}</td><td>
Occurs when CollapseAll the function is called.</td></tr>
<tr>
<td>
{{ '[ExpandingAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html)' | markdownify }}</td><td>
Occurs when ExpandAll the function is called.</td></tr>
</table>

These events can be canceled and can be used to optionally cancel the outlining collapse and expand operations respectively. They are discussed in detail in the EditControl events section.

**Outlining tooltip**

The EditControl provides `Tooltip` support for Outlining. Outlining Tooltip is displayed for each collapsed outlining block. It shows the contents of the collapsed block. The Outlining Tooltip can be optionally shown or hidden by using the [ShowOutliningTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ShowOutliningTooltip) property in EditControl. Its default value is `true`.

{% tabs %}

{% highlight C# %}

// Show the tooltip for outlining block.

this.editControl1.ShowOutliningTooltip = true;

{% endhighlight %}


{% highlight VB %}

` Show the tooltip for outlining block.

Me.editControl1.ShowOutliningTooltip = True

{% endhighlight %}

{% endtabs %}

![Collapsible region tooltip in syntax editor](Text-Visualization_images/Text-Visualization_img1.png)

The EditControl supports the following outlining tooltip events.

<table>
<tr>
<th>
Events</th><th>
Description</th></tr>
<tr>
<td>
{{ '[OutliningTooltipBeforePopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html)' | markdownify }}</td><td>
Occurs when outlining tooltip is to be shown.</td></tr>
<tr>
<td>
{{ '[OutliningTooltipPopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html)' | markdownify }}</td><td>
Occurs when outlining tooltip is shown.</td></tr>
<tr>
<td>
{{ '[OutliningTooltipClose](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html)' | markdownify }}</td><td>
Occurs when outlining tooltip is closed.</td></tr>
</table>

The [OutliningTooltipBeforePopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html) event is used to control the visibility of the outlining tooltip. The [ShowMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.OutliningTooltipBeforePopupEventArgs.html#Syncfusion_Windows_Forms_Edit_OutliningTooltipBeforePopupEventArgs_ShowMode) property of the [OutliningTooltipBeforePopupEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.OutliningTooltipBeforePopupEventArgs.html) is used for this purpose. By default, the ShowMode property is set to On.

{% tabs %}

{% highlight C# %}

private void editControl1_OutliningTooltipBeforePopup(object sender, Syncfusion.Windows.Forms.Edit.OutliningTooltipBeforePopupEventArgs e)

{

   // To display the outlining tooltip

   e.ShowMode = OutliningTooltipShowMode.On;

   // To hide the outlining tooltip

   e.ShowMode = OutliningTooltipShowMode.Off;

}


{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_OutliningTooltipBeforePopup(sender As Object, e As Syncfusion.Windows.Forms.Edit.OutliningTooltipBeforePopupEventArgs) Handles editControl1.OutliningTooltipBeforePopup

   ' To display the outlining tooltip

   e.ShowMode = OutliningTooltipShowMode.On

   ' To hide the outlining tooltip

   e.ShowMode = OutliningTooltipShowMode.Off

End Sub

{% endhighlight %}

{% endtabs %}

## Word wrap

Supports text wrapping to next line when it exceeds the control bounds. WordWrap functionality in the EditControl can be enabled or disabled by using the [WordWrap](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WordWrap) property. Its default value is `false`. To enable wrapping functionality in the EditControl, turn on its value to `true`.

### Word wrap by bounds

Provides extensive support for different modes of wrapping. Types of available wrapping modes in the EditControl are:

* Control
* SpecifiedColumn
* WordWrapMargin

Provided options wraps the text at boundary between text area and word wrap margin of the EditControl. The area beyond the text area in the EditControl is referred to as the `WordWrapMargin`. Hence, the width of the word wrap margin is the difference between EditControls width and the TextArea width. `Column` mode wraps the text at the edge of the EditControl. SpecifiedColumn mode wraps the text at the specified column specified in the WordWrapColumn property. The default WordWrapMode is `Control`. The following properties are associated with setting the mode of word wrapping.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[WordWrapMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WordWrapMode)' | markdownify }}</td><td>
Specifies the state of the word wrapping mode.</td></tr>
<tr>
<td>
{{ '[WordWrapColumnMeasuringFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WordWrapColumnMeasuringFont)' | markdownify }}</td><td>
Specifies the font used while calculating the position of WordWrapColumn.</td></tr>
<tr>
<td>
{{ '[WordWrapColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WordWrapColumn)' | markdownify }}</td><td>
Specifies the column for wrapping text. Used when WordWrapMode is set to SpecifiedColumn. The default value is 100.</td></tr>
<tr>
<td>
{{ '[TextAreaWidth](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_TextAreaWidth)' | markdownify }}</td><td>
Specifies the width of the text area of the EditControl. The default value is 600.</td></tr>
<tr>
<td>
{{ '[WrappedLinesOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WrappedLinesOffset)' | markdownify }}</td><td>
Specifies offset of wrapped lines.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Sets the WordWrap mode.

this.editControl1.WordWrapMode = Syncfusion.Windows.Forms.Edit.Enums.WordWrapMode.WordWrapMargin;

// Sets font that is used while calculating the position of the WordWrap column.

this.editControl1.WordWrapColumnMeasuringFont = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

// Specifies column for wrapping text.

this.editControl1.WordWrapColumn = 125;

// Set the width of the EditControl's text area.

this.editControl1.TextAreaWidth = 300;

// Specifies offset for the wrapped lines.

this.editControl1.WrappedLinesOffset = 10;

{% endhighlight %}


{% highlight VB %}

' Sets the WordWrap mode.

Me.editControl1.WordWrapMode = Syncfusion.Windows.Forms.Edit.Enums.WordWrapMode.WordWrapMargin

' Sets font that is used while calculating the position of the WordWrap column.

Me.editControl1.WordWrapColumnMeasuringFont = New System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (CType((0), Byte)))

' Specifies column for wrapping text.

Me.editControl1.WordWrapColumn = 125

' Set the width of the EditControl's text area.

Me.editControl1.TextAreaWidth = 300

' Specifies offset for the wrapped lines.

Me.editControl1.WrappedLinesOffset = 10

{% endhighlight %}

{% endtabs %}

### Word wrap by content

By using the `WordWrapType` property, you can set different types for wrapping words in the EditControl. The two types of word wrapping in the EditControl are: 

* Wrapping by character
* Wrapping by word

Its default value is `WrapByWord`. The following table explains the same.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[WordWrap](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WordWrap)' | markdownify }}</td><td>
Specifies the state of word wrapping mode.</td></tr>
<tr>
<td>
{{ '[WordWrapType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WordWrapType)' | markdownify }}</td><td>
Specifies the type of word wrapping. The options provided are * {{ '_WrapByChar_' | markdownify }} - wraps the text by individual characters* {{ '_WrapByWord_' | markdownify }}: wraps the text by individual words.<br>The default value is WrapByWord.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// WordWrap property set.

this.editControl1.WordWrap = true;

// WordWrapType property set.

this.editControl1.WordWrapType = Syncfusion.Windows.Forms.Edit.Enums.WordWrapType.WrapByChar;

{% endhighlight %}


{% highlight VB %}

' WordWrap property set.

Me.editControl1.WordWrap = True

' WordWrapType property set.

Me.editControl1.WordWrapType = Syncfusion.Windows.Forms.Edit.Enums.WordWrapType.WrapByChar

{% endhighlight %}

{% endtabs %}

![Text wrapped to next line in syntax editor](Text-Visualization_images/Text-Visualization_img15.png)

{% tabs %}

{% highlight C# %}

// WordWrap property set.

this.editControl1.WordWrap = true;

// WordWrapType property set.

this.editControl1.WordWrapType = Syncfusion.Windows.Forms.Edit.Enums.WordWrapType.WrapByWord;

{% endhighlight %}


{% highlight VB %}

' WordWrap property set.

Me.editControl1.WordWrap = True

' WordWrapType property set.

Me.editControl1.WordWrapType = Syncfusion.Windows.Forms.Edit.Enums.WordWrapType.WrapByWord

{% endhighlight %}

{% endtabs %}

![Word wrapped in syntax editor based on word](Text-Visualization_images/Text-Visualization_img16.png)

**WordWrap margin customization**

WordWrap margin can be enabled or disabled by using the [WordWrapMarginVisible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WordWrapMarginVisible) property in the EditControl. Its default value is `false`. WordWrap margin of the EditControl can be set and customized by using the following given properties.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[WordWrapMarginLineStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WordWrapMarginLineStyle)' | markdownify }}</td><td>
Specifies style of line drawn at the border of the word wrap margin. The options provided are* Solid* Dash* Dot* DashDot* DashDotDot* Custom.<br>The default value is {{ '_Solid_' | markdownify }}.</td></tr>
<tr>
<td>
{{ '[WordWrapMarginLineColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WordWrapMarginLineColor)' | markdownify }}</td><td>
Sets custom color for the line drawn at the border of the word wrap margin.</td></tr>
<tr>
<td>
{{ '[WordWrapMarginBrush](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WordWrapMarginBrush)' | markdownify }}</td><td>
Specifies the BrushInfo object used when the area situated after the text area is drawn.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Specifies whether the word wrap margin should be visible.

this.editControl1.WordWrapMarginVisible = true;

// Specifies the line style of the word wrap margin.

this.editControl1.WordWrapMarginLineStyle = DashStyle.Dash;

// Specifies the line color of the word wrap margin.

this.editControl1.WordWrapMarginLineColor = Color.Green;

// Specifies the BrushInfo object that is used when the area situated after the text area is drawn.

this.editControl1.WordWrapMarginBrush = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal, System.Drawing.Color.White, System.Drawing.Color.LightSalmon);

{% endhighlight %}


{% highlight VB %}

' Specifies whether the word wrap margin should be visible.

Me.editControl1.WordWrapMarginVisible = True

// Specifies the line style of the word wrap margin.

Me.editControl1.WordWrapMarginLineStyle = System.Drawing.Drawing2D.DashStyle.Dash

// Specifies the line color of the word wrap margin.

Me.editControl1.WordWrapMarginLineColor = System.Drawing.Color.Green

// Specifies the BrushInfo object that is used when the area situated after the text area is drawn.

Me.editControl1.WordWrapMarginBrush = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal, System.Drawing.Color.White, System.Drawing.Color.LightSalmon)

{% endhighlight %}

{% endtabs %}

![Margin for word wrap in syntax editor](Text-Visualization_images/Text-Visualization_img3.png)

**Line wrapping images**

In the EditControl, it is possible to associate images to indicate line wrapping. This feature can be turned on by setting the [MarkLineWrapping](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_MarkLineWrapping) property to `true`. There are two types of image indicators:

* Images that indicates the line being wrapped. These are displayed at the beginning of the line being wrapped. This can be set by using the [CustomWrappedLinesMarkingImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_CustomWrappedLinesMarkingImage) property.
* Images that indicates the point at which the line is being wrapped. This can be set by using the [CustomLineWrappingMarkingImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_CustomLineWrappingMarkingImage) property.

The [MarkWrappedLines](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_MarkWrappedLines) property in the EditControl is used to indicate whether the wrapped lines should be marked or not.

{% tabs %}

{% highlight C# %}

// Enable images to indicate line wrapping.

this.editControl1.MarkLineWrapping = true;

// Images that indicate the line that is being wrapped.

this.editControl1.CustomWrappedLinesMarkingImage = ((System.Drawing.Image)(resources.GetObject("$this.CustomWordWrap_image")));

// Images that indicate the point at which the line is being wrapped.

this.editControl1.CustomLineWrappingMarkingImage = ((System.Drawing.Image)(resources.GetObject("$this.CustomWordWrap_image")));

// Indicate wrapped lines.

this.editControl1.MarkWrappedLines = true;

{% endhighlight %}


{% highlight VB %}

' Enable images to indicate line wrapping.

Me.editControl1.MarkLineWrapping = True

' Images that indicate the line that is being wrapped.

Me.editControl1.CustomWrappedLinesMarkingImage = (CType((resources.GetObject("$this.CustomWordWrap_image")), System.Drawing.Image))

' Images that indicate the point at which the line is being wrapped.

Me.editControl1.CustomLineWrappingMarkingImage = (CType((resources.GetObject("$this.CustomWordWrap_image")), System.Drawing.Image))

' Indicate wrapped lines.

Me.editControl1.MarkWrappedLines = True

{% endhighlight %}

{% endtabs %}

![Customized line wrapped marker in syntax editor](Text-Visualization_images/Text-Visualization_img4.jpeg)

N> Refer to the following sample link that demonstrates the `WordWrap` functionalities in the EditControl:
C:\Users\&lt;User&gt;\AppData\Syncfusion\EssentialStudio\Version Number\Windows\Edit.Windows\Samples\Text Operations\Word Wrap

## Line number

Displays the line number at the start position of line. Line numbers can be automatically assigned to the contents of the EditControl by enabling the [ShowLineNumbers](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ShowLineNumbers) property. Its default value is `true`. The number of lines in the EditControl can be obtained by using the [PhysicalLineCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PhysicalLineCount) property.

{% tabs %}

{% highlight C# %}

// Assigning Line Numbers to the contents of the EditControl.

this.editControl1.ShowLineNumbers = true;

// Specifies the number of lines in the EditControl.

int actualLineCount = this.editControl1.PhysicalLineCount;

{% endhighlight %}


{% highlight VB %}

' Assigning Line Numbers to the contents of the EditControl.

Me.editControl1.ShowLineNumbers = True

' Specifies the number of lines in the EditControl.

Dim actualLineCount As Integer = Me.editControl1.PhysicalLineCount

{% endhighlight %}

{% endtabs %}

### Customize line number appearance

Provides options to customize the foreground, background, and font of line number. 

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[LineNumbersAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_LineNumbersAlignment)' | markdownify }}</td><td>
Specifies the alignment of line numbers.</td></tr>
<tr>
<td>
{{ '[LineNumbersColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_LineNumbersColor)' | markdownify }}</td><td>
Specifies the color of line numbers.</td></tr>
<tr>
<td>
{{ '[LineNumbersFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_LineNumbersFont)' | markdownify }}</td><td>
Specifies the font of line numbers</td></tr>
<tr>
<td>
{{ '[SelectOnLineNumberClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_SelectOnLineNumberClick)' | markdownify }} </td><td>
Specifies a value indicating whether click on line numbers performs selection.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Specify the alignment of line numbers.

this.editControl1.LineNumbersAlignment = Syncfusion.Windows.Forms.Edit.Enums.LineNumberAlignment.Right;

// Assign any color to the line numbers.

this.editControl1.LineNumbersColor = Color.IndianRed;

// Assign any font to the line numbers.

this.editControl1.LineNumbersFont = new Font("Verdana", 9);

// Enabling SelectOnLineNumberClick property to perform selection on clicking the line numbers. 

this.editControl1.SelectOnLineNumberClick = true;

{% endhighlight %}


{% highlight VB %}

' Specify the alignment of line numbers.

Me.editControl1.LineNumbersAlignment = Syncfusion.Windows.Forms.Edit.Enums.LineNumberAlignment.Right

' Assign any color to the line numbers.

Me.editControl1.LineNumbersColor = Color.IndianRed

' Assign any font to the line numbers.

Me.editControl1.LineNumbersFont = new Font("Verdana", 9)

' Enabling SelectOnLineNumberClick property to perform selection on clicking the line numbers. 

Me.editControl1.SelectOnLineNumberClick = True

{% endhighlight %}

{% endtabs %}

![Display line numbers with customized font in syntax editor](Text-Visualization_images/Text-Visualization_img5.jpeg)

### Custom draw line number

Line number can be drawn by using the [BeforeLineNumberPaint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html) event. This event comprises with built-in properties to customize bounds, foreground color, graphics, line number, line numbers alignment, and font.

{% tabs %}

{% highlight C# %}

// declare the event

this.editControl1.BeforeLineNumberPaint += EditControl1_BeforeLineNumberPaint;

// event definition

private void EditControl1_BeforeLineNumberPaint(object sender, LineNumberPaintEventArgs e)
{

   if (e.LineNumber % 5 == 0)
   {

      e.Graphics.DrawString(e.LineNumber.ToString(), new Font("Bernard MT Condensed", 15), new SolidBrush(Color.Red), new RectangleF(e.Bounds.Left + 3, e.Bounds.Top + 3, e.Bounds.Width + 20, e.Bounds.Height + 20));
   }
   else
   {
       e.Graphics.DrawString(e.LineNumber.ToString(), new Font("Bernard MT Condensed", 15), new SolidBrush(Color.Blue), new RectangleF(e.Bounds.Left + 3, e.Bounds.Top + 3, e.Bounds.Width + 20, e.Bounds.Height + 20));
   }
       e.Handled = true;
 } 

{% endhighlight %}


{% highlight VB %}

Me.editControl1.BeforeLineNumberPaint += EditControl1_BeforeLineNumberPaint

// event definition

private Sub EditControl1_BeforeLineNumberPaint(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles editControl1.BeforeLineNumberPaint
{
   If e.LineNumber % 5 == 0 Then
   {

      e.Graphics.DrawString(e.LineNumber.ToString(), new Font("Bernard MT Condensed", 15), new SolidBrush(Color.Red), new RectangleF(e.Bounds.Left + 3, e.Bounds.Top + 3, e.Bounds.Width + 20, e.Bounds.Height + 20))
   }
   Else
   {
       e.Graphics.DrawString(e.LineNumber.ToString(), new Font("Bernard MT Condensed", 15), new SolidBrush(Color.Blue), new RectangleF(e.Bounds.Left + 3, e.Bounds.Top + 3, e.Bounds.Width + 20, e.Bounds.Height + 20))
   }
       e.Handled = True
 } 

{% endhighlight %}

{% endtabs %}

![Customize line number appearance in syntax editor](Text-Visualization_images/Text-Visualization_img14.png)

#### Line backcolor

Background format of a line can be customized by using the [SetLineBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_SetLineBackColor_System_Int32_System_Boolean_Syncfusion_Windows_Forms_Edit_Interfaces_IBackgroundFormat_) function where line number, fill complete line, or text area and format can be specified. 

{% tabs %}

{% highlight C# %}

// Register a backcolor format with EditControl.

IBackgroundFormat format = this.editControl1.RegisterBackColorFormat(Color.Aquamarine, Color.Beige, System.Drawing.Drawing2D.HatchStyle.Cross, true);

// Set the background for the entire line of text.

this.editControl1.SetLineBackColor(5, true, format);

{% endhighlight %}


{% highlight VB %}

' Register a backcolor format with EditControl.

Dim IBackgroundFormat As format = Me.editControl1.RegisterBackColorFormat(Color.Aquamarine, Color.Beige, System.Drawing.Drawing2D.HatchStyle.Cross, True)

' Set the background for the entire line of text. 

Me.editControl1.SetLineBackColor(5, True, format)

{% endhighlight %}

{% endtabs %}

#### Background fill formats

Background formats for a line can be defined by using the [IBackgroundFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.IBackgroundFormat.html) interface and [RegisterBackColorFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_RegisterBackColorFormat_System_Drawing_Color_System_Drawing_Color_) function where format attributes can be specified. 

{% tabs %}

{% highlight C# %}

// Register a backcolor format with EditControl.

IBackgroundFormat format = this.editControl1.RegisterBackColorFormat(Color.Aquamarine, Color.Beige, System.Drawing.Drawing2D.HatchStyle.Cross, true);

{% endhighlight %}


{% highlight VB %}

' Register a backcolor format with EditControl.

Dim IBackgroundFormat As format = Me.editControl1.RegisterBackColorFormat(Color.Aquamarine, Color.Beige, System.Drawing.Drawing2D.HatchStyle.Cross, True)

{% endhighlight %}

{% endtabs %}

#### Set line background for current line

Background format can be customized for the current line by using the [SetSelectionBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_SetSelectionBackColor_Syncfusion_Windows_Forms_Edit_Interfaces_IBackgroundFormat_) function where format for the line can be specified.

{% tabs %}

{% highlight C# %}

// Register a backcolor format with EditControl.

IBackgroundFormat format = this.editControl1.RegisterBackColorFormat(Color.Aquamarine, Color.Beige, System.Drawing.Drawing2D.HatchStyle.Cross, true);

// Set the background for the entire line of text.

this.editControl1.SetLineBackColor(editControl1.CurrentLine, true, format);

// Set the background for the selected block of text.        

this.editControl1.SetSelectionBackColor(format);

{% endhighlight %}


{% highlight VB %}

' Register a backcolor format with EditControl.

Dim IBackgroundFormat As format = Me.editControl1.RegisterBackColorFormat(Color.Aquamarine, Color.Beige, System.Drawing.Drawing2D.HatchStyle.Cross, True)

' Set the background for the entire line of text. 

Me.editControl1.SetLineBackColor(editControl1.CurrentLine, True, format)

' Set the background for the selected block of text.        

Me.editControl1.SetSelectionBackColor(format)

{% endhighlight %}

{% endtabs %}

![Customized selected text backcolor in syntax editor](Appearance_images/Appearance_img25.jpeg)

## Remove applied line background color

Background format for a line can be removed by using the [RemoveLineBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_RemoveLineBackColor_System_Int32_) function where the line whose format should be removed will be specified. 

{% tabs %}

{% highlight C# %}

this.editControl1.RemoveLineBackColor(5);

{% endhighlight %}


{% highlight VB %}

Me.editControl1.RemoveLineBackColor(5)

{% endhighlight %}

{% endtabs %}

## Highlighting current line 

You can highlight the current line where the mouse pointer is present by setting the [HighlightCurrentLine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_HighlightCurrentLine) property to `true`. Its default value is `false`. By using the [CurrentLineHighlightColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_CurrentLineHighlightColor) property, you can set color for the highlighted line. 

{% tabs %}

{% highlight C# %}

this.editControl1.HighlightCurrentLine = true;

this.editControl1.CurrentLineHighlightColor = Color.Orange;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.HighlightCurrentLine = True

Me.editControl1.CurrentLineHighlightColor = Color.Orange

{% endhighlight %}

{% endtabs %}

![Highlight current line in syntax editor](Text-Visualization_images/Text-Visualization_img6.png)

## Underline

The EditControl allows you to underline any desired text in its contents. 

### Underline formats 

Underlines can be of different styles, colors, and weights with each of them being used to convey a different meaning. You can also specify the weight of the underlines to be single or double. The EditControl supports underlines of the following styles: 

* Solid 
* Dot
* Dash
* Wave
* DashDot

Before applying underlining to the selected text, a custom underlining format has to be defined. The RegisterUnderlineFormat function of ISnippetFormat, registers the custom underline format to be used while underlining a region. Parameters passed in the RegisterUnderlineFormat function are:

The `SelectedColor` value can be set to any desired color. The `SelectedStyle` value is specified by using the UnderlineStyle enumerator. The `SelectedWeight` value is specified by using the UnderlineWeight enumerator.

<table>
<tr>
<th>
EditControl underline enumerator</th><th>
Description</th></tr>
<tr>
<td>
UnderlineStyle</td><td>
UnderlineStyle.Solid(default),UnderlineStyle.Dot, UnderlineStyle.Dash, UnderlineStyle.Wave, and UnderlineStyle.DashDot</td></tr>
<tr>
<td>
UnderlineWeight</td><td>
UnderlineWeight.Thick(default) and UnderlineWeight.Double</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Registers the custom underline format.

ISnippetFormat format = editControl1.RegisterUnderlineFormat(Color.Red, UnderlineStyle.Wave, UnderlineWeight.Bold);

{% endhighlight %}


{% highlight VB %}

' Registers the custom underline format.

Dim format As ISnippetFormat = editControl1.RegisterUnderlineFormat(Color.Red, UnderlineStyle.Wave, UnderlineWeight.Bold)

{% endhighlight %}

{% endtabs %}

### Set up underline for current line

The [SetUnderline](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_SetUnderline_Syncfusion_Windows_Forms_Edit_Utils_CoordinatePoint_Syncfusion_Windows_Forms_Edit_Utils_CoordinatePoint_Syncfusion_Windows_Forms_Edit_Interfaces_ISnippetFormat_) function is used to set underlining for the selected text region. 

{% tabs %}

{% highlight C# %}

// Sets underlining of the specified text region

this.editControl1.SetUnderline(new Point(1, 1), new Point(8, 8), format);

{% endhighlight %}


{% highlight VB %}

' Sets underlining of the specified text region

Me.editControl1.SetUnderline(New Point(1, 1), New Point(8, 8), format)

{% endhighlight %}

{% endtabs %}

![Underline text in syntax editor](Text-Visualization_images/Text-Visualization_img17.png)

### Remove applied underline

You can remove the applied underlining region by using the [RemoveUnderline](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_RemoveUnderline_Syncfusion_Windows_Forms_Edit_Utils_CoordinatePoint_Syncfusion_Windows_Forms_Edit_Utils_CoordinatePoint_) function in the EditControl.

{% tabs %}

{% highlight C# %}

// Removes underlining in the specified region

this.editControl1.RemoveUnderline(new Point(1, 1), new Point(8, 8));

{% endhighlight %}


{% highlight VB %}

' Removes underlining in the specified region

Me.editControl1.RemoveUnderline(New Point(1, 1), New Point(8, 8))

{% endhighlight %}

{% endtabs %}

### Underlining using configuration file

You can also set the underlining from the configuration file.

{% highlight xaml %}

<formats>
  <format name="Error" Font="Courier New, 10pt" FontColor="Black" underline="Wave" LineColor="Red" />
</formats>

<lexems>
<lexem BeginBlock="#endregion" Type="Error" Priority="-10" />
<lexem BeginBlock="#endif" Type="Error" Priority="-10" />
<lexem BeginBlock="#else" Type="Error" Priority="-10" />
</lexems>

{% endhighlight %}

![underline error word in syntax editor](Syntax-Highlighting-and-Code-Coloring_images/Syntax-Highlighting-and-Code-Coloring_img16.png)

### Strike out

The [StrikeThrough](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_StrikeThrough_Syncfusion_Windows_Forms_Edit_Utils_CoordinatePoint_Syncfusion_Windows_Forms_Edit_Utils_CoordinatePoint_System_Drawing_Color_) function helps to draw horizontal line through the vertical center of text. This is a very useful feature in denoting text that was deleted from the original document or highlighting offending code. You can also specify any custom color for the strikethrough line.

{% tabs %}

{% highlight C# %}

// Strikeout the current line.

this.editControl1.StrikeThrough(this.editControl1.CurrentLine, Color.IndianRed);

// Strikeout the text in the specified text range.

this.editControl1.StrikeThrough(new Point(1, 1), new Point(8, 8), Color.Orange);

{% endhighlight %}


{% highlight VB %}

' Strikeout the current line.

Me.editControl1.StrikeThrough(Me.editControl1.CurrentLine, Color.IndianRed)

' Strikeout the text in the specified text range.

Me.editControl1.StrikeThrough(New Point(1, 1), New Point(8, 8), Color.Orange)

{% endhighlight %}

{% endtabs %}

To remove the strikethrough line, just call one of the above mentioned functions and specify the Color parameter as Color.Empty.

![Strike out contents in syntax editor](Text-Visualization_images/Text-Visualization_img8.png)

## Bookmark indicators 

The EditControl enables user to locate a section or a line of a document for quick access to any part of the contents. This can be enabled or disabled by using the [ShowIndicatorMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ShowIndicatorMargin) property. Its default value is `true`. To hide the indicator margin turn on its value to `false`. The [MarkerAreaWidth](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_MarkerAreaWidth) property in the EditControl sets the width of marker area.

{% tabs %}

{% highlight C# %}

// Displays the Indicator margin.

this.editControl1.ShowIndicatorMargin = true;

// Sets the width of the Indicator margin.

this.editControl1.MarkerAreaWidth = 20;

{% endhighlight %}


{% highlight VB %}

' Displays the Indicator margin.

Me.editControl1.ShowIndicatorMargin = True

' Sets the width of the Indicator margin.

Me.editControl1.MarkerAreaWidth = 20

{% endhighlight %}

{% endtabs %}

You can either display the default bookmark image (like in Visual Studio.NET) or custom indicator by making use of the following functions of the EditControl.

<table>
<tr>
<th>
Functions</th><th>
Description</th></tr>
<tr>
<td>
{{ '[BookmarkToggle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_BookmarkToggle)' | markdownify }}</td><td>
Sets bookmark to the current line.</td></tr>
<tr>
<td>
{{ '[BookmarkAdd](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_BookmarkAdd_System_Int32_)' | markdownify }}</td><td>
Sets bookmark at the specified line.</td></tr>
<tr>
<td>
{{ '[BookmarkRemove](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_BookmarkRemove_Syncfusion_Windows_Forms_Edit_Interfaces_IBookmark_)' | markdownify }}</td><td>
Removes bookmark at the specified line.</td></tr>
<tr>
<td>
{{ '[BookmarkGet](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_BookmarkGet_System_Int32_)' | markdownify }}</td><td>
Specifies the bookmark at the specified line.</td></tr>
<tr>
<td>
{{ '[BookmarkNext](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_BookmarkNext)' | markdownify }}</td><td>
Goes to the next bookmark.</td></tr>
<tr>
<td>
{{ '[BookmarkPrevious](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_BookmarkPrevious)' | markdownify }}</td><td>
Goes to the previous bookmark.</td></tr>
<tr>
<td>
{{ '[BookmarkClear](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_BookmarkClear)' | markdownify }}</td><td>
Clears all the bookmarks.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Sets bookmark at the specified line.

this.editControl1.BookmarkAdd(this.editControl1.CurrentLine);

// Removes bookmark at the specified line.

this.editControl1.BookmarkRemove(this.editControl1.CurrentLine);

// Draw the bookmark with custom look and feel specified in the BrushInfo object.

BrushInfo brushInfo = new BrushInfo(GradientStyle.ForwardDiagonal, Color.IndianRed, Color.Ivory);

this.editControl1.BookmarkAdd(this.editControl1.CurrentLine, brushInfo);

// Get the Bookmark object of the current line.

IBookmark bookmark = this.editControl1.BookmarkGet(this.editControl1.CurrentLine);

{% endhighlight %}


{% highlight VB %}

' Sets bookmark at the specified line.

Me.editControl1.BookmarkAdd(Me.editControl1.CurrentLine)

' Removes bookmark at the specified line.

Me.editControl1.BookmarkRemove(Me.editControl1.CurrentLine)

' Draw the bookmark with custom look and feel specified in the BrushInfo object.

Dim brushInfo As BrushInfo = new BrushInfo(GradientStyle.ForwardDiagonal, Color.IndianRed, Color.Ivory)

Me.editControl1.BookmarkAdd(Me.editControl1.CurrentLine, brushInfo)

' Get the Bookmark object of the current line.

Dim bookmark As IBookmark = Me.EditControl1.BookmarkGet(Me.EditControl1.CurrentLine)

{% endhighlight %}

{% endtabs %}

![Break points with code editing in syntx editor](Text-Visualization_images/Text-Visualization_img18.png)

### Custom bookmark indicator

The [SetCustomBookmark](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_SetCustomBookmark_System_Int32_Syncfusion_Windows_Forms_Edit_BookmarkPaintEventHandler_) function is used to set Bookmarks. It can also be removed by using the [RemoveCustomBookmark](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_RemoveCustomBookmark_System_Int32_Syncfusion_Windows_Forms_Edit_BookmarkPaintEventHandler_) function in the EditControl.

Bookmarks can be set by using the `SetCustomBookmark` function which do not respond to the `BookmarkNext` and `BookmarkPrevious` functions automatically. To enable this, set the `UseInBookmarkSearch` property of the custom bookmark to `true`.

{% tabs %}

{% highlight C# %}

Color borderColor;

 private void CustomBookmarkPainter(object sender, BookmarkPaintEventArgs e)
 {
      borderColor = ColorTranslator.FromHtml("#f6f6f6");
      SolidBrush brush = new SolidBrush(Color.Red); 
      e.Graphics.FillEllipse(brush, e.ClipRectangle.X,e.ClipRectangle.Y,e.ClipRectangle.Width-2,e.ClipRectangle.Height-2);
      e.Graphics.DrawEllipse(new Pen(borderColor,3), e.ClipRectangle.X, e.ClipRectangle.Y, e.ClipRectangle.Width - 2, e.ClipRectangle.Height - 2);
}

// Sets custom bookmarks and enables it to respond to BookmarkNext and BookmarkPrevious functions.

ICustomBookmark customBookmark = this.editControl1.SetCustomBookmark(this.editControl1.CurrentLine, new BookmarkPaintEventHandler(CustomBookmarkPainter));

customBookmark.UseInBookmarkSearch = true;

// Removes the bookmark of the current line.

ICustomBookmark customBookmark = this.editControl1.RemoveCustomBookmark(this.editControl1.CurrentLine, BookmarkPaintEventHandler(CustomBookmarkPainter));

{% endhighlight %}


{% highlight VB %}

Private Sub CustomBookmarkPainter(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.BookmarkPaintEventArgs)

   borderColor = ColorTranslator.FromHtml("#f6f6f6")
   SolidBrush brush = new SolidBrush(Color.Red) 
   e.Graphics.FillEllipse(brush, e.ClipRectangle.X,e.ClipRectangle.Y,e.ClipRectangle.Width-2,e.ClipRectangle.Height-2)
   e.Graphics.DrawEllipse(new Pen(borderColor, 3), e.ClipRectangle.X, e.ClipRectangle.Y, e.ClipRectangle.Width - 2, e.ClipRectangle.Height - 2)

End Sub

' Sets custom bookmarks and enables it to respond to BookmarkNext and BookmarkPrevious functions.

Dim customBookmark As ICustomBookmark = Me.editControl1.SetCustomBookmark(Me.editControl1.CurrentLine, New BookmarkPaintEventHandler(CustomBookmarkPainter))

customBookmark.UseInBookmarkSearch = True

' Removes the bookmark of the current line.

Dim customBookmark As ICustomBookmark = Me.editControl1.RemoveCustomBookmark(Me.editControl1.CurrentLine, BookmarkPaintEventHandler(CustomBookmarkPainter))

{% endhighlight %}

{% endtabs %}

![Bookmark indicators in syntax editor](Text-Visualization_images/Text-Visualization_img9.png)

**Setting tooltips for bookmarks**

Tooltips can be set for bookmarks by using the [UpdateBookmarkToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html) event. Tooltips of the bookmarks can be enabled or disabled by using the [ShowBookmarkTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ShowBookmarkTooltip) property. 

{% tabs %}

{% highlight C# %}

this.editControl1.UpdateBookmarkToolTip += EditControl1_UpdateBookmarkToolTip;

private void EditControl1_UpdateBookmarkToolTip(object sender, UpdateBookmarkTooltipEventArgs e)
{
   // Tooltip will not be shown, when this text is empty.  
    e.Text = "Bookmark Tooltip";
}

{% endhighlight %}


{% highlight VB %}

AddHandler Me.editControl1.UpdateBookmarkToolTip, AddressOf EditControl1_UpdateBookmarkToolTip

Private Sub editControl1_ConfigurationChanged(ByVal sender As Object, ByVal e As UpdateBookmarkTooltipEventArgs)

   ' Tooltip will not be shown, when this text is empty.  
    e.Text = "Bookmark Tooltip"

End Sub

{% endhighlight %}

{% endtabs %}

![Tooltip for bookmark indicators in syntax editor](Text-Visualization_images/Text-Visualization_img19.png)

Tooltip background and border color can be customized by using the [BookmarkTooltipBackgroundBrush](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_BookmarkTooltipBackgroundBrush) and [BookmarkTooltipBorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_BookmarkTooltipBorderColor) properties in the EditControl.

{% tabs %}

{% highlight C# %}

// Shows the tooltip of the bookmark.

this.editControl1.ShowBookmarkTooltip = true;

// Specifies brush for bookmark tooltip background.

this.editControl1.BookmarkTooltipBackgroundBrush = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.PatternStyle.Percent05, System.Drawing.SystemColors.WindowText, System.Drawing.Color.Violet);

// Specify the color of the bookmark tooltip form border.

this.editControl1.BookmarkTooltipBorderColor = System.Drawing.Color.Red;

{% endhighlight %}


{% highlight VB %}

' Shows the tooltip of the bookmark.

Me.editControl1.ShowBookmarkTooltip = True

' Specifies brush for bookmark tooltip background.

Me.editControl1.BookmarkTooltipBackgroundBrush = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.PatternStyle.Percent05, System.Drawing.SystemColors.WindowText, System.Drawing.Color.Violet)

' Specify the color of the bookmark tooltip form border.

Me.editControl1.BookmarkTooltipBorderColor = System.Drawing.Color.Red

{% endhighlight %}

{% endtabs %}

![Customize tooltip background and foreground for bookmark indicator](Text-Visualization_images/Text-Visualization_img20.png)

N> Refer to the following sample link that demonstrates the bookmark functionalities in the EditControl:
C:\Users\&lt;User&gt;\AppData\Syncfusion\EssentialStudio\Version Number\Windows\Edit.Windows\Samples\Product Showcase\VisualStudioDemo

## Content dividers

Supports content dividers similar to Visual Studio code editor that clearly distinguish content sections with line dividers to improve the code readability. Content Dividers can be enabled or disabled by using the [ShowContentDividers](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ShowContentDividers) property in the EditControl. Its default value is `true`.

![Content dividers in syntax editor](Text-Visualization_images/Text-Visualization_img11.png)

This feature can be enabled for sections of the EditControl contents by setting the `ContentDivider` field to  `true` within its lexem definition in the configuration file. 

{% highlight xaml %}

// Enable content dividers within its lexem definition in the configuration file.

<lexem BeginBlock="Function" EndBlock="End Function" Type="KeyWord" IsComplex="true" IsCollapsable="true" Indent="true"

        CollapseName="{Function...End Function}" AutoNameExpression='.*Function.*\s+(?<text>\w+)\s*\(' AutoNameTemplate="Function [${text}]"

        IsCollapseAutoNamed="true" ContentDivider="true" >

        <References>

          <reference RefID="777"/>

        </References>

        <SubLexems>

          <lexem BeginBlock="\n" IsBeginRegex="true" />

        </SubLexems>  

</lexem>

{% endhighlight %}

N> Refer to the following sample link that demonstrates the Content dividers functionalities in the EditControl:
C:\Users\&lt;User&gt;\AppData\Syncfusion\EssentialStudio\Version Number\Windows\Edit.Windows\Samples\Text Operations\Interactive operations

## Column guides

Provides support to draw a vertical lines based on the specified column positions that helps to ensure whether the lines do not go beyond a certain length. This can be enabled or hidden by setting the [ShowColumnGuides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ShowColumnGuides) property. Its default value is `true`. To hide the column guides, turn on its value to `false`. By using the [ColumnGuideItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Utils.ColumnGuideItem.html) Collection Editor, specifies the color and the location of the column guides. The font used to calculate the column location is customized by using the [ColumnGuidesMeasuringFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ColumnGuidesMeasuringFont) property.

{% tabs %}

{% highlight C# %}

// Enable Column Guides.

this.editControl1.ShowColumnGuides = true;

// Specify the color and the location of the Column Guides.

ColumnGuideItem[] columnGuideItem = new ColumnGuideItem[5];

columnGuideItem[0] = new ColumnGuideItem(5, Color.Red);

columnGuideItem[1] = new ColumnGuideItem(10, Color.Red);

columnGuideItem[2] = new ColumnGuideItem(15, Color.Red);

columnGuideItem[3] = new ColumnGuideItem(20, Color.Red);

columnGuideItem[4] = new ColumnGuideItem(25, Color.Red);

this.editControl1.ColumnGuideItems = columnGuideItem;

// Font used to calculate the column location.

this.editControl1.ColumnGuidesMeasuringFont = new Font("Microsoft Sans Serif", 12);

{% endhighlight %}


{% highlight VB %}

' Enable Column Guides.

Me.editControl1.ShowColumnGuides = True

' Specify the color and the location of the Column Guides.

Dim columnGuideItem As ColumnGuideItem() = New ColumnGuideItem(5) {}

columnGuideItem(0) = New ColumnGuideItem(5, Color.Red)

columnGuideItem(1) = New ColumnGuideItem(10, Color.Red) 

columnGuideItem(2) = New ColumnGuideItem(15, Color.Red)

columnGuideItem(3) = New ColumnGuideItem(20, Color.Red) 

columnGuideItem(4) = New ColumnGuideItem(25, Color.Red)

Me.editControl1.ColumnGuideItems = columnGuideItem

' Font used to calculate the column location.

Me.editControl1.ColumnGuidesMeasuringFont = New Font("Microsoft Sans Serif",12)

{% endhighlight %}

{% endtabs %}

![Column dividers in syntax editor](Text-Visualization_images/Text-Visualization_img12.png)

## Bracket highlighting 

The EditControl has one of the most powerful and intelligent bracket highlighting features. If the cursor is positioned on the end curly brace, most editors will match to the open curly brace in the string. On the contrary, the EditControl matches to the open curly brace for the function. The bracket highlighting feature can be turned on by enabling the [ShowIndentationGuidelines](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ShowIndentationGuidelines) or [OnlyHighlightMatchingBraces](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_OnlyHighlightMatchingBraces) property. Setting the OnlyHighlightMatchingBraces property to `true`, enables bracket highlighting whereas the indentation guidelines are not displayed.

{% tabs %}

{% highlight C# %}

this.editControl1.ShowIndentationGuidelines = true;
           
this.editControl1.OnlyHighlightMatchingBraces = true;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.ShowIndentationGuidelines = True
           
Me.editControl1.OnlyHighlightMatchingBraces = True

{% endhighlight %}

{% endtabs %}

![Bracket highlighting as like visual studio in syntax editor](Text-Visualization_images/Text-Visualization_img13.png)
