---
layout: post
title: Keyboard support in Windows Forms Menus Control | Syncfusion
description: Learn here all about Keyboard support feature of Syncfusion Windows Forms Menu (Menus) control and more.
platform: WindowsForms
control: MainFrameBarManager 
documentation: ug
---

# Keyboard Support in Windows Forms Menu (Menus)

The menu control supports keyboard functionalities for navigation and selection of menu items. In this topic such keyboard support is discussed.

## Displaying shortcut text in menu item

The menu items can be selected and the respective action can be done by specifying the shortcuts via the `Shortcut` property of the menu item. The below code snippet shows a shortcut is being assigned to the menu item.

{% tabs %}

{% highlight C# %}

this.barItem1.Shortcut = Shortcut.AltDownArrow;

{% endhighlight %}

{% highlight VB %}

Me.barItem1.Shortcut = Shortcut.AltDownArrow

{% endhighlight %}

{% endtabs %}

![Menu item is applied with a shortcut text](Keyboard-Support-images/menuShortCut.png)

## Displaying Mnemonic in menu items

The menu items supports to add mnemonic text. As usual, the required mnemonic character is appended with `&` symbol in the `Text` property of the menu item. This character can be made visible all the time using the `ShowMnemonicUnderlinesAlways` property of the menu item.

The below snippet shows the drop down item is applied with the mnemonics.

{% tabs %}

{% highlight C# %}

this.barItem3.Text = "&Copy";
this.barItem3.ShowMnemonicUnderlinesAlways = true;

{% endhighlight %}

{% highlight VB %}

Me.dropDownItem.Text = "Drop do&wn item"
Me.dropDownItem.ShowMnemonicUnderlinesAlways = true

{% endhighlight %}

{% endtabs %}

![Menu item with mnemonics](Keyboard-Support-images/menuItem_with_Mnemonics.png)