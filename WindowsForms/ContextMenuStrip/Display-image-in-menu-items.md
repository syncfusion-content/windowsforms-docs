---
layout: post
title: Display Image in Menu Items | Windows Forms | Syncfusion
description: Learn here all about Display image in menu items feature in Syncfusion Windows Forms ContextMenuStrip (ContextMenuStripEx) control and more.
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Windows Forms ContextMenuStrip Display image in menu items

Displaying an image besides each menu item helps users to easily identify the operation through iconic representation and also to improve the visual appearance of the context menu item. Images can be added directly via the [`Image`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripitem.image?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripItem_Image) property of each menu item. The size of the images can be adjusted by using the [`ImageScalingSize`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstrip.imagescalingsize?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStrip_ImageScalingSize) property.

> NOTE:       
>1. Image can be set only for menu items not for combobox and textbox.              
>2. Image will be displayed only if [`ShowImageMargin`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripdropdownmenu.showimagemargin?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripDropDownMenu_ShowImageMargin) property of ContextMenuStripEx is set to `true`.


The following code snippet illustrates how to add a image in menu item.

{% tabs %}
{% highlight c# %}

ContextMenuStripEx contextMenuStripEx = new ContextMenuStripEx();
ToolStripMenuItem toolStripMenuItem1 = new ToolStripMenuItem();
ToolStripMenuItem toolStripMenuItem2 = new ToolStripMenuItem();
RichTextBox richTextBox1  = new RichTextBox();

contextMenuStripEx.ShowImageMargin = true;
contextMenuStripEx.ImageScalingSize = new System.Drawing.Size(24, 24);
toolStripMenuItem1.Image = System.Drawing.Image.FromFile(@"..\..\..\new.png");
toolStripMenuItem2.Image = System.Drawing.Image.FromFile(@"..\..\..\copy.png");
toolStripMenuItem1.Text = "New";
toolStripMenuItem2.Text = "Copy";
contextMenuStripEx.Items.AddRange(new System.Windows.Forms.ToolStripItem[] { this.toolStripMenuItem1, this.toolStripMenuItem2, });
contextMenuStripEx.ResumeLayout(false);
richTextBox1.ContextMenuStrip = this.contextMenuStripEx;

{% endhighlight %}

{% highlight vb %}

contextMenuStripEx As New ContextMenuStripEx()
toolStripMenuItem1 As New ToolStripMenuItem()
toolStripMenuItem2 As New ToolStripMenuItem()
richTextBox1 As New RichTextBox()

contextMenuStripEx.ShowImageMargin = True
contextMenuStripEx.ImageScalingSize = New System.Drawing.Size(24, 24)
toolStripMenuItem1.Image = System.Drawing.Image.FromFile("..\..\..\new.png")
toolStripMenuItem2.Image = System.Drawing.Image.FromFile("..\..\..\copy.png")
toolStripMenuItem1.Text = "New"
toolStripMenuItem2.Text = "Copy"
contextMenuStripEx.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.toolStripMenuItem1, Me.toolStripMenuItem2})
contextMenuStripEx.ResumeLayout(False)
richTextBox1.ContextMenuStrip = Me.contextMenuStripEx

{% endhighlight %}
{% endtabs %}


![Display image in menu items](DisplayImage_Images/Image.png)

