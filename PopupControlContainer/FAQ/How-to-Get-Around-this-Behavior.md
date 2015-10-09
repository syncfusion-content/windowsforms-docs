---
layout: post
title: How to Get Around this Behavior | WindowsForms | Syncfusion
description: How to Get Around this Behavior
platform: WindowsForms
control: Editors Package
documentation: ug
---


# How to Get Around this Behavior?

In order to workaround this behavior, you can set a boolean flag and cancel the BeforeCloseUp event as shown below.


{% highlight C# %}



private bool bool1;



private void PopupContainer_Popup(object sender, EventArgs e)

{

     bool1= true;

}

private void PopupContainer_BeforeCloseUp(object sender, CancelEventArgs e)

{

if(bool1)

{

e.Cancel = true;

}

}

private void comboDropDown1_LostFocus(object sender, EventArgs e)

{

bool1= false;

}

private void Form1_Click(object sender, EventArgs e)

{

bool1= false;

}

{% endhighlight %}



{% highlight vbnet %}



Private bool1 As Boolean 

Private Sub PopupContainer_Popup(ByVal sender As Object, ByVal e As EventArgs) 

      bool1 = True 

End Sub 



Private Sub PopupContainer_BeforeCloseUp(ByVal sender As Object, ByVal e As CancelEventArgs) 

      If bool1 Then 

          e.Cancel = True 

      End If 

End Sub 



Private Sub comboDropDown1_LostFocus(ByVal sender As Object, ByVal e As EventArgs) 

      bool1 = False 

End Sub



Private Sub Form1_Click(ByVal sender As Object, ByVal e As EventArgs) 

      bool1 = False 

End Sub 

{% endhighlight %}

You can set the Boolean value to be false under the Form's Click event and Control's LostFocus event so that the DropDown closes for rest of the cases.