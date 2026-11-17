---
layout: post
title: Keyboard Shortcuts in Windows Forms ContextMenuStrip | Syncfusion®
description: Learn here all about Keyboard Shortcuts feature in Syncfusion® Windows Forms ContextMenuStrip (ContextMenuStripEx) control and more.
platform: windowsforms
control: ContextMenuStripEx
documentation: ug
---

# Keyboard Shortcuts in WinForms Context Menu Strip

The menu items can be selected through keyboard operation by specifying the shortcuts via the [`ShortcutKeys`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripmenuitem.shortcutkeys?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripMenuItem_ShortcutKeys) property of the WinForms Context Menu Strip. The [`ShowShortcutKeys`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripmenuitem.showshortcutkeys?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripMenuItem_ShowShortcutKeys) property is used to display the shortcut key text in the menu item.

>**NOTE**:
> 1. This feature is not applicable for ComboBox and TextBox.
> 2. By using these keyboard shortcuts we can access the menu items through the [`Click`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripitem.click?view=netframework-4.7.2) event.
> 3. To learn more about the list of Keys Enum, go to the [Keys enum reference](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.keys).


The below code snippet shows how shortcut is assigned to the menu item.

{% tabs %}
{% highlight c# %}

this.toolStripMenuItem1.ShowShortcutKeys = true;
this.toolStripMenuItem1.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.N)));

{% endhighlight %}

{% highlight vb %}

Me.toolStripMenuItem1.ShowShortcutKeys = True
Me.toolStripMenuItem1.ShortcutKeys = (CType((System.Windows.Forms.Keys.Control Or System.Windows.Forms.Keys.N), System.Windows.Forms.Keys))

{% endhighlight %}
{% endtabs %}

![Shortcut key displayed beside the menu item](Shortcut_Images/Shortcut.png)

**ShortcutKeyDisplayString**: User can also specify custom text in place of the keyboard shortcuts region using the [`ShortcutKeyDisplayString`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripmenuitem.shortcutkeydisplaystring?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripMenuItem_ShortcutKeyDisplayString) property. When `ShortcutKeyDisplayString` is set, it takes precedence over the text that would otherwise be derived from the `ShortcutKeys` value.

{% tabs %}
{% highlight c# %}

this.toolStripMenuItem1.ShowShortcutKeys = true;
this.toolStripMenuItem1.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.N)));
this.toolStripMenuItem1.ShortcutKeyDisplayString = "Press Ctrl + N";

{% endhighlight %}

{% highlight vb %}

Me.toolStripMenuItem1.ShowShortcutKeys = True
Me.toolStripMenuItem1.ShortcutKeys = (CType((System.Windows.Forms.Keys.Control Or System.Windows.Forms.Keys.N), System.Windows.Forms.Keys))
Me.toolStripMenuItem1.ShortcutKeyDisplayString = "Press Ctrl + N"

{% endhighlight %}
{% endtabs %}

![Custom ShortcutKeyDisplayString replacing the default shortcut text](Shortcut_Images/Shortcut1.png)

