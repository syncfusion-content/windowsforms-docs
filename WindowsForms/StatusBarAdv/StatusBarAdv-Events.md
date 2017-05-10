---
layout: post
title: StatusBarAdv-Events | WindowsForms | Syncfusion
description: statusbaradv events
platform: WindowsForms
control: StatusBarAdv
documentation: ug
---

# StatusBarAdv Events

The list of events and a detailed explanation about each of them is given in the following sections.

Events Table

<table>
<tr>
<th>
StatusBarAdv Events</th><th>
Description</th></tr>
<tr>
<td>
BorderSidesChanged</td><td>
This event occurs when the value of the BorderSides property is changed.</td></tr>
<tr>
<td>
BorderColorChanged</td><td>
This event occurs when the BorderColor property is changed.</td></tr>
<tr>
<td>
BorderSingleChanged</td><td>
This event occurs when the value of the BorderSingle property is changed.</td></tr>
<tr>
<td>
BorderStyleChanged</td><td>
This event occurs when the value of the BorderStyle property is changed.</td></tr>
<tr>
<td>
Border3DStyleChanged</td><td>
This event occurs when the value of the Border3DStyle property is changed.</td></tr>
<tr>
<td>
GradientBackgroundChanged</td><td>
This event occurs when the value of the GradientBackground property is changed.</td></tr>
<tr>
<td>
GradientColorsChanged</td><td>
This event occurs when the value of the GradientColors property is changed.</td></tr>
<tr>
<td>
ThemeChanged</td><td>
This event occurs when the value of the ThemesEnabled property is changed.</td></tr>
<tr>
<td>
VerticalGradientChanged</td><td>
This event occurs when the value of the VerticalGradient property is changed.</td></tr>
</table>

## BorderSidesChanged Event

This event is fired when the value of the BorderSides property is changed. The BorderSides property indicates the border sides of the panel.

The event handler receives an argument of type EventArgs.

