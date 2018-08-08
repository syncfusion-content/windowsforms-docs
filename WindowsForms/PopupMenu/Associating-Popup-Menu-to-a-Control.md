---
layout: post
title: Associating-Popup-Menu-to-a-Control | WindowsForms | Syncfusion
description: associating popup menu to a control
platform: WindowsForms
control: Popup-Menu
documentation: ug
---

# Associating Pop-up Menu to a Control

In the previous topic, we saw how to add and fill a popup menu with menu items. This section will guide you on how to associate a popup menu to a control like RichTextBox (in this example), through designer without a single piece of code. 

Drag and Drop a PopupMenusManager control onto the form. Also add a RichTextBox control. When PopupMenusManager class is dragged onto the design surface, it will provide an extended property, XPContextMenu on popupMenusManager1 for all the controls in the form, letting the users to easily associate a popup menu with a control. 

![Associating-Popup-Menu-to-a-Control_img1](Associating-Popup-Menu-to-a-Control_images/Associating-Popup-Menu-to-a-Control_img1.png)

N> A single PopupMenu can be associated with multiple controls.

{% tabs %}

{% highlight c# %}

public Form1()
{   
    InitializeComponent();

    // Create and initialize a ParentBarItem.
    this.parentBarItem1 = new Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem();
    this.parentBarItem1.Items.AddRange(new BarItem[] { this.Files, this.CutItem, this.CopyItem, this.EditItem });

    // Associate the ParentBarItem with the PopupMenu.
    this.popupMenu1 = new Syncfusion.Windows.Forms.Tools.XPMenus.PopupMenu();
    this.popupMenu1.ParentBarItem = this.parentBarItem1;

    // Then associate it with a RichTextBox.
    this.popupMenusManager1 = new PopupMenusManager();
    this.popupMenusManager1.SetXPContextMenu(this.richTextBox1, this.popupMenu1);
}

{% endhighlight %}

{% highlight vb %}

Public Sub New()
    InitializeComponent()

    ' Create and initialize a ParentBarItem.
    Me.parentBarItem1 = New Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem()
    Me.parentBarItem1.Items.AddRange(New BarItem() { Me.Files, Me.CutItem, Me.CopyItem, Me.EditItem })

    ' Associate the ParentBarItem with the PopupMenu.
    Me.popupMenu1 = New Syncfusion.Windows.Forms.Tools.XPMenus.PopupMenu()
    Me.popupMenu1.ParentBarItem = Me.parentBarItem1

    ' Then associate it with a RichTextBox.
    Me.popupMenusManager1 = New PopupMenusManager()
    Me.popupMenusManager1.SetXPContextMenu(Me.richTextBox1, Me.popupMenu1)
End Sub

{% endhighlight %}

{% endtabs %}

![Associating-Popup-Menu-to-a-Control_img3](Associating-Popup-Menu-to-a-Control_images/Associating-Popup-Menu-to-a-Control_img3.png)