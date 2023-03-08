---
layout: post
title: Display Image in Menu Items | Windows Forms | Syncfusion
description: Learn here all about Display image in menu items feature in Syncfusion Windows Forms ContextMenuStrip (ContextMenuStripEx) control and more.
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Windows Forms ContextMenuStrip Display image in menu items

Displaying an image besides each menu item helps users to easily identify the operation through iconic representation and also to improve the visual appearance of the context menu item. Images can be added directly via the [`Image`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripitem.image?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripItem_Image) property of each menu item. The size of the images can be adjusted by using the [`ImageScalingSize`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstrip.imagescalingsize?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStrip_ImageScalingSize) property.

> NOTE:       
>1. Image can be set only for menu items not for combobox and textbox.              
>2. Image will be displayed only if [`ShowImageMargin`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripdropdownmenu.showimagemargin?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripDropDownMenu_ShowImageMargin) property of ContextMenuStripEx is set to `true`.


The following code snippet illustrates how to add a image in menu item.

{% tabs %}
{% highlight c# %}

private ContextMenuStripEx contextMenuStripEx = new ContextMenuStripEx();
private ToolStripMenuItem toolStripMenuItem1 = new ToolStripMenuItem();
private ToolStripMenuItem toolStripMenuItem2 = new ToolStripMenuItem();
private RichTextBox richTextBox1 = new RichTextBox();

public Form1()
{
    this.contextMenuStripEx.ShowImageMargin = true;
    this.contextMenuStripEx.ImageScalingSize = new System.Drawing.Size(24, 24);
    this.toolStripMenuItem1.Image = System.Drawing.Image.FromFile(@"..\..\..\new.png");
    this.toolStripMenuItem2.Image = System.Drawing.Image.FromFile(@"..\..\..\copy.png");
    this.toolStripMenuItem1.Text = "New";
    this.toolStripMenuItem2.Text = "Copy";
    this.contextMenuStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {this.toolStripMenuItem1, this.toolStripMenuItem2,});
    this.contextMenuStripEx.ResumeLayout(false);
    this.richTextBox1.ContextMenuStrip = this.contextMenuStripEx;
    this.Controls.Add(this.richTextBox1);
    InitializeComponent();
}

{% endhighlight %}

{% highlight vb %}

Private contextMenuStripEx As New ContextMenuStripEx()
Private toolStripMenuItem1 As New ToolStripMenuItem()
Private toolStripMenuItem2 As New ToolStripMenuItem()
Private richTextBox1 As New RichTextBox()

Public Sub New()
    Me.contextMenuStripEx.ShowImageMargin = True
    Me.contextMenuStripEx.ImageScalingSize = New System.Drawing.Size(24, 24)
    Me.toolStripMenuItem1.Image = System.Drawing.Image.FromFile("..\..\..\new.png")
    Me.toolStripMenuItem2.Image = System.Drawing.Image.FromFile("..\..\..\copy.png")
    Me.toolStripMenuItem1.Text = "New"
    Me.toolStripMenuItem2.Text = "Copy"
    Me.contextMenuStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.toolStripMenuItem1, Me.toolStripMenuItem2})
    Me.contextMenuStripEx.ResumeLayout(False)
    Me.richTextBox1.ContextMenuStrip = Me.contextMenuStripEx
    Me.Controls.Add(Me.richTextBox1)
    InitializeComponent()
End Sub

{% endhighlight %}
{% endtabs %}


![Display image in menu items](DisplayImage_Images/Image.png)

