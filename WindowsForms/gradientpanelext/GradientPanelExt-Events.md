---
layout: post
title: Gradientpanelext Events in WinForms GradientPanelExt | Syncfusion
description: Learn about Gradientpanelext Events support in Syncfusion Windows Forms GradientPanelExt control and more details.
platform: WindowsForms
control: EditorPackage 
documentation: ug
---
# Gradient panel next Events in Windows Forms Gradient Panel next

The GradientPanelExt offers the following unique events, to make it more flexible to work with.

CornerRadiusChanged Event

This event is raised every time the Corner Radius value is changed.

{% tabs %}
{% highlight c# %}

private void gradientPanelExt1_CornerRadiusChanged(object sender, EventArgs e)
{
    imagePrimitive1.Position = 100;
}

{% endhighlight  %}

{% highlight vb %}

Private Sub gradientPanelExt1_CornerRadiusChanged(ByVal sender As Object, ByVal e As EventArgs)
imagePrimitive1.Position = 100
End Sub

{% endhighlight %}
{% endtabs %}

## PrimitivesChanged Event

This event is raised when the value of the primitives property is changed.

{% tabs %}
{% highlight c# %}

private void gradientPanelExt1_PrimitivesChanged(object sender, EventArgs e)
{
    MessageBox.Show("Primitive Value Changed");
}

{% endhighlight %}
{% highlight vb %}

Private Sub gradientPanelExt1_PrimitivesChanged(ByVal sender As Object, ByVal e As EventArgs)
MessageBox.Show("Primitive Value Changed")
End Sub

{% endhighlight  %}
{% endtabs %}
