---
layout: post
title: How to add a ColorUI Control to a Popup Menu | WindowsForms | Syncfusion
description: how to add a colorui control to a popup menu
platform: WindowsForms
control: ColorUI 
documentation: ug
---
# How to Add a ColorUI Control to a Pop-Up Menu

To add ColorUIControl to a PopupMenu, we need to use PopupMenu, PopupControlContainer. Follow the below steps to add a ColorUIControl to a popup menu.

1. Drag and drop a ColorUIControl, a PopupMenu control, a PopupControlContainer control, a label control and a Panel control onto the form. Place the ColorUIControl inside the PopupControlContainer and the label inside the panel control.
2. Right click PopupMenu and select 'Add Default ParentBarItem" from the verbs. 

   ![](FAQ_images/Overview_img240.jpeg) 

3. In the property grid of PopupMenu, expand ParentBarItem, then add a DropDownBarItem to the ParentBarItem using BarItem Collection Editor. Also set the PopupControlContainer as the DropDownBarItem's PopupControlContainer as shown in the image below.

   ![](FAQ_images/Overview_img241.jpeg) 

4. In the MouseUp event of the Panel control call the PopupMenu.Show method.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

private void panel1_MouseUp(object sender, MouseEventArgs e)
{
	this.popupMenu1.Show(this.panel1, new Point(e.X, e.Y));
}

{% endhighlight %}

{% highlight vb %}

Private Sub panel1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs)
Me.popupMenu1.Show(Me.panel1, New Point(e.X, e.Y))
End Sub

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

   ![](FAQ_images/Overview_img242.jpeg) 

N> You can close the popup whenever a color is selected at run time. This is done using ColorUIControl.ColorSelected Event.
