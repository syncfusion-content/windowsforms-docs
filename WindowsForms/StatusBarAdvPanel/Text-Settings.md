---
layout: post
title: Text-Settings
description: text settings
platform: WindowsForms
control: StatusBarAdvPanel
documentation: ug
---

# Text Settings

StatusBarAdvPanel has several text settings which will be discussed in this section.

The text for the StatusBarAdvPanel can be set through the following property.

Table 670: Property Table

<table>
<tr>
<th>
StatusBarAdvPanel Property</th><th>
Description</th></tr>
<tr>
<td>
Text</td><td>
Gets / sets the text of the panel.</td></tr>
</table>


{% highlight c# %}



this.statusBarAdvPanel1.Text = "StatusBarAdvPanel";

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdvPanel1.Text = "StatusBarAdvPanel"

{% endhighlight %}

The method associated with the above property is given below.

N> The GetText() method returns text according to the key state.

## Marquee Settings

The text inside the control can be made to float in the marquee style by enabling the property given below.

Table 671: Property Table

<table>
<tr>
<th>
StatusBarAdvPanel Property</th><th>
Description</th></tr>
<tr>
<td>
IsMarquee</td><td>
Indicates whether the control uses the marquee style for the displayed text.</td></tr>
</table>


{% highlight c# %}



this.statusBarAdvPanel1.IsMarquee = true;

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdvPanel1.IsMarquee = True

{% endhighlight %}

## Animation Settings

The animation that has been applied to the text of the StatusBarAdvPanel control can be customized using the properties given below.

Table 672: Property Table

<table>
<tr>
<th>
StatusBarAdvPanel Property</th><th>
Description</th></tr>
<tr>
<td>
AnimationDelay</td><td>
Indicates the delay for the animation of marquee style.</td></tr>
<tr>
<td>
AnimationDirection</td><td>
Specifies the direction of animation for the marquee style. The options included are as follows.Left andRight.</td></tr>
<tr>
<td>
AnimationSpeed</td><td>
Indicates the animation speed of the marquee style.</td></tr>
<tr>
<td>
AnimationStyle</td><td>
Specifies the style of animation for the marquee style. The options included are as follows.Scroll,Slide andAlternate.</td></tr>
</table>

N> The IsMarquee property must be set to 'True' for the animation settings to be visible.

{% highlight c# %}



this.statusBarAdvPanel1.AnimationDelay = 2;

this.statusBarAdvPanel1.AnimationDirection = Syncfusion.Windows.Forms.Tools.MarqueeDirection.Right;

this.statusBarAdvPanel1.AnimationSpeed = 6;

this.statusBarAdvPanel1.AnimationStyle = Syncfusion.Windows.Forms.Tools.MarqueeStyle.Alternate;

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdvPanel1.AnimationDelay = 2

Me.statusBarAdvPanel1.AnimationDirection = Syncfusion.Windows.Forms.Tools.MarqueeDirection.Right

Me.statusBarAdvPanel1.AnimationSpeed = 6

Me.statusBarAdvPanel1.AnimationStyle = Syncfusion.Windows.Forms.Tools.MarqueeStyle.Alternate

{% endhighlight %}

The animation for the text can be enabled and disabled using the methods associated with the above properties. These methods are given below.

Table 673: Methods Table

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
StartAnimation</td><td>
Starts the animation for the marquee style.</td></tr>
<tr>
<td>
StopAnimation</td><td>
Stops the animation for the marquee style. This will restore the text to it's original position.</td></tr>
</table>


These methods can be called within the below events as follows.

{% highlight c# %}



// Starts the animation.

private void Form1_Load(object sender, EventArgs e)

{

this.statusBarAdvPanel1.StartAnimation();

}



// Stops the animation.

private void button1_Click(object sender, EventArgs e)

{

this.statusBarAdvPanel1.StopAnimation();

}

{% endhighlight %}

{% highlight vbnet %}



' Starts the animation.

Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs)

Me.statusBarAdvPanel1.StartAnimation()

End Sub



' Stops the animation.

Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)

Me.statusBarAdvPanel1.StopAnimation()

End Sub

{% endhighlight %}

