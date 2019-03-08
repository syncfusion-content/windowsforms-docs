---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: creating colorpickerui adv
platform: WindowsForms
control: ColorPickerUIAdv
documentation: ug
---
# Getting Started

This section will help you to get started with using the ColorPickerUIAdv control.

The ColorPickerUIAdv can be easily created in the designer, by dragging-and-dropping from the toolbox on to the windows application form.

![Windows forms ColorPickerUIAdv drag and drop from toolbox](ColorPickerUIAdv_Images/ColorPickerUIAdv_toolbox.jpeg) 

It can be added programmatically by performing the following steps.

**Step 1** - Add the following required assembly reference to the project.
	
	Syncfusion.Tools.Windows.dll

**Step 2** - Include the namespace for the Tools Package.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

**Step 3** - Create an instance of ColorPickerUIAdv and add it to the Windows Form.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.ColorPickerUIAdv colorPickerUIAdv1;
ColorPickerUIAdv cpa = new ColorPickerUIAdv();
cpa.Size = new Size(200, 180);
this.Controls.Add(cpa);

{% endhighlight %}

{% highlight vb %}

Private colorPickerUIAdv1 As Syncfusion.Windows.Forms.Tools.ColorPickerUIAdv 
Private cpa As ColorPickerUIadv = New ColorPickerUIadv()
Private cpa.Size = New Size(200, 180)
Me.Controls.Add(cpa)
 
{% endhighlight %}
{% endtabs %}

   ![ColorPickerUIAdv for Windows Forms](ColorPickerUIAdv_Images/ColorPickerUIAdv.jpeg) 
