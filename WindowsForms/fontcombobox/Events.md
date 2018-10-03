---
layout: post
title: Events | WindowsForms | Syncfusion
description: Events
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Events

This section comprises the below events:

## SelectedIndexChanged Event

SelectedIndexChanged event - This event is raised when the ComboBox.SelectedIndex property is changed. 

The below code snippet, lets you set the selected font style, for a label, on selecting through a FontComboBox, using SelectedIndexChanged event.

{% tabs %}
{% highlight c# %}

private void fontComboBox2_SelectedIndexChanged(object sender, EventArgs e)
{
    this.label1.Font = new Font(this.fontComboBox2.SelectedItem.ToString(), 11, FontStyle.Regular);
}

{% endhighlight %}

{% highlight vb %}

Private Sub fontComboBox2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
    Me.label1.Font = New Font(Me.fontComboBox2.SelectedItem.ToString(), 11, FontStyle.Regular)
End Sub

{% endhighlight %}
{% endtabs %}

## FontSelected Event

To add FontSelected event, derive the classes as shown below.

1. Add an event in the derived class.

{% tabs %}
{% highlight c# %}

// Adding event.
public event System.EventHandler FontSelected;

{% endhighlight %}

{% highlight vb %}

' Adding event.
Public Event FontSelected As System.EventHandler

{% endhighlight %}
{% endtabs %}

2. Override the OnSelectedIndexChanged method and fire the event there.

{% tabs %}
{% highlight c# %}

protected override void OnSelectedIndexChanged(EventArgs e) 
{
// FontSelected event fires here.
if(FontSelected!=null) FontSelected(this,e);
	base.OnSelectedIndexChanged (e);
}

{% endhighlight %}

{% highlight vb %}

Protected Overrides Sub OnSelectedIndexChanged(ByVal e As EventArgs)

' FontSelected event fires here.
RaiseEvent FontSelected(Me, e)
MyBase.OnSelectedIndexChanged(e)
End Sub

{% endhighlight %}
{% endtabs %}
