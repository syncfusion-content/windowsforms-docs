---
layout: post
title: AutoClosing Behavior | WindowsForms | Syncfusion
description: AutoClosing Behavior
platform: WindowsForms
control: Editors Package
documentation: ug
---

# AutoClosing Behavior

When a PopupControlContainer control is associated as the popup for a control, by default, the pop-up will hide when the user clicks anywhere outside the pop up besides the control (if any) that is specified in the "ParentControl" property. To control this default behavior, i.e, to display the popup even if there is any mouse actions, set IgnoreMouseMessages property to true.

Example

The Popup of a textbox, on a button click should be closed only when the textbox is not empty. For this purpose, the popup should not be closed on any mouse action. So set IgnoreMouseMessages property to true for this property.



{% highlight C# %}



this.popupControlContainer1.IgnoreMouseMessages = true;



private void button1_Click(object sender,EventArgs e)

{

  // Hides the PopupControlContainer under a button click.

if(Textbox.Text!="") 

{

   this.popupControlContainer1.HidePopup(PopupCloseType.Done);

}

}


{% endhighlight %}




{% highlight vbnet %}


Me.popupControlContainer1.IgnoreMouseMessages = True



Private Sub button1_Click(sender as Object,e as EventArgs)

'Hides the PopupControlContainer under a button click.

If Not Textbox.Text = "" Then

      this.popupControlContainer1.HidePopup(PopupCloseTypes.Done)

End Sub
{% endhighlight %}


If you want more control over this behavior, then you will have to implement the IPopupParent interface and set the PopupParent property in the PopupControlContainer.

A sample which illustrates the IPopupParent interface is available in the below sample installation location.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

![](Container-Control-Images/Overview_img357.jpeg) 



## Key navigation

When the pop-up is visible, the PopupControlContainer will look for Alt, Enter, Tab, Esc, F4, and F2 keys and either cancel or close the pop-up. In order to navigate, the PopupControlContainer's IgnoreDialogKey property must be set to true. 



{% highlight C# %}

this.popupControlContainer1.IgnoreDialogKey = true;

{% endhighlight %}

{% highlight vbnet %}




Me.popupControlContainer1.IgnoreDialogKey = True
{% endhighlight %}

## Hiding popup with PopupCloseType mode

We can hide the popup using HidePopup method in PopupCloseType mode.

To hide the popup with the changes applied to the popup, PopupCloseType should be set to _Done_. To cancel the changes, PopupCloseType should be set to _Canceled_. Setting PopupCloseType to _Deactivated_ will deactivate the popup when the user clicks in different application.