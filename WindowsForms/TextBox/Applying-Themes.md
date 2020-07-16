---
layout: post
title: Applying-Themes | WindowsForms | Syncfusion
description: Learn here about how to apply the themes in the Syncfusion Windows Forms TextBoxExt and usages of theme.
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

## Applying Themes in TextBoxExt

The [ThemesEnabled](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt~ThemesEnabled.html) property specifies whether XPThemes should be used or not when [BorderStyle](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstyle?redirectedfrom=MSDN&view=netcore-3.1#System_Windows_Forms_TextBoxBase_BorderStyle) is set to `Fixed3D`.

{% tabs %}

{% highlight c# %}

this.textBoxExt1.ThemesEnabled = true;                          

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.ThemesEnabled = True

{% endhighlight %}

{% endtabs %}

![Enabled the themes when the border style is set to Fixed3D in WF TextBoxExt](Applying-Themes_images/Applying-Themes_img1.png)
