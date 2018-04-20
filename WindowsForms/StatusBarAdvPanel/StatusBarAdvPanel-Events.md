---
layout: post
title: StatusBarAdvPanel-Events | WindowsForms | Syncfusion
description: statusbaradvpanel events
platform: WindowsForms
control: StatusBarAdvPanel
documentation: ug
---

# StatusBarAdvPanel Events

The list of events and a detailed explanation about each of them is given in the following sections.

Events Table

<table>
<tr>
<th>
StatusBarAdvPanel Events</th><th>
Description</th></tr>
<tr>
<td>
AlignChanged</td><td>
This event is fired when the value of the Alignment property is changed.</td></tr>
<tr>
<td>
AnimationDelayChanged</td><td>
This event is fired when the value of the AnimationDelay property is changed. </td></tr>
<tr>
<td>
AnimationDirectionChanged</td><td>
This event is fired when the value of the AnimationDirection property is changed.</td></tr>
<tr>
<td>
AnimationSpeedChanged</td><td>
This event is fired when the value of the AnimationStyle property is changed.</td></tr>
<tr>
<td>
AnimationStyleChanged</td><td>
This event is fired when the value of the AnimationStyle property is changed.</td></tr>
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
ConstraintsChanged</td><td>
This event is fired when changes are made in the list of constraints.</td></tr>
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
IconChanged</td><td>
This event is fired when the value of the Icon property is changed.</td></tr>
<tr>
<td>
IsMarqueeChanged</td><td>
This event is fired when the value of the IsMarquee property is changed.</td></tr>
<tr>
<td>
PreferredSizeChanged</td><td>
This event is fired when the value of the PreferredSize property is changed.</td></tr>
<tr>
<td>
ThemeChanged</td><td>
This event occurs when the value of the ThemesEnabled property is changed.</td></tr>
<tr>
<td>
TypeChanged</td><td>
This event is fired when the value of the PanelType property is changed.</td></tr>
</table>


## AlignChanged event

This event is fired when the value of the Alignment property is changed. The Alignment property indicates the alignment type of the text and icon of the panel.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Set the alignment type for the text and icon of the StatusBarAdvPanel.
this.statusBarAdvPanel1.Alignment = System.Windows.Forms.HorizontalAlignment.Right;

