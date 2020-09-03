---
layout: post
title: Behavior-Settings | WindowsForms | Syncfusion
description: Learn here about how to change the behavior of the Syncfusion Windows Forms TextBoxExt control and its properties.
platform: WindowsForms
control: TextBoxExt
documentation: ug
---

# Behavior Settings in TextBoxExt

The behavior settings of the TextBoxExt control are discussed below.

## MaxLength

You can specify the maximum number of characters that can be entered into the [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control by using [MaxLength](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.maxlength?redirectedfrom=MSDN&view=netcore-3.1#System_Windows_Forms_TextBoxBase_MaxLength) property. The default value is `32767`.

{% tabs %}

{% highlight c# %}

this.textBoxExt1.MaxLength = 4;               

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.MaxLength = 4

{% endhighlight %}

{% endtabs %}

![Specify the maximum number character entered into WF TextBoxExt](Behavior-Settings-images/wf-textboxext-maxlength.png)

### ReadOnly

You can specifies whether the text can be changed or not in `TextBoxExt` control by using [ReadOnly](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.readonly?redirectedfrom=MSDN&view=netcore-3.1#System_Windows_Forms_TextBoxBase_ReadOnly) property.

{% tabs %}

{% highlight c# %}

this.textBoxExt1.ReadOnly = true;

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.ReadOnly = True

{% endhighlight %}

{% endtabs %}

![Specify whether the text changed or not in WF TextBoxExt](Behavior-Settings-images/wf-textboxext-readonly.png)
