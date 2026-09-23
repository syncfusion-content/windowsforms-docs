---
layout: post
title: Keyboard Navigation in Windows Forms Popup | Syncfusion®
description: Keyboard navigation supports dialog key handling, popup closing through keyboard shortcuts, and customizable key processing.
platform: windowsforms
control: PopupControlContainer
documentation: ug
---

# Keyboard Navigation in Windows Forms Popup (PopupControlContainer)

 When the popup is visible, the PopupControlContainer will look for Alt, Enter, Tab, Esc, F4, and F2 keys to close the popup. If user want to change this, set [IgnoreDialogKey](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_IgnoreDialogKey) property to `true` and should make sure to close the popup manually by using [HidePopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_HidePopup) method.

 >**NOTE** : 
 By default, the [IgnoreDialogKey](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_IgnoreDialogKey) property is set as `false`.

{% tabs %}
{% highlight C# %}

this.popupControlContainer1.IgnoreDialogKey = true;

{% endhighlight %}

{% highlight vb %}

Me.popupControlContainer1.IgnoreDialogKey = True

{% endhighlight %}
{% endtabs %}
