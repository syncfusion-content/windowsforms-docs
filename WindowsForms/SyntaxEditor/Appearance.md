---
layout: post
title: Customization of EditControl for Windows Forms
description: Customize the Text, Margin, Scrollbar and Splitters
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Appearance

Provides exclusive support to customize the background color, text, margin, split views, ScrollBar etc., Users can change the background color of the control, and even supports gradient effects by using the [BackgroundColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~BackgroundColor.html) property.

{% tabs %}

{% highlight C# %}

this.editControl1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.ForwardDiagonal, new System.Drawing.Color[] { System.Drawing.Color.LavenderBlush, System.Drawing.Color.AliceBlue, System.Drawing.Color.BlanchedAlmond });

{% endhighlight %}


{% highlight VB %}

Me.editControl1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.ForwardDiagonal, new System.Drawing.Color[] { System.Drawing.Color.LavenderBlush, System.Drawing.Color.AliceBlue, System.Drawing.Color.BlanchedAlmond })

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img1.jpg)

The customization features of the [EditControl](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl.html) are discussed under the following topics:

## Split views

Provides in-built support for horizontal and vertical splitters, which display a single document in several views with horizontal and vertical orientations, allowing users to work on different areas of a document at the same time. 

A maximum of four split views are supported. However, you can also limit the user to perform either a horizontal or vertical split, only if you wish to support two views instead of four. [SplitFourQuadrants](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SplitFourQuadrants.html) function is used to split the EditControl into four equal parts.

{% tabs %}

{% highlight C# %}

this.editControl1.SplitFourQuadrants();

{% endhighlight %}


{% highlight VB %}

Me.editControl1.SplitFourQuadrants()

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img2.jpg)

### Orientation

Split view can be oriented in both horizontal and vertical direction by using the following functions [SplitHorizontally](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SplitHorizontally.html) and [SplitVertically](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SplitVertically.html) of EditControl. These functions are used to split the EditControl into two equal horizontal and vertical halves.

{% tabs %}

{% highlight C# %}

this.editControl1.SplitHorizontally();

this.editControl1.SplitVertically();

{% endhighlight %}


{% highlight VB %}

Me.editControl1.SplitHorizontally()

Me.editControl1.SplitVertically()

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img27.png)

![](Appearance_images/Appearance_img26.png)


## Customize split views

In EditControl, user can customize the splitter background color and also disables the splitter. 

### Show horizontal splitter

The horizontal splitters can be enabled or disabled by setting [ShowHorizontalSplitters](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ShowHorizontalSplitters.html) property in EditControl.

{% tabs %}

