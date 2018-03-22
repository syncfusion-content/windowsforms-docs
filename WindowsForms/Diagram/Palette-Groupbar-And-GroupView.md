---
layout: post
title: Palette-Groupbar-And-GroupView | Windows Forms | Syncfusion
description: Palette Groupbar And GroupView  
platform: windowsforms
control: Diagram
documentation: ug
---

# Palette Groupbar And GroupView

The Palette Groupbar control provides a way for users to drag-and-drop the symbols onto a diagram. It is based on the Syncfusion Essential Tools GroupBar control. Each symbol palette loaded in the PaletteGroupBar occupies a panel that can be selected by a bar button. The bar button is labeled with the name of the symbol palette. The symbols in the palette are shown as icons that can be dragged and dropped onto the diagram. This control allows users to add symbols to a palette, and save or load the palette whenever necessary. It provides a way to classify and maintain the symbols.

The PaletteGroupView control provides an easy way to serialize a symbol palette to and from the resource file of a form. At the design-time, users can attach a symbol palette to a PaletteGroupView control in a form. Selecting the PaletteGroupView, and clicking the Palette property in the Visual Studio .NET properties window, opens a standard Open File dialog, which allows the user to select a symbol palette file that has been created using the Symbol Designer.

The properties of the PaletteGroupBar and GroupView with their descriptions are given in the below table.



_PaletteGroupBar and GroupView_

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Sets the background color of the component.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Sets the border style to FixedSingle, Fixed3D or None.</td></tr>
<tr>
<td>
Collapsed</td><td>
Indicates whether the GroupBar is collapsed.</td></tr>
<tr>
<td>
CollapsedText</td><td>
Sets the text for the collapsed client area of the GroupBar.</td></tr>
<tr>
<td>
CollapsedWidth</td><td>
Specifies the width of the collapsed GroupBar.</td></tr>
<tr>
<td>
CollapseImage</td><td>
Image of the collapsed button in the expanded state.</td></tr>
<tr>
<td>
DrawClientBorder</td><td>
Indicates whether border is drawn around the GroupBar's client window.</td></tr>
<tr>
<td>
ExpandImage</td><td>
Sets image of the collapse button.</td></tr>
<tr>
<td>
FlatLook</td><td>
Indicates whether control is displayed with a flat look.</td></tr>
<tr>
<td>
Font</td><td>
Sets font style for text in the control.</td></tr>
<tr>
<td>
ForeColor</td><td>
Sets fore color of the display text in the component.</td></tr>
<tr>
<td>
GroupBarItemCursor</td><td>
Cursor that is to be displayed when the mouse pointer is over the GroupBarItems.</td></tr>
<tr>
<td>
Office2007Theme</td><td>
Sets the (blue, black or silver) office theme used for drawing the control.</td></tr>
<tr>
<td>
PopupClientSize</td><td>
Sets the initial size of the pop-up for GroupBar client.</td></tr>
<tr>
<td>
PopupResizeMode</td><td>
Gets / sets the pop-up resize mode.</td></tr>
<tr>
<td>
ShowPopupGripper</td><td>
Boolean value indicating whether to show GroupBarItem's popup gripper.</td></tr>
<tr>
<td>
Text</td><td>
Text associated with the control.</td></tr>
<tr>
<td>
TextAlign</td><td>
Alignment of the text set through Text property.</td></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether control should be themed.</td></tr>
<tr>
<td>
VisualStyle</td><td>
Visual style for drawing the control. Styles are Default, OfficeXP, Office2003, VS2005 and Office2007.</td></tr>
<tr>
<td>
AllowCollapse</td><td>
Indicates whether GroupBar can be collapsed.</td></tr>
<tr>
<td>
AnimatedSelection</td><td>
Indicates whether animated selection is enabled.</td></tr>
<tr>
<td>
BarHighlight</td><td>
Indicates whether GroupBar item is highlighted on mouse hovering over a GroupBar Item.</td></tr>
<tr>
<td>
EditMode</td><td>
This property determines whether the symbols from the palette can be dragged and dropped onto the Diagram.</td></tr>
<tr>
<td>
Enabled</td><td>
Indicates whether component is enabled.</td></tr>
<tr>
<td>
ExpandButtonToolTip</td><td>
Sets tooltip for Collapse button, when the control is collapsed.</td></tr>
<tr>
<td>
GroupBarItemHeight</td><td>
Height of the GroupBarItems.</td></tr>
<tr>
<td>
MinimizeButtonToolTip</td><td>
ToolTip for collapse button when control is expanded.</td></tr>
<tr>
<td>
NavigationPaneToolTip</td><td>
ToolTip for navigation pane.</td></tr>
<tr>
<td>
PopupAutoClose</td><td>
Indicates whether pop-up is closed after clicking an item.</td></tr>
<tr>
<td>
SelectedItem</td><td>
Index of the selected GroupBarItem.</td></tr>
<tr>
<td>
StackedMode</td><td>
Indicates whether GroupBarItem is stacked.</td></tr>
<tr>
<td>
Visible </td><td>
Sets the visibility of the GroupBar control.</td></tr>
<tr>
<td>
GroupBarItems</td><td>
GroupBarItem collection in the control.</td></tr>
<tr>
<td>
ShowChevron</td><td>
Indicates if chevron button of the navigation panel should be displayed when required.</td></tr>
<tr>
<td>
ShowItemImageInHeader</td><td>
Gets / sets a value indicating whether the selected item's image is shown in the header in Stacked GroupBar.</td></tr>
<tr>
<td>
Palette</td><td>
Indicates the loaded palette is in palette view.</td></tr>
</table>


