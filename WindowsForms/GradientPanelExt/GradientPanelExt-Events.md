---
layout: post
title: GradientPanelExt Events | WindowsForms | Syncfusion
description: gradientpanelext events
platform: WindowsForms
control: EditorPackage 
documentation: ug
---
# GradientPanelExt Events

The GradientPanelExt offers the following unique events, to make it more flexible to work with.

CornerRadiusChanged Event

This event is raised every time the Corner Radius value is changed.



{% highlight c# %}

private void gradientPanelExt1_CornerRadiusChanged(object sender, EventArgs e)

{

    imagePrimitive1.Position = 100;

}



{% endhighlight  %}


{% highlight vbnet %}
Private Sub gradientPanelExt1_CornerRadiusChanged(ByVal sender As Object, ByVal e As EventArgs)

imagePrimitive1.Position = 100

End Sub

 PrimitivesChanged Event

 This event is raised when the value of the primitives property is changed.





private void gradientPanelExt1_PrimitivesChanged(object sender, EventArgs e)

{

    MessageBox.Show("Primitive Value Changed");

}





Private Sub gradientPanelExt1_PrimitivesChanged(ByVal sender As Object, ByVal e As EventArgs)

MessageBox.Show("Primitive Value Changed")

End Sub
{% endhighlight  %}