{% highlight C# %}

// To enable the Splitters

this.editControl1.ShowHorizontalSplitters = false;

{% endhighlight %}


{% highlight VB %}

// To enable the Splitters

Me.editControl1.ShowHorizontalSplitters = False

{% endhighlight %}

{% endtabs %}

### Show vertical splitter

The vertical splitters can be enabled or disabled by setting [ShowVerticalSplitters](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ShowVerticalSplitters.html) property in EditControl.

{% tabs %}

{% highlight C# %}

// To enable the Splitters

this.editControl1.ShowVerticalSplitters = false;

{% endhighlight %}


{% highlight VB %}

// To enable the Splitters

Me.editControl1.ShowVerticalSplitters = False

{% endhighlight %}

{% endtabs %}

### Splitter background color 

[SplitterBackgroundBrush](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SplitterBackgroundBrush.html) property helps to customize the background color of horizontal or vertical splitter in EditControl.

{% tabs %}

{% highlight C# %}

// To customize Splitter Background

this.editControl1.SplitterBackgroundBrush = Brushes.Red;

{% endhighlight %}


{% highlight VB %}

// To customize Splitter Background

Me.editControl1.SplitterBackgroundBrush = Brushes.Red

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img3.jpg)

### Splitter position

In EditControl, Horizontal and Vertical splitters can be positioned at top, bottom and horizontal by using the following properties.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[HorizontalSplitterPosition](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~HorizontalSplitterPosition.html)' | markdownify }}</td><td>
Specifies position of the horizontal splitter</td></tr>
<tr>
<td>
{{ '[TopVerticalSplitterPosition](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~TopVerticalSplitterPosition.html)' | markdownify }}</td><td>
Specifies position of the top vertical splitter</td></tr>
<tr>
<td>
{{ '[BottomVerticalSplitterPosition](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~BottomVerticalSplitterPosition.html)' | markdownify }}</td><td>
Specifies position of the bottom vertical splitter</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.HorizontalSplitterPosition = 220;

this.editControl1.TopVerticalSplitterPosition = 260;

this.editControl1.BottomVerticalSplitterPosition = 260;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.HorizontalSplitterPosition = 220

Me.editControl1.TopVerticalSplitterPosition = 260

Me.editControl1.BottomVerticalSplitterPosition = 260

{% endhighlight %}

{% endtabs %}

N> Refer to the following sample link that demonstrates the `SplitView` functionalities of EditControl.
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\Essential Studio\Version Number\Windows\Edit.Windows\Samples\Styles\Split Views

## Single line mode

Supports a single-line mode that renders just like a regular TextBox. EditControl can be operated in a simple text box with syntax highlighting, editing, and clipboard operations etc., by setting [SingleLineMode](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SingleLineMode.html) property to `true`. Its default value is `false`.

{% tabs %}

{% highlight C# %}

this.editControl1.SingleLineMode = true;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.SingleLineMode = True

{% endhighlight %}

{% endtabs %}

N> The SingleLineMode is intended for use, only when the EditControl contains small amounts of text data in it. Using it in a scenario where the EditControl has a huge file loaded into it, may lead to poor performance.

![](Appearance_images/Appearance_img4.jpg)

N> Refer to the following sample link that demonstrates the `SingleLineMode` behavior of EditControl.
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\Essential Studio\Version Number\Windows\Edit.Windows\Samples\Styles\Single Line Mode

## Right-to-left (RTL) support 

`EditControl` elements can be aligned in right-to-left layout. It is laid out from the right to left when [RenderRightToLeft](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~RenderRightToLeft.html) property is set to `true`. Its default value is `false`.  

{% tabs %}

{% highlight C# %}

this.editControl1.RenderRightToLeft = true;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.RenderRightToLeft = True

{% endhighlight %}

{% endtabs %}

**Use-case scenarios**

With RTL support, you can use EditControl, to render content in Right-To-left layout for languages such as Arabic.

![](Appearance_images/Appearance_img5.jpg)

### Change Right-to-Left layout by keyboard

Supports rendering content in Right-To-Left (RTL) layout by pressing <kbd>Shift + ctrl</kbd>.

## Customize Text appearance

In EditControl, we are able to customize the text color and its border. The following topics explains the same.

### Text Color

[SetTextColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SetTextColor.html) function helps to customize the appearance of the text color in a specific range of lines. 

{% tabs %}

{% highlight C# %}

// Set the color of the text for the EditControl.

this.editControl1.SetTextColor(new Point(1, 1), new Point(8, 8), Color.Orange);

{% endhighlight %}


{% highlight VB %}

' Set the color of the text for the EditControl.

Me.editControl1.SetTextColor(New Point(1, 1), New Point(8, 8), Color.Orange)

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img24.png)

### Text border color

[SetTextBorder](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SetTextBorder.html) function in EditControl helps to set the border and simultaneously we can remove the border of the text using the [RemoveTextBorder](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~RemoveTextBorder.html) function. The following table explains regarding the parameter value used in these functions.

<table>
<tr>
<th>
EditControl border enumerator</th><th>
Description</th></tr>
<tr>
<td>
{{ '[FrameBorderStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Enums.FrameBorderStyle.html)' | markdownify }}</td><td>
Specifies the style of border line. The options provided are * Dash* DashDot* Dot* None* Solid* Wave</td></tr>
<tr>
<td>
{{ '[BorderWeight](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Enums.BorderWeight.html)' | markdownify }}</td><td>
Specifies the weight of the border line. The options provided are * Bold* Double* Thin</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Set borders for the specified text range.

this.editControl1.SetTextBorder(new Point(1, 1), new Point(8, 8), Color.Red, FrameBorderStyle.Wave, BorderWeight.Double);

{% endhighlight %}


{% highlight VB %}

' Set borders for the specified text range.

Me.editControl1.SetTextBorder(New Point(1, 1), New Point(3, 3), Color.Red, FrameBorderStyle.Wave, BorderWeight.Double)

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img23.png)

## User Margin

Displays additional information regarding the contents in the EditControl. Information can also be displayed on a line-by-line basis. 

### user margin visibility

The User Margin feature can be turned on by setting the [ShowUserMargin](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ShowUserMargin.html) property to `true`. Its default value is `false`. 

{% tabs %}

{% highlight C# %}

this.editControl1.ShowUserMargin = true;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.ShowUserMargin = True

{% endhighlight %}

{% endtabs %}

### Customize appearance of user margin

User margin width and placement can be customized using the following properties.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[UserMarginWidth](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~UserMarginWidth.html)' | markdownify }}</td><td>
Get / sets the width of the user margin</td></tr>
<tr>
<td>
{{ '[UserMarginPlacement](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~UserMarginPlacement.html)' | markdownify }}</td><td>
Specifies placement of user margin</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.UserMarginWidth = 100;

// Sets the User Margin to the Left.

this.editControl1.UserMarginPlacement = Syncfusion.Windows.Forms.Edit.Enums.MarginPlacement.Left;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.UserMarginWidth = 100

// Sets the User Margin to the Left.

Me.editControl1.UserMarginPlacement = Syncfusion.Windows.Forms.Edit.Enums.MarginPlacement.Left

{% endhighlight %}

{% endtabs %}

The following properties can be used to set the background color, text color, and border color of the user margin in the EditControl.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[UserMarginBackgroundColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~UserMarginBackgroundColor.html)' | markdownify }}</td><td>
Specifies BrushInfo object that is used when the user margin is being drawn</td></tr>
<tr>
<td>
{{ '[UserMarginTextColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~UserMarginTextColor.html)' | markdownify }}</td><td>
Specifies default color of user margin text</td></tr>
<tr>
<td>
{{ '[UserMarginBorderColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~UserMarginBorderColor.html)' | markdownify }}</td><td>
Specifies color of the user margin border</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.UserMarginBackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.BackwardDiagonal, System.Drawing.Color.Brown, System.Drawing.Color.MistyRose);

this.editControl1.UserMarginBorderColor = Color.IndianRed;

this.editControl1.UserMarginTextColor = Color.Green;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.UserMarginBackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.BackwardDiagonal, System.Drawing.Color.Brown, System.Drawing.Color.MistyRose)

Me.editControl1.UserMarginBorderColor = Color.IndianRed

Me.editControl1.UserMarginTextColor = Color.Green

{% endhighlight %}

{% endtabs %}

#### How to add custom text in user margin

It is possible to set custom text in the user margin on a line-by-line basis by handling the [DrawUserMarginText](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~DrawUserMarginText_EV.html) event of the EditControl. Moreover, it is also possible to customize the font settings for the text of the user margin.

{% tabs %}

{% highlight C# %}

private void editControl1_DrawUserMarginText(object sender, Syncfusion.Windows.Forms.Edit.DrawUserMarginTextEventArgs e)
{
    // Set text to be rendered at the user margin area.

    e.Text = "Line " + e.Line.LineIndex.ToString() + " contains " + e.Line.LineLength.ToString() + " characters";

    // Set text font.

    e.Font = new Font("Garamond", 11);

    if(e.Line.LineIndex % 2 == 0)

    {

       // Set color of the text.

       e.Color = Color.Blue;

    }
}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_DrawUserMarginText(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.DrawUserMarginTextEventArgs) Handles EditControl1.DrawUserMarginText

' Set text to be rendered at the user margin area.

e.Text = "Line " + e.Line.LineIndex.ToString() + " contains " + e.Line.LineLength.ToString() + " characters"

' Set text font.

e.Font = New Font("Garamond", 11)

If e.Line.LineIndex Mod 2 = 0 Then

   ' Set color of the text.

   e.Color = Color.Blue

End If

End Sub

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img6.jpg)

## Selection margin

Selection margin is a thin vertical strip along the left side of the EditControl that enables you to select the contents of the entire line in the EditControl, by simply clicking on the corresponding selection margin area of the line. 

### Selection margin visibility

[ShowSelectionMargin](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ShowSelectionMargin.html) property allows you to show or hide this selection margin. Its default value is `true`. 

{% tabs %}

{% highlight C# %}

this.editControl1.ShowSelectionMargin = true;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.ShowSelectionMargin = True

{% endhighlight %}

{% endtabs %}

### Customize appearance of selection margin

Selection margin background, foreground and width can be customized using the following properties.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[SelectionMarginForegroundColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SelectionMarginForegroundColor.html)' | markdownify }}</td><td>
Specifies foreground color of the selection margin</td></tr>
<tr>
<td>
{{ '[SelectionMarginBackgroundColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SelectionMarginBackgroundColor.html)' | markdownify }}
</td><td>
Specifies background color of the selection margin</td></tr>
<tr>
<td>
{{ '[SelectionMarginWidth](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SelectionMarginWidth.html)' | markdownify }}</td><td>
Sets the width of the selection margin</td></tr>
</table>


{% tabs %}

{% highlight C# %}

this.editControl1.SelectionMarginForegroundColor = Color.Gray;

this.editControl1.SelectionMarginBackgroundColor = Color.IndianRed;

this.editControl1.SelectionMarginWidth = 100;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.SelectionMarginForegroundColor = Color.Gray

Me.editControl1.SelectionMarginBackgroundColor = Color.IndianRed

Me.editControl1.SelectionMarginWidth = 100

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img7.jpg)

## Indicator margin

Provides an extensive support of indicator margin for the purpose of displaying the custom indicators or bookmarks. 

### Indicator margin visibility

Indicator margin can be enabled or disabled by using the [ShowIndicatorMargin](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ShowIndicatorMargin.html) property. Its default value is `true`, to hide the indicator margin turn on its value to `false`. [MarkerAreaWidth](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~MarkerAreaWidth.html) property in EditControl sets the width of marker area.

{% tabs %}

{% highlight C# %}

// Displays the Indicator margin.

this.editControl1.ShowIndicatorMargin = true;

// Sets the width of the Indicator margin.

this.editControl1.MarkerAreaWidth = 50;

{% endhighlight %}


{% highlight VB %}

' Displays the Indicator margin.

Me.editControl1.ShowIndicatorMargin = True

' Sets the width of the Indicator margin.

Me.editControl1.MarkerAreaWidth = 50

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img8.png)

### Customize the appearance of indicator margin

[IndicatorMarginBackColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~IndicatorMarginBackColor.html) property helps to customize the background color of indicator margin in EditControl.

{% tabs %}

{% highlight C# %}

this.editControl1.IndicatorMarginBackColor = Color.Red;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.IndicatorMarginBackColor = Color.Red

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img9.png)

## Selection color customization

EditControl also provides an options to change the back color of selected range of text. [SetBackgroundColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SetBackgroundColor.html) function in EditControl is used to set the background color for a specified range of text.

{% tabs %}

{% highlight C# %}

this.editControl1.SetBackgroundColor(new Point(1, 1), new Point(9, 9), Color.AliceBlue);

{% endhighlight %}


{% highlight VB %}

Me.editControl1.SetBackgroundColor(New Point(1, 1), New Point(9, 9), Color.AliceBlue)

{% endhighlight %}

{% endtabs %}

### Set up background for individual line or selected block of text

EditControl also allows setting custom background color for individual lines as well as for selected block of text. You can set any desired background to a particular line or block of selection, as explained below.

* Register a back color format with the EditControl by using its [RegisterBackColorFormat](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~RegisterBackColorFormat.html) function, with appropriate values for BackgroundColor, ForegroundColor and HatchStyle parameters.
* Set the background color to the entire line or just the selected text by using the [SetLineBackColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SetLineBackColor.html) and [SetSelectionBackColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SetSelectionBackColor.html) functions respectively.

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

![](Appearance_images/Appearance_img25.jpeg)

#### Remove applied background for individual line or selected block of text

By using [RemoveLineBackColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~RemoveLineBackColor.html) and [RemoveSelectionBackColor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~RemoveSelectionBackColor.html) functions in EditControl we were able to remove the background color for individual lines or selected blocks of text. 

{% tabs %}

{% highlight C# %}

// Removes line back color.

this.editControl1.RemoveLineBackColor(4);

// Removes background coloring from the selected text.

this.editControl1.RemoveSelectionBackColor();

{% endhighlight %}


{% highlight VB %}

' Removes line back color.

Me.editControl1.RemoveLineBackColor(4)

' Removes background coloring from the selected text.

Me.editControl1.RemoveSelectionBackColor()

{% endhighlight %}

{% endtabs %}

## StatusBar

Provides `StatusBar` support that helps to display information about the current state of the control such as the current file name, line number, and column number. The built-in panels are as follows:

* TextPanel
* StatusPanel
* EncodingPanel
* FileNamePanel
* CoordinatePanel
* InsertPanel

### Status bar settings

[StatusBarSettings](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~StatusBarSettings.html) property contains many sub properties, which can be used to customize the appearance and visibility of the status bar and its panels. The following table represents some of sub properties in StatusBarSettings.

<table>
<tr>
<th>
StatusBarSettings property</th><th>
Description</th></tr>
<tr>
<td>
{{ '[TextPanel](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.StatusBarSettings~TextPanel.html)' | markdownify }}
</td><td>
Specifies StatusBarPanelSettings object for text panel</td></tr>
<tr>
<td>
{{ '[StatusPanel](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.StatusBarSettings~StatusPanel.html)' | markdownify }}</td><td>
Specifies StatusBarPanelSettings object for status panel</td></tr>
<tr>
<td>
{{ '[EncodingPanel](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.StatusBarSettings~EncodingPanel.html)' | markdownify }}</td><td>
Specifies StatusBarPanelSettings object for encoding panel</td></tr>
<tr>
<td>
{{ '[FileNamePanel](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.StatusBarSettings~FileNamePanel.html)' | markdownify }}</td><td>
Specifies StatusBarPanelSettings object for fileName panel</td></tr>
<tr>
<td>
{{ '[CoordinatePanel](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.StatusBarSettings~CoordsPanel.html)' | markdownify }}</td><td>
Specifies StatusBarPanelSettings object for coordinate panel</td></tr>
<tr>
<td>
{{ '[InsertPanel](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.StatusBarSettings~InsertPanel.html)' | markdownify }}</td><td>
Specifies StatusBarPanelSettings object for insert panel</td></tr>
<tr>
<td>
{{ '[Panels](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.StatusBarSettings~Panels.html)' | markdownify }}</td><td>
Gets the list of status bar panel settings</td></tr>
<tr>
<td>
{{ '[StatusBar](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.StatusBarSettings~StatusBar.html)' | markdownify }}</td><td>
Gets underlying status bar</td></tr>
<tr>
<td>
{{ '[GripVisibility](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.StatusBarSettings~GripVisibility.html)' | markdownify }}</td><td>
Gets or sets the visibility of the status bar sizing grip. The options provided are as follows:* Visible* Hidden</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Set the visibility of the status bar sizing grip.

this.editControl1.StatusBarSettings.GripVisibility = Syncfusion.Windows.Forms.Edit.Enums.SizingGripVisibility.Visible;

{% endhighlight %}


{% highlight VB %}

' Set the visibility of the status bar sizing grip.

Me.editControl1.StatusBarSettings.GripVisibility = Syncfusion.Windows.Forms.Edit.Enums.SizingGripVisibility.Visible

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img12.png)

#### Visibility settings

StatusBar can be enabled or hidden by setting the [StatusBarSettings.Visible](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.StatusBarSettings~Visible.html) property. Its default value is `false`. The individual StatusBar panels can also be optionally shown or hidden by using the `Visible` property corresponding to the respective panel.

{% tabs %}

{% highlight C# %}

 // Shows the built-in status bar.

this.editControl1.StatusBarSettings.Visible = true;

 // Enable the TextPanel in the StatusBar.

this.editControl1.StatusBarSettings.TextPanel.Visible = true;

// Set the visibility of the status bar sizing grip.

this.editControl1.StatusBarSettings.GripVisibility = Syncfusion.Windows.Forms.Edit.Enums.SizingGripVisibility.Visible;

{% endhighlight %}


{% highlight VB %}

// Shows the built-in status bar.

Me.editControl1.StatusBarSettings.Visible = True

' Enable the TextPanel in the status bar.

Me.editControl1.StatusBarSettings.TextPanel.Visible = True

' Set the visibility of the status bar sizing grip.

Me.editControl1.StatusBarSettings.GripVisibility = Syncfusion.Windows.Forms.Edit.Enums.SizingGripVisibility.Visible

{% endhighlight %}

{% endtabs %}

#### Visual styles

EditControl status bar supports different visual styles for its appearance. Some of the available Visual styles are as follows:

* Default
* Metro
* Office2007
* Office2010

The visual style can be applied for the StatusBar using [VisualStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.StatusBarSettings~VisualStyle.html) property. The following code example illustrates how to change the visual style for StatusBar in EditControl.

**Default**

This option helps to set the Default style.

##### Code sample

{% tabs %}

{% highlight C# %}

// Default

this.editControl1.StatusBarSettings.VisualStyle= Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Default; 

{% endhighlight %}

{% highlight VB %}

'Default

Me.editControl1.StatusBarSettings.VisualStyle = Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Default

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img13.png)

**Metro**

This option helps to set the Metro style.

##### Code sample

{% tabs %}

{% highlight C# %}

// Metro

this.editControl1.StatusBarSettings.VisualStyle= Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Metro; 

{% endhighlight %}

{% highlight VB %}

'Metro

Me.editControl1.StatusBarSettings.VisualStyle = Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Metro

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img14.png)

**Office2007Blue**

This option helps to set the Office2007Blue style.

##### Code sample

{% tabs %}

{% highlight C# %}

// Office2007Blue

this.editControl1.StatusBarSettings.VisualStyle= Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2007; 

this.editControl1.StatusBarSettings.Offcie2007ColorScheme = Office2007Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'Office2007Blue

Me.editControl1.StatusBarSettings.VisualStyle = Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2007

Me.editControl1.StatusBarSettings.Offcie2007ColorScheme = Office2007Theme.Blue

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img15.png)

**Office2007Black**

This option helps to set the Office2007Black style.

##### Code sample

{% tabs %}

{% highlight C# %}

// Office2007Black

this.editControl1.StatusBarSettings.VisualStyle= Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2007; 

this.editControl1.StatusBarSettings.Offcie2007ColorScheme = Office2007Theme.Black;

{% endhighlight %}

{% highlight VB %}

'Office2007Black

Me.editControl1.StatusBarSettings.VisualStyle = Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2007

Me.editControl1.StatusBarSettings.Offcie2007ColorScheme = Office2007Theme.Black

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img16.png)

**Office2007Silver**

This option helps to set the Office2007Silver style.

##### Code sample

{% tabs %}

{% highlight C# %}

// Office2007Silver

this.editControl1.StatusBarSettings.VisualStyle= Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2007; 

this.editControl1.StatusBarSettings.Offcie2007ColorScheme = Office2007Theme.Silver;

{% endhighlight %}

{% highlight VB %}

'Office2007Silver

Me.editControl1.StatusBarSettings.VisualStyle = Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2007

Me.editControl1.StatusBarSettings.Offcie2007ColorScheme = Office2007Theme.Silver

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img17.png)

**Office2007Managed**

This option helps to set the Office2007Managed style.

##### Code sample

{% tabs %}

{% highlight C# %}

// Office2007Managed

this.editControl1.StatusBarSettings.VisualStyle= Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2007; 

this.editControl1.StatusBarSettings.Offcie2007ColorScheme = Office2007Theme.Managed;

{% endhighlight %}

{% highlight VB %}

'Office2007Managed

Me.editControl1.StatusBarSettings.VisualStyle = Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2007

Me.editControl1.StatusBarSettings.Offcie2007ColorScheme = Office2007Theme.Managed

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img18.png)

**Office2010Blue**

This option helps to set the Office2010Blue style.

##### Code sample

{% tabs %}

{% highlight C# %}

// Office2010Blue

this.editControl1.StatusBarSettings.VisualStyle= Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2010; 

this.editControl1.StatusBarSettings.Offcie2010ColorScheme = Office2010Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'Office2010Blue

Me.editControl1.StatusBarSettings.VisualStyle = Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2010

Me.editControl1.StatusBarSettings.Offcie2010ColorScheme = Office2010Theme.Blue

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img19.png)

**Office2010Black**

This option helps to set the Office2010Black style.

##### Code sample

{% tabs %}

{% highlight C# %}

// Office2010Black

this.editControl1.StatusBarSettings.VisualStyle= Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2010; 

this.editControl1.StatusBarSettings.Offcie2010ColorScheme = Office2010Theme.Black;

{% endhighlight %}

{% highlight VB %}

'Office2010Black

Me.editControl1.StatusBarSettings.VisualStyle = Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2010

Me.editControl1.StatusBarSettings.Offcie2010ColorScheme = Office2010Theme.Black

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img20.png)

**Office2010Silver**

This option helps to set the Office2010Silver style.

##### Code sample

{% tabs %}

{% highlight C# %}

// Office2010Silver

this.editControl1.StatusBarSettings.VisualStyle= Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2010; 

this.editControl1.StatusBarSettings.Offcie2010ColorScheme = Office2010Theme.Silver;

{% endhighlight %}

{% highlight VB %}

'Office2010Silver

Me.editControl1.StatusBarSettings.VisualStyle = Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2010

Me.editControl1.StatusBarSettings.Offcie2010ColorScheme = Office2010Theme.Silver

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img21.png)

**Office2010Managed**

This option helps to set the Office2010Managed style.

##### Code sample

{% tabs %}

{% highlight C# %}

// Office2010Managed

this.editControl1.StatusBarSettings.VisualStyle= Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2010; 

this.editControl1.StatusBarSettings.Offcie2010ColorScheme = Office2010Theme.Managed;

{% endhighlight %}

{% highlight VB %}

'Office2010Managed

Me.editControl1.StatusBarSettings.VisualStyle = Syncfusion.Windows.Forms.Tools.Controls.StatusBar.VisualStyle.Office2010

Me.editControl1.StatusBarSettings.Offcie2010ColorScheme = Office2010Theme.Managed

{% endhighlight %}

{% endtabs %}

![](Appearance_images/Appearance_img22.png)

N> Refer to the following sample link that demonstrates the `StatusBar` functionalities of EditControl.
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\Essential Studio\Version Number\Windows\Edit.Windows\Samples\Interactive Features\StatusBar

## ScrollBar 

`EditControl` can display a data object, such as a document or a bitmap, that is larger than the window's client area. With the help of scroll bar, the user can scroll a data object in the client area to bring into view the portions of the object that extend beyond the borders of the window.

Buttons can be displayed at the top, bottom, left or right of the scroll bars by using the below given properties.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[ScrollbarBottomButtons](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ScrollbarBottomButtons.html)' | markdownify }}</td><td>
Gets buttons at the bottom of vertical scrollbar</td></tr>
<tr>
<td>
{{ '[ScrollbarLeftButtons](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ScrollbarLeftButtons.html)' | markdownify }}</td><td>
Gets buttons on the left of vertical scrollbar</td></tr>
<tr>
<td>
{{ '[ScrollbarRightButtons](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ScrollbarRightButtons.html)' | markdownify }}</td><td>
Gets buttons on the right of vertical scrollbar</td></tr>
<tr>
<td>
{{ '[ScrollbarTopButtons](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ScrollbarTopButtons.html)' | markdownify }}</td><td>
Gets buttons at the top of vertical scrollbar</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.ScrollbarBottomButtons.AddRange(new System.Windows.Forms.Control[] { this.scrollbarButton1 });

this.editControl1.ScrollbarLeftButtons.AddRange(new System.Windows.Forms.Control[] { this.scrollbarButton2 });

this.editControl1.ScrollbarRightButtons.AddRange(new System.Windows.Forms.Control[] { this.scrollbarButton3 });

this.editControl1.ScrollbarTopButtons.AddRange(new System.Windows.Forms.Control[] { this.scrollbarButton4 });


{% endhighlight %}


{% highlight VB %}

Me.editControl1.ScrollbarBottomButtons.AddRange(New System.Windows.Forms.Control() {Me.scrollbarButton1}) 

Me.editControl1.ScrollbarLeftButtons.AddRange(New System.Windows.Forms.Control() {Me.scrollbarButton2}) 

Me.editControl1.ScrollbarRightButtons.AddRange(New System.Windows.Forms.Control() {Me.scrollbarButton3}) 

Me.editControl1.ScrollbarTopButtons.AddRange(New System.Windows.Forms.Control() {Me.scrollbarButton4}) 

{% endhighlight %}

{% endtabs %}

### Customize the scrollbar visibility

By using the [AlwaysShowScrollers](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~AlwaysShowScrollers.html) property in EditControl, we can enable or disable the scroll bar.

{% tabs %}

{% highlight C# %}

this.editControl1.AlwaysShowScrollers = false;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.AlwaysShowScrollers = False

{% endhighlight %}

{% endtabs %}

### Types of scrolling mode

There are various types of scrolling mode in EditControl as follows:

* Immediate - Scrolls the control to the new value immediately.
* Deferred - Scrolls the control when thumb track is completed.
* Pixel - Scrolls line by line.

[VScrollMode](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~VScrollMode.html) property helps to set the various type of scrolling mode in EditControl by using [ScrollMode](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.ScrollMode.html) enumerator.

{% tabs %}

{% highlight C# %}

// Scrolls the vertical scroll bar line by line.

this.editControl1.VScrollMode = Syncfusion.Windows.Forms.Edit.ScrollMode.Pixel;

{% endhighlight %}


{% highlight VB %}

' Scrolls the vertical scroll bar line by line.

Me.editControl1.VScrollMode = Syncfusion.Windows.Forms.Edit.ScrollMode.Pixel

{% endhighlight %}

{% endtabs %}

### Customize the appearance of scrollbar

Provide Office 2007 appearance to scroll bars by setting the [ScrollVisualStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ScrollVisualStyle.html) property to Office2007. It supports all the three Office 2007 Color Schemes (Black, Blue and Silver), which can be set by using the [ScrollColorScheme](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ScrollColorScheme.html) property. Also, custom colors can be applied to the scroll bars of the EditControl. This can be done by setting the ScrollColorScheme property to Managed.

{% tabs %}

{% highlight C# %}

this.editControl1.ScrollVisualStyle = ScrollBarCustomDrawStyles.Office2007;

this.editControl1.ScrollColorScheme = Office2007ColorScheme.Blue;

// Set custom color for the scroll bar.

this.editControl1.ScrollColorScheme = Office2007ColorScheme.Managed;

Syncfusion.Windows.Forms.Office2007Colors.ApplyManagedColors(this, Color.Green);

{% endhighlight %}


{% highlight VB %}

Me.editControl1.ScrollVisualStyle = ScrollBarCustomDrawStyles.Office2007

Me.editControl1.ScrollColorScheme = Office2007ColorScheme.Blue

' Set custom color for the scroll bar.

Me.editControl1.ScrollColorScheme = Office2007ColorScheme.Managed

Syncfusion.Windows.Forms.Office2007Colors.ApplyManagedColors(Me, Color.Green)

{% endhighlight %}

{% endtabs %}

The following illustration shows the EditControl with custom color (green) set for the scroll bars.

![](Appearance_images/Appearance_img23.jpg)

## Append code snippets

Supports an advanced feature of VS 2005 like Code Snippets. It is also used to load or save VS.NET 2005-compatible XML snippets. Code Snippets are inserted into the EditControl by following the procedure given below:

1. Type the snippet name. For example "do".
2. Pressing the CTRL + ' combination.
3. Select an item from the list as shown in the image below.

![](Appearance_images/Appearance_img25.png)

The code snippets allow you to input data to the highlighted fields.

Code Snippets can also be inserted into the EditControl by using the static `Extract` function of the `CodeSnippetsExtractor` class which was implemented in the demo sample. Extract function takes the following two parameters:

1. Path of the folder containing the code snippets.
2. Instance of the EditControl into which the extracted code snippet should be inserted.

This is illustrated in the code given below.

{% tabs %}

{% highlight C# %}

CodeSnippetsExtractor.Extract(Path, editControl1);

{% endhighlight %}

{% highlight VB %}

CodeSnippetsExtractor.Extract(Path, editControl1)

{% endhighlight %}

{% endtabs %}

Code Snippets are added to the current language of the EditControl by using the below given function.

<table>
<tr>
<th>
Function</th><th>
Description</th></tr>
<tr>
<td>
{{ '[AddCodeSnippet](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~AddCodeSnippet.html)' | markdownify }}</td><td>
Adds new code snippet to current language</td></tr>
</table>


{% tabs %}

{% highlight C# %}

this.editControl1.AddCodeSnippet(string title, ArrayList literals, string code);

{% endhighlight %}


{% highlight VB %}

Me.editControl1.AddCodeSnippet(String title, ArrayList literals, String code)

{% endhighlight %}

{% endtabs %}

The code snippets can also be contained in containers and displayed in the pop-up of the snippets. The static `Extract` function of the `CodeSnippetsExtractor` class is used to extract and fill the container object. The container object can be added to the [SnippetsContainer](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Interfaces.IConfigLanguage~SnippetsContainer.html) of the EditControl by using the [AddContainer](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Utils.CodeSnippets.CodeSnippetsContainer~AddContainer.html) function. 

{% tabs %}

{% highlight C# %}

private CodeSnippetsContainer container = new Syncfusion.Windows.Forms.Edit.Utils.CodeSnippets.CodeSnippetsContainer(); 

container = CodeSnippetsExtractor.Extract(Path@"\Loops");

container.Name = "Loops";

this.editControl1.Language.SnippetsContainer.AddContainer(container);

{% endhighlight %}


{% highlight VB %}

container As CodeSnippetsContainer = New Syncfusion.Windows.Forms.Edit.Utils.CodeSnippets.CodeSnippetsContainer()

container = CodeSnippetsExtractor.Extract(Path "\Loops")

container.Name = "Loops"

Me.editControl1.Language.SnippetsContainer.AddContainer(container)

{% endhighlight %}

{% endtabs %}

Code snippets can also be created by using the `configuration` file. For example, the code snippet for a structure in C# can be created as shown below.

{% highlight html %}

<CodeSnippetsContainer Name ="Container 2">

<CodeSnippet Format ="1.0.0">

       <Header>

        <Title>struct</Title>

         <Shortcut>struct</Shortcut>

 <Description>Code snippet for Struct</Description>

     </Header>

     <Snippet>

          <Declarations>

        <Literal>

         <ID>name</ID>

         <ToolTip>Struct name</ToolTip>

        <Default>Struct</Default>

      </Literal>

         </Declarations>

       <Code Language ="csharp"><![CDATA[struct $name$

       {



       }]]>

       </Code>

</Snippet>

</CodeSnippet>

</CodeSnippetsContainer>

{% endhighlight %}

The Literal element is used to identify a replacement for a piece of code that is entirely contained within the snippet, but one that will likely be customized after it is inserted into the code. 

**Showing code snippets**

You can also programmatically show the choice list of code snippets by calling [ShowCodeSnippets](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ShowCodeSnippets.html) function given below.

{% tabs %}

{% highlight C# %}

// Shows the code snippets choice list.
this.editControl1.ShowCodeSnippets();

{% endhighlight %}


{% highlight VB %}

' Shows the code snippets choice list.
Me.editControl1.ShowCodeSnippets()

{% endhighlight %}

{% endtabs %}

**Border settings**

Border can be set for the active code snippets by using the [DrawCodeSnippetBorder](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~DrawCodeSnippetBorder.html) property in EditControl. And also we can set the size of CodeSnippet popup window by using the [CodeSnipptSize](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~CodeSnipptSize.html) property in EditControl.

{% tabs %}

{% highlight C# %}

this.editControl1.DrawCodeSnippetBorder = true;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.DrawCodeSnippetBorder = True

{% endhighlight %}

{% endtabs %}

N> Refer to the following sample link that demonstrates the `CodeSnippets` functionalities of EditControl.
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\Essential Studio\Version Number\Windows\Edit.Windows\Samples\Intellisense Functions\Code Snippets

## Customize cursor appearance

Cursor appearance can be customized by using the [Cursor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~Cursor.html) property. The cursor appearance can be modified to arrow, cross, hand etc.

{% tabs %}

{% highlight C# %}

private Cursor currentCursor = Cursors.Arrow;

this.editControl1.Cursor = this.currentCursor;

{% endhighlight %}


{% highlight VB %}

currentCursor as Cursor = Cursors.Arrow

Me.editControl1.Cursor = Me.currentCursor

{% endhighlight %}

{% endtabs %}

## Suspend and resume painting

Painting of the EditControl can be suspended using the [Suspend](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SuspendPainting.html) function call. Painting can be resumed using [Resume](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ResumePainting.html) function call. Suspend and Resume functions internally call the `Interop` and `LockWindowUpdate` function to suspend and resume painting of the EditControl.

{% tabs %}

{% highlight C# %}

this.editControl1.SuspendPainting();

this.editControl1.ResumePainting();

{% endhighlight %}


{% highlight VB %}

Me.editControl1.SuspendPainting()

Me.editControl1.ResumePainting()

{% endhighlight %}

{% endtabs %}