_PaletteGroupBar and GroupView_

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
LoadPalette</td><td>
Loads given Symbol Palette to the PaletteGroupView.</td></tr>
</table>


The important events of the PaletteGroupBar and GroupView with their descriptions are given in the below table.

<table>
<tr>
<th>
Event</th><th>
Description</th></tr>
<tr>
<td>
Click</td><td>
Occurs when component is clicked.</td></tr>
<tr>
<td>
DoubleClick</td><td>
Occurs when the component is double-clicked.</td></tr>
<tr>
<td>
GroupViewItemHighlighted </td><td>
Event fired when an item in the GroupView control is highlighted.</td></tr>
<tr>
<td>
GroupViewItemSelected</td><td>
Event fired when an item in the GroupView control is selected.</td></tr>
<tr>
<td>
GroupViewItemReordered</td><td>
Event fired after the GroupView control items have been reordered by a drag–and–drop operation.</td></tr>
<tr>
<td>
GroupViewItemRenamed</td><td>
Event fired after an in-place rename operation.</td></tr>
<tr>
<td>
ShowContextMenu Event</td><td>
Event fired when the right mouse button is clicked over the control.</td></tr>
</table>


Programmatically, the properties can be set as follows.


{% tabs %}
{% highlight c# %}

    paletteGroupBar1.AllowDrop = true;
    paletteGroupBar1.Controls.Add(paletteGroupView1);
    paletteGroupBar1.Controls.Add(paletteGroupView2);
    paletteGroupBar1.Dock = System.Windows.Forms.DockStyle.Left;
    paletteGroupBar1.EditMode = false;
    paletteGroupBar1.GroupBarItems.AddRange(new Syncfusion.Windows.Forms.Tools.GroupBarItem[]{ groupBarItem1, groupBarItem2 });
    paletteGroupBar1.Location = new System.Drawing.Point(0, 0);
    paletteGroupBar1.Name = "paletteGroupBar1";
    paletteGroupBar1.SelectedItem = 1;
    paletteGroupBar1.Size = new System.Drawing.Size(114, 477);
    paletteGroupBar1.TabIndex = 1;
    paletteGroupBar1.Text = "Symbol Palette";
    
    groupBarItem1.Client = paletteGroupView1;
    groupBarItem1.Text = "Basic Shapes";
    groupBarItem2.Client = paletteGroupView2;
    groupBarItem2.Text = "ElectricalSymbols";
    
    paletteGroupView1.ButtonView = true;
    paletteGroupView1.Location = new System.Drawing.Point(2, 24);
    paletteGroupView1.Name = "paletteGroupView1";
    paletteGroupView1.Size = new System.Drawing.Size(71, 0);
    paletteGroupView1.TabIndex = 0;
    paletteGroupView1.Text = "paletteGroupView1";
    
    paletteGroupView1.LoadPalette
    (@"..\..\..\..\..\..\..\..\..\Common\Data\Diagram\BasicShapes.edp");
    
    paletteGroupView2.LoadPalette
    (@"..\..\..\..\..\..\..\..\..\Common\Data\Diagram\ElectricalSymbols.edp");

{% endhighlight %}
{% highlight vbnet %}

    paletteGroupBar1.AllowDrop = True
    paletteGroupBar1.Controls.Add(paletteGroupView1)
    paletteGroupBar1.Controls.Add(paletteGroupView2)
    paletteGroupBar1.Dock = System.Windows.Forms.DockStyle.Left
    paletteGroupBar1.EditMode = False
    paletteGroupBar1.GroupBarItems.AddRange(New Syncfusion.Windows.Forms.Tools.GroupBarItem() {groupBarItem1, groupBarItem2})
    paletteGroupBar1.Location = New System.Drawing.Point(0, 0)
    paletteGroupBar1.Name = "paletteGroupBar1"
    paletteGroupBar1.SelectedItem = 1
    paletteGroupBar1.Size = New System.Drawing.Size(114, 477)
    paletteGroupBar1.TabIndex = 1
    paletteGroupBar1.Text = "Symbol Palette"
    
    groupBarItem1.Client = paletteGroupView1
    groupBarItem1.Text = "Basic Shapes"
    groupBarItem2.Client = paletteGroupView2
    groupBarItem2.Text = "ElectricalSymbols"
    
    paletteGroupView1.ButtonView = True
    paletteGroupView1.Location = New System.Drawing.Point(2, 24)
    paletteGroupView1.Name = "paletteGroupView1"
    paletteGroupView1.Size = New System.Drawing.Size(71, 0)
    paletteGroupView1.TabIndex = 0
    paletteGroupView1.Text = "paletteGroupView1"
    
    paletteGroupView1.LoadPalette("..\..\..\..\..\..\..\..\..\Common\Data\Diagram\BasicShapes.edp")
    paletteGroupView2.LoadPalette("..\..\..\..\..\..\..\..\..\Common\Data\Diagram\ElectricalSymbols.edp")

{% endhighlight %}
{% endtabs %}

### Dynamically add Symbol Palette into PaletteGroupBar 

You can add Symbol Palettes into PaletteGroupBar by means of deserializing the palette (*.edp) file dynamically. The PaletteGroupBar control supports PaletteGroupBar1.AddPalette() method in order to add a palette into the PaletteGroupBar.

Follow the steps given below for adding symbol palette into PaletteGroupBar:

1. Add OpenFileDialog control into form.
2. Set the Filter property of OpenFileDialog as,
3. Essential Diagram Palettes|*.edp|Visio Stencils|*.vss; *.vsx|Visio Drawings(Shapes only)|*.vsd; *.vdx|All files|*.*
4. Add the following lines of code to your button click event.


{% tabs %}
{% highlight c# %}

    if (openPaletteDialog.ShowDialog(this) == DialogResult.OK)
    {
        SymbolPalette curSymbolPalette;
        FileStream iStream;
        string strFileName = openPaletteDialog.FileName;
        RegexOptions options = RegexOptions.IgnoreCase | RegexOptions.RightToLeft;
        Match match = Regex.Match(strFileName, ".vss|.vsx|.vsd|.vdx", options);
        if (match.Success)
        {
            VisioStencilConverter converter = new VisioStencilConverter(strFileName, this);
            converter.ShowProgressDialog = true;
            curSymbolPalette = converter.Convert();
            if (curSymbolPalette != null)
                PaletteGroupBar1.AddPalette(curSymbolPalette);
        }
        else
        {
            try
            {
                iStream = new FileStream(strFileName, FileMode.Open, FileAccess.Read);
    
                // Deserialize  the Binary format
                IFormatter formatter = new BinaryFormatter();
                AppDomain.CurrentDomain.AssemblyResolve += new ResolveEventHandler(DiagramBaseAssembly.AssemblyResolver);
                curSymbolPalette = (SymbolPalette)formatter.Deserialize(iStream);
                PaletteGroupBar1.AddPalette(curSymbolPalette);
            }
            catch (Exception se)
            {
                MessageBox.Show(this, se.Message);
            }
            finally
            {
                iStream.Close();
            }
        }
    }

{% endhighlight %}
{% endtabs %}

### Saving the active Palette

You can save the current active palette of PaletteGroupBar window by means of serializing the palette (.edp) file. The PaletteGroupBar.CurrentSymbolPalette property returns the currently selected symbol palette.

Follow the steps given below for saving current symbol palette.

1. Add SaveFileDialog control into form.
2. Set the Filter property of SaveFileDialog as

   Essential Diagram Palettes|*.edp|All files|*.*

3. Add the following lines of code to your button click event. 


{% tabs %}
{% highlight c# %}

    if (savePaletteDialog.ShowDialog(this) == DialogResult.OK)
    {
        SymbolPalette symbolPalette = PaletteGroupBar1.CurrentSymbolPalette;
        string strSavePath = savePaletteDialog.FileName;
    
        if (symbolPalette != null)
        {
            FileStream fStream = new FileStream(strSavePath, FileMode.OpenOrCreate, FileAccess.Write);
            BinaryFormatter formatter = new BinaryFormatter();
            formatter.Serialize(fStream, symbolPalette);
            fStream.Close();
        }
    }

{% endhighlight %}
{% endtabs %}

![](Supported-Controls_images/Supported-Controls_img3.jpeg)
