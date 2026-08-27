---
layout: post
title: Getting Started with Windows Forms FontListBox | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms FontListBox control. Explore setup, features, examples, and customization options.
platform: WindowsForms
control: FontListBox
documentation: ug
---

# Getting Started with Windows Forms FontListBox

This section briefly describes how to create a new Windows Forms project in Visual Studio and how to add the **FontListBox** with its basic functionalities.

## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#fontlistbox) section to get the list of assemblies or the details of NuGet package that needs to be added as reference to use the control in any application.

Refer to [NuGet Packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to learn how to install nuget packages in a Windows Forms application.

To install the required Syncfusion.Tools.Windows NuGet package via the Package Manager Console, run the following command:

```powershell
Install-Package Syncfusion.Tools.Windows
```

## Adding the FontListBox control via designer

The FontListBox control can be added via designer using the following steps:

1. Create a new Windows Forms application in Visual Studio.

2. Add the [FontListBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.FontListBox.html) control to an application by dragging it from the toolbox to design view. The following dependent assemblies will be added automatically:

    * Syncfusion.Grid.Base
    * Syncfusion.Grid.Windows
    * Syncfusion.Shared.Base
    * Syncfusion.Shared.Windows
    * Syncfusion.Tools.Base
    * Syncfusion.Tools.Windows

![Drag and drop FontListBox from toolbox in WindowsForms](overview_images/windowsforms-font-list-box-drag-and-drop-from-toolbox.jpeg) 

## Adding the FontListBox control via code

The following steps describe how to create a FontListBox control programmatically:

1. Create a C# or VB.NET Windows Forms application in Visual Studio.

2. Add the following assembly references to the project:

    * Syncfusion.Grid.Base
    * Syncfusion.Grid.Windows
    * Syncfusion.Shared.Base
    * Syncfusion.Shared.Windows
    * Syncfusion.Tools.Base
    * Syncfusion.Tools.Windows

3. Include the required namespace.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}
{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools
 
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }} 

4. Create an instance of the [FontListBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.FontListBox.html) control, specify its size, and add it to the form `Form1`.

{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

public partial class Form1 : Form
{
    private FontListBox fontListBox1;
    public Form1()
    {
        InitializeComponent();
        fontListBox1 = new FontListBox();
        fontListBox1.Size = new Size(160, 94);
        fontListBox1.Location = new Point(20, 20);
        this.Controls.Add(fontListBox1);
    }
}

{% endhighlight %}
{% highlight vb %}

Public Partial Class Form1
    Inherits Form

    Private fontListBox1 As FontListBox
    Public Sub New()
        InitializeComponent()
        fontListBox1 = New FontListBox()
        fontListBox1.Size = New Size(160, 94)
        fontListBox1.Location = New Point(20, 20)
        Me.Controls.Add(fontListBox1)
    End Sub
End Class

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }} 

![Adding FontListBox control via code in WindowsForms](overview_images/windowsforms-font-list-box-adding-code.jpeg)

## Selected items

At run time, the items in the **FontListBox** can be selected. The text style will be changed based on the selected font item from the FontListBox. The following sample uses a Label to preview the chosen font.

{% tabs %}
{% highlight c# %}

private Label label;

public Form1()
{
    InitializeComponent();

    // Hook the Load event to Form1_Load.
    this.Load += new System.EventHandler(this.Form1_Load);
}

private void Form1_Load(object sender, System.EventArgs e)
{
    // Create the Label control.
    label = new Label();
    label.Anchor = System.Windows.Forms.AnchorStyles.None;
    label.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
    label.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F);
    label.Location = new System.Drawing.Point(220, 30);
    label.Size = new System.Drawing.Size(360, 95);
    label.Text = "The FontListBox is a list box derived control that is automatically populated with the fonts installed on the user's system. It provides an easy way to fill a list box with system fonts.";

    // Add the control.
    this.Controls.Add(label);

    // Wire up the selection event for the control.
    fontListBox1.SelectedIndexChanged += new System.EventHandler(this.FontListBox1_SelectedIndexChanged);
}

// Selection event for FontListBox.
private void FontListBox1_SelectedIndexChanged(object sender, System.EventArgs e)
{
    if (this.fontListBox1.SelectedItem != null)
    {
        this.label.Font = new System.Drawing.Font(this.fontListBox1.SelectedItem.ToString(), 10, System.Drawing.FontStyle.Regular);
    }
}

{% endhighlight %}
{% highlight vb %}

Public Sub New()
    InitializeComponent()

    ' Hook the Load event to Form1_Load.
    AddHandler Me.Load, AddressOf Form1_Load
End Sub

Friend label As Label

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)
    ' Create the Label control.
    label = New Label()
    label.Anchor = System.Windows.Forms.AnchorStyles.None
    label.FlatStyle = System.Windows.Forms.FlatStyle.Flat
    label.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75F)
    label.Location = New System.Drawing.Point(220, 30)
    label.Size = New System.Drawing.Size(360, 95)
    label.Text = "The FontListBox is a list box derived control that is automatically populated with the fonts installed on the user's system. It provides an easy way to fill a list box with system fonts."

    ' Add the control.
    Me.Controls.Add(label)

    ' Wire up the selection event for the control.
    AddHandler fontListBox1.SelectedIndexChanged, AddressOf FontListBox1_SelectedIndexChanged
End Sub

' Selection event for FontListBox.
Private Sub FontListBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
    If Me.fontListBox1.SelectedItem IsNot Nothing Then
        Me.label.Font = New System.Drawing.Font(Me.fontListBox1.SelectedItem.ToString(), 10, System.Drawing.FontStyle.Regular)
    End If
End Sub

{% endhighlight %}
{% endtabs %}

![WindowsForms FontListBox showing change the text style](overview_images/windowsforms-font-list-box-selected-items.png)

## Selection mode

At run time, the items in the [FontListBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.FontListBox.html) can be selected based on the selection mode specified in the [SelectionMode](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.listbox.selectionmode?redirectedfrom=MSDN&view=netframework-4.8#System_Windows_Forms_ListBox_SelectionMode) property. Selection can be made using the mouse and keyboard.

The following options are available in the FontListBox control.

| SelectionMode | Description |
|---|---|
| None | No items can be selected. |
| One | Only one item can be selected. |
| MultiSimple | Multiple items can be selected. |
| MultiExtended | Multiple items can be selected using the SHIFT, CTRL, and arrow keys to make selections. |

{% tabs %}
{% highlight c# %}

fontListBox1.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;

{% endhighlight %}
{% highlight vb %}

fontListBox1.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended

{% endhighlight %}

{% endtabs %}

![Windows Forms FontListBox shows different selection of font list](overview_images/windowsforms-font-list-box-selection-mode.jpeg)