{% highlight c# %}

// Draw border sides for the StatusBarAdv control using the BorderSides property.

this.statusBarAdv1.BorderSides = System.Windows.Forms.Border3DSide.Top;



// Handle the BorderSidesChanged event.

this.statusBarAdv1.BorderSidesChanged+=new EventHandler(statusBarAdv1_BorderSidesChanged);



private void statusBarAdv1_BorderSidesChanged(object sender, EventArgs e)

{

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" BorderSidesChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Draw border sides for the StatusBarAdv control using the BorderSides property. 

Me.statusBarAdv1.BorderSides = System.Windows.Forms.Border3DSide.Top 

' Handle the BorderSidesChanged event. 

AddHandler Me.statusBarAdv1.BorderSidesChanged, AddressOf statusBarAdv1_BorderSidesChanged 

Private Sub statusBarAdv1_BorderSidesChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' The below line will be displayed in the output window at runtime. 

    Console.WriteLine(" BorderSidesChanged event is raised ")

End Sub

{% endhighlight %}


## BorderColorChanged Event

This event is fired when the value of the BorderColor property is changed. The BorderColor property indicates the color of the 2D border.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



// Set the BorderStyle property to 'FixedSingle' to view the 2D border color. 

this.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

// Set the border color for the StatusBarAdv control using the BorderColor property.

this.statusBarAdv1.BorderColor = System.Drawing.Color.DeepPink;

// Handle the BorderColorChanged event.

this.statusBarAdv1.BorderColorChanged+=new EventHandler(statusBarAdv1_BorderColorChanged);



private void statusBarAdv1_BorderColorChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" BorderColorChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Set the BorderStyle property to 'FixedSingle' to view the 2D border color. 

Me.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

' Set the border color for the StatusBarAdv control using the BorderColor property. 

Me.statusBarAdv1.BorderColor = System.Drawing.Color.DeepPink 



' Handle the BorderColorChanged event. 

AddHandler Me.statusBarAdv1.BorderColorChanged, AddressOf statusBarAdv1_BorderColorChanged 

Private Sub statusBarAdv1_BorderColorChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' Below line will be displayed in the output window at run-time, when this event is fired. 

    Console.WriteLine(" BorderColorChanged event is raised ")

End Sub

{% endhighlight %}

## BorderSingleChanged Event

This event is handled, when the value of the BorderSingle property is changed. The BorderSingle property indicates the 2D border style.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



// Set the BorderStyle property to 'FixedSingle' to view the 2D border style. 

this.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

// Set the new 2D border style for the StatusBarAdv control using the BorderStyle property.

this.statusBarAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted;



// Handle the BorderSingleChanged event.

this.statusBarAdv1.BorderSingleChanged+=new EventHandler(statusBarAdv1_BorderSingleChanged);



private void statusBarAdv1_BorderSingleChanged(object sender, EventArgs e)

{

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" BorderSingleChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Set the BorderStyle property to 'FixedSingle' to view the 2D border style. 

Me.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

' Set the new 2D border style for the StatusBarAdv control using the BorderStyle property. 

Me.statusBarAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted 



' Handle the BorderSingleChanged event. 

AddHandler Me.statusBarAdv1.BorderSingleChanged, AddressOf statusBarAdv1_BorderSingleChanged 



Private Sub statusBarAdv1_BorderSingleChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' The below line will be displayed in the output window at runtime. 

    Console.WriteLine(" BorderSingleChanged event is raised ")

End Sub

{% endhighlight %}

## BorderStyleChanged Event

This event is fired when the value of the BorderStyle property is changed. The BorderStyle property indicates whether the panel should have a border.

The event handler receives an argument of type EventArgs.

{% highlight c# %}


// 2D or 3D border can be set for the StatusBarAdv control using the BorderStyle property. The StatusBarAdv control can also be displayed border less using this property.

this.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;



// Handle the BorderStyleChanged event.

this.statusBarAdv1.BorderStyleChanged+=new EventHandler(statusBarAdv1_BorderStyleChanged);



private void statusBarAdv1_BorderStyleChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at runtime, when this event is fired.

Console.WriteLine(" BorderStyleChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' 2D or 3D border can be set for the StatusBarAdv control using the BorderStyle property. The StatusBarAdv control can also be displayed border less using this property. 

Me.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 



' Handle the BorderStyleChanged event. 

AddHandler Me.statusBarAdv1.BorderStyleChanged, AddressOf statusBarAdv1_BorderStyleChanged 



Private Sub statusBarAdv1_BorderStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' Below line will be displayed in the output window at runtime, when this event is fired. 

    Console.WriteLine(" BorderStyleChanged event is raised ")

End Sub

{% endhighlight %}

## Border3DStyleChanged Event

This event is handled when the value of the Border3DStyle property is changed. The Border3DStyle property indicates the style of the 3D border.

The event handler receives an argument of type EventArgs.

{% highlight c# %}

// Set the 3D border style for the StatusBarAdv control using the Border3DStyle property.

this.statusBarAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump;

// Set the BorderStyle property to 'Fixed3D' to view the 3D border style.

this.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;



// Handle the Border3DStyleChanged event.

this.statusBarAdv1.Border3DStyleChanged+=new EventHandler(statusBarAdv1_Border3DStyleChanged);



private void statusBarAdv1_Border3DStyleChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at runtime, when this event is fired.

Console.WriteLine(" Border3DStyleChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

' Set the 3D border style for the StatusBarAdv control using the Border3DStyle property. 

Me.statusBarAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump 

' Set the BorderStyle property to 'Fixed3D' to view the 3D border style. 

Me.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D 



' Handle the Border3DStyleChanged event. 

AddHandler Me.statusBarAdv1.Border3DStyleChanged, AddressOf statusBarAdv1_Border3DStyleChanged 



Private Sub statusBarAdv1_Border3DStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' Below line will be displayed in the output window at runtime, when this event is fired. 

    Console.WriteLine(" Border3DStyleChanged event is raised ")

End Sub

{% endhighlight %}

## GradientBackgroundChanged Event

This event is fired when the value of the GradientBackground property is changed. The GradientBackground property indicates whether the background will be drawn with the gradient.

The event handler receives an argument of type EventArgs.

{% highlight c# %}

private void statusBarAdv1_GradientBackgroundChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" GradientBackgroundChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub statusBarAdv1_GradientBackgroundChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" GradientBackgroundChanged event is raised ")

End Sub

{% endhighlight %}

## GradientColorsChanged Event

This event is fired when the value of the GradientColors property is changed. The GradientColors property specifies the color array that defines the gradient.

The event handler receives an argument of type EventArgs.

{% highlight c# %}

private void statusBarAdv1_GradientColorsChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" GradientColorsChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub statusBarAdv1_GradientColorsChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" GradientColorsChanged event is raised ")

End Sub

{% endhighlight %}


## ThemeChanged Event

This event is fired when the value of the ThemesEnabled property is changed. The ThemesEnabled property indicates if the StatusBar will draw a themed background ( Indicated Settings: BorderStyle = None ).

The event handler receives an argument of type EventArgs.

{% highlight c# %}

private void statusBarAdv1_ThemeChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" ThemeChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub statusBarAdv1_ThemeChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" ThemeChanged event is raised ")

End Sub

{% endhighlight %}


## VerticalGradientChanged Event

This event is fired when the value of the VerticalGradient property is changed. The VerticalGradient property indicates whether the gradient is vertical.

The event handler receives an argument of type EventArgs.

{% highlight c# %}

private void statusBarAdv1_VerticalGradientChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" VerticalGradientChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub statusBarAdv1_VerticalGradientChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" VerticalGradientChanged event is raised ")

End Sub

{% endhighlight %} 