---
layout: post
title: Keyboard Navigation | Windows Forms | Syncfusion
description: Keyboard Navigation
platform: WindowsForms
control: PopupControlContainer
documentation: ug
---

# Keyboard Navigation

 When the popup is visible, the PopupControlContainer will look for Alt, Enter, Tab, Esc, F4, and F2 keys to close the popup. If user want to change this, set [`IgnoreDialogKey`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.PopupControlContainer~IgnoreDialogKey.html) property to `true` and should make sure to close the popup manually by using [`HidePopup`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.PopupControlContainer~HidePopup(PopupCloseType).html) method.

 >**NOTE** : 
 By default, the [`IgnoreDialogKey`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.PopupControlContainer~IgnoreDialogKey.html) property is set as `false`.

{% tabs %}
{% highlight C# %}

this.popupControlContainer1.IgnoreDialogKey = true;

{% endhighlight %}

{% highlight vb %}

Me.popupControlContainer1.IgnoreDialogKey = True

{% endhighlight %}
{% endtabs %}