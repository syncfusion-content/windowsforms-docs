---
layout: post
title: Hosting ComboBoxBase Control  | Windows Forms | Syncfusion
description: Hosting ComboBoxBase Control 
platform: windowsforms
control: Editors Package
documentation: ug
---

# Hosting ComboBoxBase Control  

We can place the ComboBoxBase control within PopupControlContainer such that the PopupControlContainer does not close when the ComboBoxBase's Popup is displayed.

You can do this by deriving from the PopupControlContainer, overriding the OnPopup method, and setting the focus to the derived control. This will ensure that the derived PopupControlContainer does not lose focus and close prematurely. The customized PopupControlContainer code should be like the code snippet shown below.



{% highlight C# %}


public class CustomPopupControlContainer : Syncfusion.Windows.Forms.PopupControlContainer

{

    public CustomPopupControlContainer()

    {



    }

    public CustomPopupControlContainer(IContainer container):this()

    {

      container.Add(this);

    }



    protected override void OnPopup(EventArgs args)

    {

      base.OnPopup(args);

      this.Focus();

    } 

}

{% endhighlight %}




{% highlight vbnet %}


Public Class CustomPopupControlContainer

      Inherits Syncfusion.Windows.Forms.PopupControlContainer

      Public Sub New()

      End Sub

   Public  Sub New(ByVal container As IContainer) : Me()

      container.Add(Me)

   End Sub



   Protected Overrides Sub OnPopup(ByVal args As EventArgs)

      MyBase.OnPopup(args)

      Me.Focus()

   End Sub

End Class

{% endhighlight %}

It is also necessary to specify the parent-child relationship between the ComboBoxBase’s pop-up and the PopupControlContainer. This can be done by handling the ComboBoxBase’s drop-down event as shown in the code sample below.


{% highlight C# %}




private void comboBoxBase1_DropDown(object sender, System.EventArgs e)

 {

       /* Setup the relationship between the ComboBoxBase’s dropdown and it's parent         

       PopupControlContainer, so that the pop-up will not close when the ComboBoxBase’s     

       dropdown is shown */



      this.comboBoxBase1.PopupContainer.PopupParent = this.popupControlContainer1;

     this.popupControlContainer1.CurrentPopupChild = this.comboBoxBase1.PopupContainer;

 }

{% endhighlight %}


{% highlight vbnet %}



Private  Sub comboBoxBase1_DropDown(ByVal sender As Object, ByVal e As System.EventArgs)

        ' Setup the relationship between the ComboBoxBase’s dropdown and it's parent         

        ' PopupControlContainer, so that the pop-up will not close when the ComboBoxBase’s     

        ' dropdown is shown 

       Me.comboBoxBase1.PopupContainer.PopupParent = Me.popupControlContainer1

      Me.popupControlContainer1.CurrentPopupChild = Me.comboBoxBase1.PopupContainer

End Sub
{% endhighlight %}