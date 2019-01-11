---
layout: post
title: Keyboard Shortcuts | Windows Forms | Syncfusion
description: The menu items can be selected and the respective action can be done by specifying the shortcuts
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Keyboard Shortcuts

The menu items can be selected through keyboard operation by specifying the shortcuts via the **ShortcutKeys** property of the ContextMenu.

>**NOTE**:        
> 1. This feature is not applicable for combobox and textbox.           
> 2. By using this keyboard shortcuts we can access the menu items through click event.

## Through Designer

1. The **ShowShortcutKeys** property is used for display the shortcut key on menu items.

![](Shortcut_Images/Properties2.png)

2. Once menu items are added, we can set the shortcut keys by right-clicking on the particular item in the designer and select **Properties** option. Now, in the **Properties** panel, under **Misc > ShortcutKeys** we need to set the shortcut key.

![](Shortcut_Images/Properties.png)

![](Shortcut_Images/Properties1.png)

![](Shortcut_Images/Shortcut.png)

## Through Code

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

![](Shortcut_Images/Shortcut.png)

**ShortcutKeyDisplayString** : You can modify the "ShortcutKey" string by using the **ShortcutKeyDisplayString** property.

{% tabs %}
{% highlight c# %}

this.toolStripMenuItem1.ShortcutKeyDisplayString = "Press Ctrl + N";

{% endhighlight %}

{% highlight vb %}

Me.toolStripMenuItem1.ShortcutKeyDisplayString = "Press Ctrl + N"

{% endhighlight %}
{% endtabs %}

![](Shortcut_Images/Shortcut1.png)

