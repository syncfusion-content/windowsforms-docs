---
layout: post
title: Drop-Down
description: This section explains about the Drop-Down in SfComboBox.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Drop-Down

## Setting maximum drop-down items

Maximum number of items to be shown in the drop-down control can be customized by using the `MaxDropDownItems` property.

{% tabs %}
{% highlight c# %}
sfComboBox1.MaxDropDownItems = 4;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.MaxDropDownItems = 4
{% endhighlight %}
{% endtabs %}

![](DropDown_images/DropDown_img1.png)

## Disabling the drop-down resizing

By default, the drop-down control can be resized by mouse clicking and dragging the gripper portion. The drop-down resizing can be disabled by using the `AllowDropDownResize` property.

{% tabs %}
{% highlight c# %}
sfComboBox1.AllowDropDownResize = false;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AllowDropDownResize = False
{% endhighlight %}
{% endtabs %}

![](DropDown_images/DropDown_img2.png)

## Cancel the drop-down opening

The `DropDownOpening` event can be used to cancel the drop-down opening by setting the `e.Cancel` property to `true`.

{% tabs %}
{% highlight c# %}
sfComboBox1.DropDownOpening += new EventHandler<DropDownOpeningEventArgs>(SfComboBox1_DropDownOpening);
private void SfComboBox1_DropDownOpening(object sender, DropDownOpeningEventArgs e)
{
  e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfComboBox1.DropDownOpening, AddressOf SfComboBox1_DropDownOpening
Private Sub SfComboBox1_DropDownOpening(ByVal sender As Object, ByVal e As DropDownOpeningEventArgs)
  e.Cancel = True
End Sub
{% endhighlight %}
{% endtabs %}

## Cancel the drop-down closing

The `DropDownClosing` event can be used to cancel the drop-down closing by setting the `e.Cancel` property to `true`.

{% tabs %}
{% highlight c# %}
sfComboBox1.DropDownClosing += new EventHandler<DropDownClosingEventArgs>(SfComboBox1_DropDownClosing);
private void SfComboBox1_DropDownClosing(object sender, DropDownClosingEventArgs e)
{
  e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfComboBox1.DropDownClosing, AddressOf SfComboBox1_DropDownClosing
Private Sub SfComboBox1_DropDownClosing(ByVal sender As Object, ByVal e As DropDownClosingEventArgs)
  e.Cancel = True
End Sub
{% endhighlight %}
{% endtabs %}