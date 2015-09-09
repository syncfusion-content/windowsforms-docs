---
layout: post
title: Events
description: events
platform: WindowsForms
control: ColorPickerUIAdv 
documentation: ug
---
# Events

## Picked Event

This event is raised every time a color is picked in the ColorPickerUIAdv control. The event handler receives an argument of type ColorPickedEventArgs. The event property provided by ColorPickedEventArgs argument is as follows.


<table>
<tr>
<th>
 Member</th><th>
Description</th></tr>
<tr>
<td>
Color</td><td>
Specifies System.Drawing.Color structure.</td></tr>
</table>





{% highlight c# %}
private void colorPickerUIAdv1_Picked(object sender, ColorPickerUIAdv.ColorPickedEventArgs args)

{

     BackColor = colorPickerUIAdv1.SelectedItem.Color;

}



{% endhighlight  %}
{% highlight vbnet %}



Private Sub colorPickerUIAdv1_Picked(ByVal sender As Object, ByVal args As ColorPickerUIadv.ColorPickedEventArgs)

BackColor = colorPickerUIAdv1.SelectedItem.Color

 End Sub
{% endhighlight  %}

## Item Selection 

When mouse is hovered over a particular color item, ItemSelection event will be raised. The event handler receives an argument of type ColorPickedEventArgs. The event property provided by ColorPickedEventArgs argument is as follows.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Color</td><td>
Specifies System.Drawing.Color structure.</td></tr>
</table>



{% highlight c# %}


private void colorPickerUIAdv1_ItemSelection(object sender, ColorPickerUIAdv.ColorPickedEventArgs args)

{

//Gets the name of the color item that is selected.     

Console.WriteLine("Color Name is " + e.Color.Name.ToString());  

}



{% endhighlight  %}


{% highlight vbnet %}
Private Sub colorPickerUIAdv1_ItemSelection(ByVal sender As Object, ByVal args As ColorPickerUIadv.ColorPickedEventArgs)

  'Gets the name of the color item that is selected.  

  Console.WriteLine("Color Name is " + e.Color.Name.ToString())

End Sub
{% endhighlight %}