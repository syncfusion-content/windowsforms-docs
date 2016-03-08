---
layout: post
title: How to show PopupControlContainer as the popup for a RichTextBox control | Windows Forms | Syncfusion
description: How to show PopupControlContainer as the popup for a RichTextBox control
platform: windowsforms
control: Editors Package
documentation: ug
---




# How to show PopupControlContainer as the popup for a RichTextBox control

This is done by calling the ShowPopup method of PopupControlContainer control.

* Add a RichTextBox control onto the form.
* Associate it with the ParentControl property of PopupControlContainer as follows.


{% highlight C# %}



this.popupControlContainer1.ParentControl = this.richTextBox1;
{% endhighlight %}



{% highlight vbnet %}



Me.popupControlContainer1.ParentControl = Me.richTextBox1

{% endhighlight %}

* To display the Popup at a desired location, handle RichTextBox.MouseUp event and call ShowPopup() method of PopupControlContainer as follows. The below code displays the popup just below the RichTextBox control, when the user clicks. 


{% highlight C# %}

this.richTextBox1.MouseUp +=new MouseEventHandler(richTextBox_MouseUp);

private void richTextBox1_MouseUp(object sender, System.Windows.Forms.MouseEventArgs e)

{

this.popupControlContainer1.ShowPopup(Point.Empty);

}
{% endhighlight %}





{% highlight vbnet %}



Private Sub richTextBox1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs)

    Me.popupControlContainer1.ShowPopup(Point.Empty)

End Sub

{% endhighlight %}

We can also display the popup at particular location.


{% highlight C# %}




this.popupControlContainer1.ShowPopup(new Point(100, 100));
{% endhighlight %}




{% highlight vbnet %}



Me.popupControlContainer1.ShowPopup(new Point(100, 100))

{% endhighlight %}

At run time, right click on RichTextBox, the popup will be shown below the RichTextBox as in the below image.

 ![](FAQ_images/Overview_img361.jpeg) 