// Handle the AlignChanged event.
this.statusBarAdvPanel1.AlignChanged+=new EventHandler(statusBarAdvPanel1_AlignChanged);
private void statusBarAdvPanel1_AlignChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at runtime, when this event is fired.
    Console.WriteLine(" AlignChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' Set the alignment type for the text and icon of the StatusBarAdvPanel. 
Me.statusBarAdvPanel1.Alignment = System.Windows.Forms.HorizontalAlignment.Right 

' Handle the AlignChanged event. 
AddHandler Me.statusBarAdvPanel1.AlignChanged, AddressOf statusBarAdvPanel1_AlignChanged 
Private Sub statusBarAdvPanel1_AlignChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at runtime, when this event is fired. 
Console.WriteLine(" AlignChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## AnimationDelayChanged event

This event is fired when the value of the AnimationDelay property is changed. The AnimationDelay property indicates the delay for the animation of marquee style.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Specify the delay of animation for the marquee style.
this.statusBarAdvPanel1.AnimationDelay = 50;

// Set the IsMarquee property to 'True' to activate the animation.
this.statusBarAdvPanel1.IsMarquee = true;

// Handle the  AnimationDelayChanged event.
this.statusBarAdvPanel1.AnimationDelayChanged+=new EventHandler(statusBarAdvPanel1_AnimationDelayChanged);
}

// Start the animation.
private void Form1_Load_1(object sender, EventArgs e)
{
    this.statusBarAdvPanel1.StartAnimation();
}

// Stop the animation.
private void button1_Click_1(object sender, EventArgs e)
{
    this.statusBarAdvPanel1.StopAnimation();
}
private void statusBarAdvPanel1_AnimationDelayChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at run-time, when this event is fired.
    Console.WriteLine(" AnimationDelayChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' Specify the delay of animation for the marquee style. 
Me.statusBarAdvPanel1.AnimationDelay = 50 

' Set the IsMarquee property to 'True' to activate the animation. 
Me.statusBarAdvPanel1.IsMarquee = True 

' Handle the AnimationDelayChanged event. 
AddHandler Me.statusBarAdvPanel1.AnimationDelayChanged, AddressOf statusBarAdvPanel1_AnimationDelayChanged 

' Start the animation. 
Private Sub Form1_Load_1(ByVal sender As Object, ByVal e As EventArgs)
Me.statusBarAdvPanel1.StartAnimation()
End Sub

' Stop the animation. 
Private Sub button1_Click_1(ByVal sender As Object, ByVal e As EventArgs)
Me.statusBarAdvPanel1.StopAnimation()
End Sub
Private Sub statusBarAdvPanel1_AnimationDelayChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired. 
Console.WriteLine(" AnimationDelayChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## AnimationDirectionChanged event

This event is fired when the value of the AnimationDirection property is changed. The AnimationDirection property specifies the direction of animation for the marquee style.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Specify the direction of animation for the marquee style.
this.statusBarAdvPanel1.AnimationDirection = Syncfusion.Windows.Forms.Tools.MarqueeDirection.Right;

// Set the IsMarquee property to 'True' to activate the animation.
this.statusBarAdvPanel1.IsMarquee = true;

// Handle the AnimationDirectionChanged event.   
this.statusBarAdvPanel1.AnimationDirectionChanged+=new EventHandler(statusBarAdvPanel1_AnimationDirectionChanged);

// Start the animation.
private void Form1_Load_1(object sender, EventArgs e)
{
    this.statusBarAdvPanel1.StartAnimation();
}

// Stop the animation.
private void button1_Click_1(object sender, EventArgs e)
{
    this.statusBarAdvPanel1.StopAnimation();
}
private void statusBarAdvPanel1_AnimationDirectionChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at run-time, when this event is fired.
    Console.WriteLine(" AnimationDirectionChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' Specify the direction of animation for the marquee style. 
Me.statusBarAdvPanel1.AnimationDirection = Syncfusion.Windows.Forms.Tools.MarqueeDirection.Right 

' Set the IsMarquee property to 'True' to activate the animation. 
Me.statusBarAdvPanel1.IsMarquee = True 

' Handle the AnimationDirectionChanged event. 
AddHandler Me.statusBarAdvPanel1.AnimationDirectionChanged, AddressOf statusBarAdvPanel1_AnimationDirectionChanged 

' Start the animation. 
Private Sub Form1_Load_1(ByVal sender As Object, ByVal e As EventArgs)
Me.statusBarAdvPanel1.StartAnimation()
End Sub

' Stop the animation. 
Private Sub button1_Click_1(ByVal sender As Object, ByVal e As EventArgs)
Me.statusBarAdvPanel1.StopAnimation()
End Sub
Private Sub statusBarAdvPanel1_AnimationDirectionChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired. 
Console.WriteLine(" AnimationDirectionChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## AnimationSpeedChanged event

This event is fired when the value of the AnimationSpeed property is changed. The AnimationSpeed property indicates the animation speed of the marquee style.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Specify the speed of animation for the marquee style.
this.statusBarAdvPanel1.AnimationSpeed = 7;

// Set the IsMarquee property to 'True' to activate the animation.
this.statusBarAdvPanel1.IsMarquee = true;

// Handle the AnimationSpeedChanged event.
this.statusBarAdvPanel1.AnimationSpeedChanged+=new EventHandler(statusBarAdvPanel1_AnimationSpeedChanged);

// Start the animation.
private void Form1_Load_1(object sender, EventArgs e)
{
    this.statusBarAdvPanel1.StartAnimation();
}

// Stop the animation.
private void button1_Click_1(object sender, EventArgs e)
{
    this.statusBarAdvPanel1.StopAnimation();
}
private void statusBarAdvPanel1_AnimationSpeedChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at runtime, when this event is fired.
    Console.WriteLine(" AnimationSpeedChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' Specify the speed of animation for the marquee style. 
Me.statusBarAdvPanel1.AnimationSpeed = 7 

' Set the IsMarquee property to 'True' to activate the animation. 
Me.statusBarAdvPanel1.IsMarquee = True 

' Handle the AnimationSpeedChanged event. 
AddHandler Me.statusBarAdvPanel1.AnimationSpeedChanged, AddressOf statusBarAdvPanel1_AnimationSpeedChanged 

' Start the animation. 
Private Sub Form1_Load_1(ByVal sender As Object, ByVal e As EventArgs)
Me.statusBarAdvPanel1.StartAnimation()
End Sub

' Stop the animation. 
Private Sub button1_Click_1(ByVal sender As Object, ByVal e As EventArgs)
Me.statusBarAdvPanel1.StopAnimation()
End Sub 
Private Sub statusBarAdvPanel1_AnimationSpeedChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at runtime, when this event is fired. 
Console.WriteLine(" AnimationSpeedChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## AnimationStyleChanged event

This event is fired when the value of the AnimationStyle property is changed. The AnimationStyle property specifies the style of animation for the marquee style.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Specify the style of animation for the marquee style.
this.statusBarAdvPanel1.AnimationStyle = Syncfusion.Windows.Forms.Tools.MarqueeStyle.Slide;

// Set the IsMarquee property to 'True' to activate the animation.
this.statusBarAdvPanel1.IsMarquee = true;

// Handle the AnimationSpeedChanged event.
this.statusBarAdvPanel1.AnimationStyleChanged+=new EventHandler(statusBarAdvPanel1_AnimationStyleChanged);

// Start the animation.
private void Form1_Load_1(object sender, EventArgs e)
{
    this.statusBarAdvPanel1.StartAnimation();
}

// Stop the animation.
private void button1_Click_1(object sender, EventArgs e)
{
    this.statusBarAdvPanel1.StopAnimation();
}
private void statusBarAdvPanel1_AnimationStyleChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at runtime, when this event is fired.
    Console.WriteLine(" AnimationStyleChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' Specify the style of animation for the marquee style. 
Me.statusBarAdvPanel1.AnimationStyle = Syncfusion.Windows.Forms.Tools.MarqueeStyle.Slide 

' Set the IsMarquee property to 'True' to activate the animation. 
Me.statusBarAdvPanel1.IsMarquee = True 

' Handle the AnimationSpeedChanged event. 
AddHandler Me.statusBarAdvPanel1.AnimationStyleChanged, AddressOf statusBarAdvPanel1_AnimationStyleChanged 

' Start the animation. 
Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs)
Me.statusBarAdvPanel1.StartAnimation()
End Sub

' Stop the animation. 
Private Sub button1_Click_1(ByVal sender As Object, ByVal e As EventArgs)
Me.statusBarAdvPanel1.StopAnimation()
End Sub
Private Sub statusBarAdvPanel1_AnimationStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at runtime, when this event is fired. 
Console.WriteLine(" AnimationStyleChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## BorderSidesChanged event

This event is fired, when the value of the BorderSides property is changed. The BorderSides property indicates the border sides of the panel.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Draw border sides for the StatusBarAdvPanel control using the BorderSides property.
this.statusBarAdv1Panel.BorderSides = System.Windows.Forms.Border3DSide.Top;

// Handle the BorderSidesChanged event.
this.statusBarAdvPanel1.BorderSidesChanged+=new EventHandler(statusBarAdvPanel1_BorderSidesChanged);
private void statusBarAdvPanel1_BorderSidesChanged(object sender, EventArgs e)
{

// The below line will be displayed in the output window at runtime.
    Console.WriteLine(" BorderSidesChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

'Draw border sides for the StatusBarAdvPanel control using the BorderSides property. 
Me.statusBarAdv1Panel.BorderSides = System.Windows.Forms.Border3DSide.Top 

'Handle the BorderSidesChanged event. 
AddHandler Me.statusBarAdvPanel1.BorderSidesChanged, AddressOf statusBarAdvPanel1_BorderSidesChanged 
Private Sub statusBarAdvPanel1_BorderSidesChanged(ByVal sender As Object, ByVal e As EventArgs)

' The below line will be displayed in the output window at runtime. 
Console.WriteLine(" BorderSidesChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## BorderSingleChanged event

This event is fired when the value of the BorderSingle property is changed. The BorderSingle property indicates the 2D border style.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Set the new 2D border style for the StatusBarAdvPanel control using the BorderStyle property.
this.statusBarAdvPanel1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted;

// Set the BorderStyle property to 'FixedSingle' to view the 2D border style. 
this.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

// Handle the BorderSingleChanged event.
this.statusBarAdvPanel1.BorderSingleChanged+=new EventHandler(statusBarAdvPanel1_BorderSingleChanged);
private void statusBarAdvPanel1_BorderSingleChanged(object sender, EventArgs e)
{

// The below line will be displayed in the output window at runtime.
    Console.WriteLine(" BorderSingleChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' Set the new 2D border style for the StatusBarAdvPanel control using the BorderStyle property. 
Me.statusBarAdvPanel1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted 

' Set the BorderStyle property to 'FixedSingle' to view the 2D border style. 
Me.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

' Handle the BorderSingleChanged event. 
AddHandler Me.statusBarAdvPanel1.BorderSingleChanged, AddressOf statusBarAdvPanel1_BorderSingleChanged 
Private Sub statusBarAdvPanel1_BorderSingleChanged(ByVal sender As Object, ByVal e As EventArgs)

' The below line will be displayed in the output window at runtime. 
Console.WriteLine(" BorderSingleChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## BorderStyleChanged event

This event is fired when the value of the BorderStyle property is changed. The BorderStyle property indicates whether the panel should have a border.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// 2D or 3D border can be set for the StatusBarAdvPanel control using the BorderStyle property. The StatusBarAdvPanel control can also be displayed border less using this property.
this.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

// Handle the BorderStyleChanged event.
this.statusBarAdvPanel1.BorderStyleChanged+=new EventHandler(statusBarAdvPanel1_BorderStyleChanged);
private void statusBarAdvPanel1_BorderStyleChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at runtime, when this event is fired.
    Console.WriteLine(" BorderStyleChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' 2D or 3D border can be set for the StatusBarAdvPanel control using the BorderStyle property. The StatusBarAdvPanel control can also be displayed border less using this property. 
Me.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

' Handle the BorderStyleChanged event. 

AddHandler Me.statusBarAdvPanel1.BorderStyleChanged, AddressOf statusBarAdvPanel1_BorderStyleChanged 
Private Sub statusBarAdvPanel1_BorderStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at runtime, when this event is fired. 
Console.WriteLine(" BorderStyleChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## Border3DStyleChanged event

This event is fired when the value of the Border3DStyle property is changed. The Border3DStyle property indicates the style of the 3D border.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Set the BorderStyle property to 'Fixed3D' to view the 3D border style.
this.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;

// Set the 3D border style for the StatusBarAdvPanel control using the Border3DStyle property.
this.statusBarAdvPanel1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump;

// Handle the Border3DStyleChanged event.
this.statusBarAdvPanel1.Border3DStyleChanged+=new EventHandler(statusBarAdvPanel1_Border3DStyleChanged);
private void statusBarAdvPanel1_Border3DStyleChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at runtime, when this event is fired.
    Console.WriteLine(" Border3DStyleChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' Set the BorderStyle property to 'Fixed3D' to view the 3D border style. 
Me.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D 

' Set the 3D border style for the StatusBarAdvPanel control using the Border3DStyle property. 
Me.statusBarAdvPanel1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump 

' Handle the Border3DStyleChanged event. 
AddHandler Me.statusBarAdvPanel1.Border3DStyleChanged, AddressOf statusBarAdvPanel1_Border3DStyleChanged 
Private Sub statusBarAdvPanel1_Border3DStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at runtime, when this event is fired. 
Console.WriteLine(" Border3DStyleChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## BorderColorChanged event

This event is fired when the value of the BorderColor property is changed. The BorderColor property indicates the color of the 2D border.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Set the border color for the StatusBarAdvPanel control using the BorderColor property.
this.statusBarAdvPanel1.BorderColor = System.Drawing.Color.DeepPink;

// Set the BorderStyle property to 'FixedSingle' to view the 2D border color. 
this.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

// Handle the BorderColorChanged event.
this.statusBarAdvPanel1.BorderColorChanged+=new EventHandler(statusBarAdvPanel1_BorderColorChanged);
private void statusBarAdvPanel1_BorderColorChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at runtime, when this event is fired.
    Console.WriteLine(" BorderColorChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' Set the border color for the StatusBarAdvPanel control using the BorderColor property. 
Me.statusBarAdvPanel1.BorderColor = System.Drawing.Color.DeepPink 

' Set the BorderStyle property to 'FixedSingle' to view the 2D border color. 
Me.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

' Handle the BorderColorChanged event. 
AddHandler Me.statusBarAdvPanel1.BorderColorChanged, AddressOf statusBarAdvPanel1_BorderColorChanged 
Private Sub statusBarAdvPanel1_BorderColorChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at runtime, when this event is fired. 
Console.WriteLine(" BorderColorChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## ConstraintsChanged event

This event is fired when changes are made in the list of constraints.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

private void statusBarAdvPanel1_ConstraintsChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at run-time, when this event is fired.
    Console.WriteLine(" ConstraintsChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub statusBarAdvPanel1_ConstraintsChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired. 
Console.WriteLine(" ConstraintsChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## GradientBackgroundChanged event

This event is fired when the value of the GradientBackground property is changed. The GradientBackground property indicates whether the background will be drawn with the gradient.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

private void statusBarAdvPanel1_GradientBackgroundChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at run-time, when this event is fired.
    Console.WriteLine(" GradientBackgroundChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub statusBarAdvPanel1_GradientBackgroundChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired.
Console.WriteLine(" GradientBackgroundChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## GradientColorsChanged event

This event is fired when the value of the GradientColors property is changed. The GradientColors property specifies the color array that defines the gradient.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

private void statusBarAdvPanel1_GradientColorsChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at run-time, when this event is fired.
    Console.WriteLine(" GradientColorsChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub statusBarAdvPanel1_GradientColorsChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired.
Console.WriteLine(" GradientColorsChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## IconChanged event

This event is fired when the value of the Icon property is changed. The Icon property indicates the icon of the panel.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

private void statusBarAdvPanel1_IconChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at run-time, when this event is fired.
    Console.WriteLine(" IconChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub statusBarAdvPanel1_IconChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired. 
Console.WriteLine(" IconChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## IsMarqueeChanged event

This event is fired when the value of the IsMarquee property is changed. The IsMarquee property indicates whether the control uses the marquee style for the displayed text.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Set the IsMarquee property to 'True' to activate the animation.
this.statusBarAdvPanel1.IsMarquee = true;

// Handle the IsMarqueeChanged event.
this.statusBarAdvPanel1.IsMarqueeChanged+=new EventHandler(statusBarAdvPanel1_IsMarqueeChanged);

// Start the animation.
private void Form1_Load(object sender, EventArgs e)
{
    this.statusBarAdvPanel1.StartAnimation();
}

// Stop the animation.
private void button1_Click_1(object sender, EventArgs e)
{
    this.statusBarAdvPanel1.StopAnimation();
}
private void statusBarAdvPanel1_IsMarqueeChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at runtime, when this event is fired.
    Console.WriteLine(" IsMarqueeChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' Set the IsMarquee property to 'True' to activate the animation. 
Me.statusBarAdvPanel1.IsMarquee = True 

' Handle the IsMarqueeChanged event. 
AddHandler Me.statusBarAdvPanel1.IsMarqueeChanged, AddressOf statusBarAdvPanel1_IsMarqueeChanged 

' Start the animation. 
Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs)
Me.statusBarAdvPanel1.StartAnimation()
End Sub

' Stop the animation. 
Private Sub button1_Click_1(ByVal sender As Object, ByVal e As EventArgs)
Me.statusBarAdvPanel1.StopAnimation()
End Sub
Private Sub statusBarAdvPanel1_IsMarqueeChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at runtime, when this event is fired. 
Console.WriteLine(" IsMarqueeChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## ThemeChanged event

This event is fired when the value of the ThemesEnabled property is changed. The ThemesEnabled property indicates if the background color will be set to 'Transparent' ( Indicated Settings: BorderSides = Right, BorderStyle = Fixed3D, Border3DStyle = Etched).

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

private void statusBarAdvPanel1_ThemeChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at run-time, when this event is fired.
    Console.WriteLine(" ThemeChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub statusBarAdvPanel1_ThemeChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired.
Console.WriteLine(" ThemeChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## TypeChanged event

This event is fired when the value of the PanelType property is changed. The PanelType property indicates the type of the panel.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Set the type of the panel using the PanelType property of the control.
this.statusBarAdvPanel1.PanelType = Syncfusion.Windows.Forms.Tools.StatusBarAdvPanelType.ScrollLockState;

// Handle the TypeChanged event.
this.statusBarAdvPanel1.TypeChanged+=new EventHandler(statusBarAdvPanel1_TypeChanged);
private void statusBarAdvPanel1_TypeChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at runtime, when this event is fired.
    Console.WriteLine(" TypeChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' Set the type of the panel using the PanelType property of the control. 
Me.statusBarAdvPanel1.PanelType = Syncfusion.Windows.Forms.Tools.StatusBarAdvPanelType.ScrollLockState 

' Handle the TypeChanged event. 
AddHandler Me.statusBarAdvPanel1.TypeChanged, AddressOf statusBarAdvPanel1_TypeChanged 
Private Sub statusBarAdvPanel1_TypeChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at runtime, when this event is fired. 
Console.WriteLine(" TypeChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## PreferredSizeChanged event

This event is fired when the value of the PreferredSize property is changed. The PreferredSize property specifies the preferred size of the panel in the FlowLayout.

The event handler receives an argument of type EventArgs.

{% tabs %}
{% highlight c# %}

// Set the preferred size for the StatusBarAdvPanel control.
this.statusBarAdvPanel1.PreferredSize = new System.Drawing.Size(200, 100);

// Set the AutoScrollMinSize property to provide scrollbars for the StatusBarAdvPanel control.
this.statusBarAdvPanel1.AutoScrollMinSize = new System.Drawing.Size(50, 100);

// Set the AutoScroll property to 'True' to activate the scrollbars.
this.statusBarAdvPanel1.AutoScroll = true;

// Handle the PreferredSizeChanged event.
this.statusBarAdvPanel1.PreferredSizeChanged += new EventHandler(statusBarAdvPanel1_PreferredSizeChanged);
private void statusBarAdvPanel1_PreferredSizeChanged(object sender, EventArgs e)
{

// Below line will be displayed in the output window at runtime, when this event is fired.
    Console.WriteLine(" PreferredSizeChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

' Set the preferred size for the StatusBarAdvPanel control. 
Me.statusBarAdvPanel1.PreferredSize = New System.Drawing.Size(200, 100) 

' Set the AutoScrollMinSize property to provide scrollbars for the StatusBarAdvPanel control. 
Me.statusBarAdvPanel1.AutoScrollMinSize = New System.Drawing.Size(50, 100) 

' Set the AutoScroll property to 'True' to activate the scrollbars. 
Me.statusBarAdvPanel1.AutoScroll = True 

' Handle the PreferredSizeChanged event. 
AddHandler Me.statusBarAdvPanel1.PreferredSizeChanged, AddressOf statusBarAdvPanel1_PreferredSizeChanged 
Private Sub statusBarAdvPanel1_PreferredSizeChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at runtime, when this event is fired. 
Console.WriteLine(" PreferredSizeChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}
