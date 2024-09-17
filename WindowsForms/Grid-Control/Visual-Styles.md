---
layout: post
title: Visual Styles in Windows Forms Grid Control | Syncfusion
description: Learn about Visual Styles support in Syncfusion Windows Forms Grid Control, its elements and more details.
platform: windowsforms
control: GridControl
documentation: ug
---
# Visual Styles in Windows Forms Grid Control
The GridControl can be displayed with the different themes by using the [GridVisualStyles](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_GridVisualStyles) property. The following themes are available for GridControl,

* Office2003
* Office2007Blue
* Office2007Black
* Office2007Silver
* Office2010Blue
* Office2010Black
* Office2010Silver
* Office2016Black
* Office2016Colorful
* Office2016DarkGray
* Office2016White
* Metro
* SystemTheme

{% tabs %}
{% highlight c# %}
//Applying Visual Styles to the Grid 
this.gridControl1.GridVisualStyles = Syncfusion.Windows.Forms.GridVisualStyles.Office2010Black;
{% endhighlight %}
{% highlight vb %}
'Applying Visual Styles to the Grid 
Me.gridControl1.GridVisualStyles = Syncfusion.Windows.Forms.GridVisualStyles.Office2010Black
{% endhighlight %}
{% endtabs %}

![Visual-Syles_img1](Visual-Syles_images/Visual-Syles_img1.jpeg)

N> To apply the enhanced themes to the GridControl, set [EnableLegacyStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableModel.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableModel_EnableLegacyStyle) property to `false`. 
The change of visual styles can be handled by using the [ThemesChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_ThemeChanged) event. It will be fired while changing the [GridVisualStyles](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_GridVisualStyles) of the GridControl.

## Enabling Visual Styles   
In GridControl, themes can be enabled by setting the [ThemesEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_ThemesEnabled) property value as `true`. By default the grid will be loaded with the `SystemTheme`.
{% tabs %}
{% highlight c# %}
//To apply other visual styles except SystemTheme
this.gridControl1.ThemesEnabled = true;
{% endhighlight %}
{% highlight vb %}
'To apply other visual styles except SystemTheme
Me.gridControl1.ThemesEnabled = True
{% endhighlight %}
{% endtabs %}

## Applying Skin for ComboBox Cell
There will be no themes applied to the ComboBox cell by default. If you want to enable the theme, set [EnableGridListControlInComboBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html#Syncfusion_Windows_Forms_Grid_GridModel_EnableGridListControlInComboBox)  property to false. It will add the [GridListControl](https://help.syncfusion.com/windowsforms/multicolumn-listbox/getting-started) to the ComboBox drop down and the visual style of the grid will be applied. 
{% tabs %}
{% highlight c# %}
// To Use GridComboBoxCellModel in Grid
this.gridControl1.Model.EnableGridListControlInComboBox = false;
{% endhighlight %}
{% highlight vb %}
' To Use GridComboBoxCellModel in Grid
Me.gridControl1.Model.EnableGridListControlInComboBox = False
{% endhighlight %}
{% endtabs %}

## Modifying Metro Colors
Custom colors can be applied to the metro theme by using the [SetMetroStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_SetMetroStyle_Syncfusion_Windows_Forms_GridMetroColors_) method. It can be used to change the colors of Mouse hover, pressed and clicked colors of the Headers and the embedded cell controls of the GridControl.
{% tabs %}
{% highlight c# %}
//Create GridMetroColors object for customizing the metro visual style
GridMetroColors metroColor = new GridMetroColors();

//Set custom colors to Metro Headers of the GridControl
metroColor.HeaderColor.NormalColor = Color.Pink;
metroColor.HeaderColor.HoverColor = Color.Orange;
metroColor.HeaderColor.PressedColor = Color.GhostWhite;

//set bottom border color of the column header
metroColor.HeaderBottomBorderColor = Color.Green;

//Set the back colors for the CheckBox and ComboBox
metroColor.CheckBoxColor.BackColor = Color.Brown;
metroColor.ComboboxColor.NormalBackColor = Color.Yellow;

//Apply Custom colors to the Metro visual style
this.gridControl1.SetMetroStyle(metroColor);
{% endhighlight %}
{% highlight vb %}
'Create GridMetroColors object for customizing the metro visual style
Dim metroColor As New GridMetroColors()

'Set custom colors to Metro Headers of the GridControl
metroColor.HeaderColor.NormalColor = Color.Pink
metroColor.HeaderColor.HoverColor = Color.Orange
metroColor.HeaderColor.PressedColor = Color.GhostWhite

'set bottom border color of the column header
metroColor.HeaderBottomBorderColor = Color.Green

'Set the back colors for the CheckBox and ComboBox
metroColor.CheckBoxColor.BackColor = Color.Brown
metroColor.ComboboxColor.NormalBackColor = Color.Yellow

'Apply Custom colors to the Metro visual style
Me.gridControl1.SetMetroStyle(metroColor)

{% endhighlight %}
{% endtabs %}

![Visual-Syles_img2](Visual-Syles_images/Visual-Syles_img2.jpeg)

### Modifying Metro Scrollbar Colors
The Scrollbars of the metro visual style can be customized by setting the [MetroColorTable](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MetroColorTable.html) property as of follows. 
{% tabs %}
{% highlight c# %}
//Used to set the custom colors to the Metro scrollbars
this.gridControl1.MetroColorTable.ScrollerBackground = Color.Aqua;
this.gridControl1.MetroColorTable.ArrowNormalBackGround = Color.Green;
this.gridControl1.MetroColorTable.ThumbNormal = Color.Blue;
{% endhighlight %}
{% highlight vb %}
'Used to set the custom colors to the Metro scrollbars
Me.gridControl1.MetroColorTable.ScrollerBackground = Color.Aqua
Me.gridControl1.MetroColorTable.ArrowNormalBackGround = Color.Green
Me.gridControl1.MetroColorTable.ThumbNormal = Color.Blue
{% endhighlight %}
{% endtabs %}
![Visual-Syles_img3](Visual-Syles_images/Visual-Syles_img3.jpeg)

N> The scrollbar customization is briefly discussed in the [Scrolling](https://help.syncfusion.com/windowsforms/grid-control/scrolling) section.

## Modifying Office2016 colors

Custom colors can be applied to the metro theme by using the [SetOffice2016ThemeStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_SetOffice2016ThemeStyle_Syncfusion_Windows_Forms_GridVisualStyles_Syncfusion_Windows_Forms_GridOffice2016ThemeColors_) method. It can be used to change the colors of Mouse hover, pressed, and clicked colors of the headers and the embedded cell controls of the GridControl.

{% tabs %}
{% highlight c# %}
//Create GridOffice2016ThemeColors object for customizing the Office2016 visual style
GridOffice2016ThemeColors style = new GridOffice2016ThemeColors();
//Set custom colors to Office2016 Headers of the GridControl
style.HeaderColor.NormalColor = Color.Bisque;
style.HeaderColor.HoverColor = Color.MediumPurple;
style.CheckBoxColor.BackColor = Color.Brown;
//Set the back colors for the CheckBox,ComboBox,PushButton
style.CheckBoxColor.BackColor = Color.Brown;
style.ComboboxColor.NormalBackColor = Color.OrangeRed;
style.PushButtonColor.NormalBackColor = Color.PaleGreen;
//Apply Custom colors to the Office2016 visual style
this.gridControl1.SetOffice2016ThemeStyle(GridVisualStyles.Office2016Colorful, style);
{% endhighlight %}
{% highlight vb %}
'Create GridOffice2016ThemeColors object for customizing the Office2016 visual style
Dim style As New GridOffice2016ThemeColors()
'Set custom colors to Office2016Headers of the GridControl
style.HeaderColor.NormalColor = Color.Bisque
style.HeaderColor.HoverColor = Color.MediumPurple
style.CheckBoxColor.BackColor = Color.Brown
'Set the back colors for the CheckBox,ComboBox,PushButton
style.CheckBoxColor.BackColor = Color.Brown
style.ComboboxColor.NormalBackColor = Color.OrangeRed
style.PushButtonColor.NormalBackColor = Color.PaleGreen
'Apply Custom colors to the Office2016 visual style
Me.gridControl1.SetOffice2016ThemeStyle(GridVisualStyles.Office2016Colorful, style)
{% endhighlight %}
{% endtabs %}
![Visual-Syles_img6](Visual-Syles_images/Visual-Syles_img6.jpeg)

### Modifying Office2016 scrollbar colors

The scrollbars of the Office2016 visual style can be customized by setting any one of the following respective property based on theme:

 * Office2016ColorfulColorTable
 * Office2016BlackColorTable
 * Office2016WhiteColorTable
 * Office2016DarkGrayColorTable

{% tabs %}
{% highlight c# %}
//Used to set the custom colors to the Office2016 scrollbars
 this.gridControl1.Office2016ColorfulColorTable .ScrollerBackground = Color.Aqua;
 this.gridControl1.Office2016ColorfulColorTable.ArrowNormalBackGround = Color.Green;
 this.gridControl1.Office2016ColorfulColorTable.ThumbNormal = Color.Blue;
{% endhighlight %}
{% highlight vb %}
'Used to set the custom colors to the Office2016 scrollbars
 Me.gridControl1.Office2016ColorfulColorTable.ScrollerBackground = Color.Aqua
 Me.gridControl1.Office2016ColorfulColorTable.ArrowNormalBackGround = Color.Green
 Me.gridControl1.Office2016ColorfulColorTable.ThumbNormal = Color.Blue
{% endhighlight %}
{% endtabs %}

![Visual-Syles_img7](Visual-Syles_images/Visual-Syles_img7.jpeg)

### Apply Skins to the GridControl
The more advanced themes along with the basic themes defined by GridVisualStyles can be added to the grid by using the [GridSkins](https://help.syncfusion.com/cr/windowsforms/Syncfusion.GridHelperClasses.GridSkins.html). It is available as an add-on feature in the [GridHelperClasses](https://help.syncfusion.com/cr/windowsforms/Syncfusion.GridHelperClasses.html) library. `GridSkins` depict the custom skin of `GridVisualStyles`. Currently, it comes with Vista skin that makes the grid components appear in vista-like look and feel. This can be set to the grid by using the [ApplySkin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.GridHelperClasses.GridSkins.html#Syncfusion_GridHelperClasses_GridSkins_ApplySkin_Syncfusion_Windows_Forms_Grid_GridModel_Syncfusion_GridHelperClasses_Skins_) method.
{% tabs %}
{% highlight c# %}
//Apply skin to the GridControl
GridSkins.ApplySkin(this.gridControl1.Model, Skins.Vista);
{% endhighlight %}
{% highlight vb %}
'Apply skin to the GridControl
GridSkins.ApplySkin(Me.gridControl1.Model, Skins.Vista)
{% endhighlight %}
{% endtabs %}

## Skin Manager
Theme can also be applied to the GridControl by using [SetVisualStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.IContextMenuProvider.html#Syncfusion_Windows_Forms_IContextMenuProvider_SetVisualStyle_Syncfusion_Windows_Forms_VisualStyle_) method of [SkinManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.SkinManager.html).
{% tabs %}
{% highlight c# %}

// Code for applying visual theme for only one control.
SkinManager.SetVisualStyle(this.gridControl1, VisualTheme.Office2010Blue );
{% endhighlight %}
{% highlight vb %}

' Code for applying visual theme for only one control.
SkinManager.SetVisualStyle(Me.gridControl1, VisualTheme.Office2010Blue)

{% endhighlight %}
{% endtabs %}

The [SkinManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.SkinManager.html) provides the supports for all the [VisualTheme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.VisualTheme.html) available in GridControl. It is also used to apply the same visual style for all the Syncfusion controls in the form.

{% tabs %}
{% highlight c# %}

// Code for applying visual theme for the whole form.
SkinManager.SetVisualStyle(this, VisualTheme.Office2010Blue);
{% endhighlight %}
{% highlight vb %}
' Code for applying visual theme for the whole form.
SkinManager.SetVisualStyle(Me, VisualTheme.Office2010Blue)
{% endhighlight %}
{% endtabs %}
![Visual-Syles_img4](Visual-Syles_images/Visual-Syles_img4.jpeg)

## Customizing Visual Styles
All the elements of the GridControl’s appearance can be customized. This section will explain about the customization of the themes using [IVisualStylesDrawing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.IVisualStylesDrawing.html). 

### Customization Using IVisualStylesDrawing
The grid can be applied with the [custom visual styles](https://support.syncfusion.com/kb/article/1732/how-to-create-the-custom-themes-and-apply-to-the-winforms-gridcontrol) by implementing the [IVisualStylesDrawing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.IVisualStylesDrawing.html) interface. This interface provides the list of methods for drawing the icons and header colors of the grid.

{% tabs %}
{% highlight c# %}
public class CustomTheme : IVisualStylesDrawing
{
    private GridVisualStyles visualStyle;

    public CustomTheme(GridVisualStyles style)
    {
        this.visualStyle = style;

    }
    public CustomTheme(GridVisualStyles style, bool legacyStyle)
    {
        this.visualStyle = style;
        this.isLegacyStyle = legacyStyle;
    }

    
    public void DrawHeaderStyle(Graphics g, Rectangle rect, ThemedHeaderDrawing.HeaderState state)
    {            

//Check for empty headers
        if (rect.Height == 0 && rect.Width == 0)
            return;

//Check for the current state of the header and paints the foreground accordingly.

        if (state == ThemedHeaderDrawing.HeaderState.Normal)
        {
            LinearGradientBrush br = new LinearGradientBrush(rect, Color.FromArgb(255, 128, 255), Color.FromArgb(255, 0, 128), LinearGradientMode.Vertical);
            g.FillRectangle(br, rect);                
            g.FillRectangle(br, new Rectangle(rect.X + 1, rect.Y + 1, rect.Width - 2, rect.Height - 2));
            br.Dispose();
        }            
        else
        {               
            LinearGradientBrush br = new LinearGradientBrush(rect, Color.FromArgb(0, 128, 0), Color.FromArgb(128, 255, 128), LinearGradientMode.Vertical);
            g.FillRectangle(br, rect);
            g.FillRectangle(br, new Rectangle(rect.X + 1, rect.Y + 1, rect.Width - 2, rect.Height - 2));
            br.Dispose();
        }
    }

// IVisualStylesDrawing Members …
}

{% endhighlight %}
{% highlight vb %}
Public Class CustomTheme
    Implements IVisualStylesDrawing
    Private visualStyle As GridVisualStyles

    Public Sub New(ByVal style As GridVisualStyles)
        Me.visualStyle = style

    End Sub
    Public Sub New(ByVal style As GridVisualStyles, ByVal legacyStyle As Boolean)
        Me.visualStyle = style
        Me.isLegacyStyle = legacyStyle
    End Sub


    Public Sub DrawHeaderStyle(ByVal g As Graphics, ByVal rect As Rectangle, ByVal state As ThemedHeaderDrawing.HeaderState)
 
  'Check for empty headers
        If rect.Height = 0 AndAlso rect.Width = 0 Then
            Return
        End If

 'Check for the current state of the header and paints the foreground accordingly.

        If state Is ThemedHeaderDrawing.HeaderState.Normal Then
            Dim br As New LinearGradientBrush(rect, Color.FromArgb(255, 128, 255), Color.FromArgb(255, 0, 128), LinearGradientMode.Vertical)
            g.FillRectangle(br, rect)
            g.FillRectangle(br, New Rectangle(rect.X + 1, rect.Y + 1, rect.Width - 2, rect.Height - 2))
            br.Dispose()
        Else
            Dim br As New LinearGradientBrush(rect, Color.FromArgb(0, 128, 0), Color.FromArgb(128, 255, 128), LinearGradientMode.Vertical)
            g.FillRectangle(br, rect)
            g.FillRectangle(br, New Rectangle(rect.X + 1, rect.Y + 1, rect.Width - 2, rect.Height - 2))
            br.Dispose()
        End If
    End Sub
 
 ' IVisualStylesDrawing Members …
End Class
{% endhighlight %}
{% endtabs %}
For applying the customized theme settings to grid, `GridVisualStyles.Custom` option should be set to `GridVisualStyles` property. After that, the `CustomTheme` class can be assigned to [GridVisualStyleDrawing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_GridVisualStylesDrawing) property.
{% tabs %}
{% highlight c# %}
//Adding custom visual styles to the GridControl
this.gridControl1.GridVisualStyles = GridVisualStyles.Custom;
this.gridControl1.Model.Options.GridVisualStylesDrawing = new CustomThemes(GridVisualStyles.Custom);
{% endhighlight %}
{% highlight vb %}
'Adding custom visual styles to the GridControl
Me.gridControl1.GridVisualStyles = GridVisualStyles.Custom
Me.gridControl1.Model.Options.GridVisualStylesDrawing = New CustomThemes(GridVisualStyles.Custom)
{% endhighlight %}
{% endtabs %}

![Visual-Syles_img5](Visual-Syles_images/Visual-Syles_img5.jpeg)

The following KB demonstrates the same with the sample,

[https://support.syncfusion.com/kb/article/1732/how-to-create-the-custom-themes-and-apply-to-the-winforms-gridcontrol](https://support.syncfusion.com/kb/article/1732/how-to-create-the-custom-themes-and-apply-to-the-winforms-gridcontrol) 

N> Each theme can be customized by deriving their `GridVisualStylesDrawing` class. 
N> Ex:[GridVisualStylesOffice2007Black](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.GridVisualStylesOffice2007Black.html) 
