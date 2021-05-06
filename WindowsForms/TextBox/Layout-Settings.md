---
layout: post
title: Layout Settings in Windows Forms TextBox control | Syncfusion
description: Learn about Layout Settings support in Syncfusion Windows Forms TextBox (TextBoxExt) control and more details.
platform: WindowsForms
control: TextBoxExt
documentation: ug
---

# Layout Settings in Windows Forms TextBox (TextBoxExt)

The layout settings of the TextBoxExt control are discussed in this section.

You can set the maximum or minimum size of WF [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control by using [MaximumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MaximumSize) and [MinimumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MinimumSize) properties.

{% tabs %}

{% highlight c# %}

this.textBoxExt1.MaximumSize = new System.Drawing.Size(150, 20);
this.textBoxExt1.MinimumSize = new System.Drawing.Size(150, 20);

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.MaximumSize = New System.Drawing.Size(150, 20)
Me.textBoxExt1.MinimumSize = New System.Drawing.Size(150, 20)

{% endhighlight %}

{% endtabs %}

![Change the layout of WF TextBoxExt control](Layout-Settings_images/Layout-Settings_img1.png)
