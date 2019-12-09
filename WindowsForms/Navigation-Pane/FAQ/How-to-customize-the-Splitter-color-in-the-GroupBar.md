---
layout: post
title: How to customize the Splitter color | WindowsForms | Syncfusion
description: Frequently Asked Questions
platform: WindowsForms
control: GroupBar
documentation: ug
---
# How to customize the Splitter color in the GroupBar?

## Appearance settings

The following properties help customize the splitter color in the GroupBar.

* [StackedMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBar~StackedMode.html)
* [SplitterColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBar~Splittercolor.html)
* [EnableSplittercolorCustomization](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBar~EnableSplittercolorCustomization.html)

{% tabs %}

{% highlight C# %}  

 this.groupBar1.StackedMode = true;

// To customize the splitter color

this.groupBar1.Splittercolor = Color.Red;

// To define whether to use default splitter color or customized color

this.groupBar1.EnableSplittercolorCustomization = true;

{% endhighlight %}



{% highlight VB %} 

 Me.groupBar1.StackedMode = True

' To customize the splitter color

Me.groupBar1.Splittercolor = Color.Red

' To define whether to use default splitter color or customized color

Me.groupBar1.EnableSplittercolorCustomization = True

{% endhighlight %}

{% endtabs %}

 ![Splitter color](Overview_images/Overview_img48.png)
