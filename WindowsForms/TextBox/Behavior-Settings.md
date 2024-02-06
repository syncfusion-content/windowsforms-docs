---
layout: post
title: Behavior Settings in Windows Forms TextBox control | Syncfusion
description: Learn about Behavior Settings support in Syncfusion Windows Forms TextBox (TextBoxExt) control and more details.
platform: WindowsForms
control: TextBoxExt
documentation: ug
---

# Behavior Settings in Windows Forms TextBox (TextBoxExt)

The behavior settings of the TextBoxExt control are discussed below.

## MaxLength

You can specify the maximum number of characters that can be entered into the [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control by using [MaxLength](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.maxlength?view=windowsdesktop-7.0&viewFallbackFrom=netcore-3.1&redirectedfrom=MSDN#System_Windows_Forms_TextBoxBase_MaxLength) property. The default value is `32767`.

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

You can specifies whether the text can be changed or not in `TextBoxExt` control by using [ReadOnly](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.readonly?view=windowsdesktop-7.0&viewFallbackFrom=netcore-3.1&redirectedfrom=MSDN#System_Windows_Forms_TextBoxBase_ReadOnly) property.

{% tabs %}

{% highlight c# %}

this.textBoxExt1.ReadOnly = true;

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.ReadOnly = True

{% endhighlight %}

{% endtabs %}

![Specify whether the text changed or not in WF TextBoxExt](Behavior-Settings-images/wf-textboxext-readonly.png)
