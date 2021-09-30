---
layout: post
title: SplashScreen Settings in Windows Forms Splash Screen | Syncfusion
description: Learn about SplashScreen Settings support in Syncfusion Windows Forms Splash Screen (Splash) control and more details.
platform: WindowsForms
control: SplashControl
documentation: ug
---

# SplashScreen Settings in Windows Forms Splash Screen (Splash)

The following are the splash settings available for the [Windows Forms Splash Screen](https://www.syncfusion.com/winforms-ui-controls/splash-screen) (Splash) Control.

## Automatic launching

The properties given below describe the AutoMode features of the Windows Forms Splash Screen (Splash) Control.

Property Table

<table>
<tr>
<th>
SplashControl Property</th><th>
Description</th></tr>
<tr>
<td>
AutoMode</td><td>
Specifies if the SplashControl should automatically launch the splash screen.</td></tr>
<tr>
<td>
AutoModeDisableOwner</td><td>
Specifies if the SplashControl displays modally when in AutoMode.</td></tr>
<tr>
<td>
IsShowing</td><td>
Indicates if the splash screen is currently being displayed.</td></tr>
</table>

A splash image is displayed when an application is run, and only when AutoMode property is set to 'True'. By default this value will be set to 'True'. When the AutoMode is set to 'False', the splash image will not be displayed when the application starts.

If the AutoModeDisableOwner property is set to 'True', the splash screen displays modally. The splash screen stops the user from interacting with the rest of the application until it gets hidden. Once the splash screen disappears, the user will be able to interact with the form.

{% tabs %}
{% highlight c# %}

this.SplashControl1.AutoMode = true;
this.splashControl1.AutoModeDisableOwner = true;

{% endhighlight %}

{% highlight vb %}

Me.SplashControl1.AutoMode = True
Me.splashControl1.AutoModeDisableOwner = True

{% endhighlight %}
{% endtabs %}

The methods given below can also be used to show / hide the splash screen at run time. 

Methods Table

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
ShowSplash</td><td>
The splash screen can also be displayed, at run time, when this method is called. It includes the following parameter.DisableOwner - Indicates whether the owner form, i.e., the Windows form is enabled or disabled when the splash screen is displaying.</td></tr>
<tr>
<td>
HideSplash</td><td>
This method will decide whether to show or hide the splash screen that has been displayed using the above method.</td></tr>
<tr>
<td>
ShowDialogSplash</td><td>
This method will display the splash screen as a modal dialog.It includes the following parameters.OwnerForm - Represents the owner form.Location - Specifies the location at which the splash screen will be displayed.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

// Displays the splash screen.

this.splashControl1.ShowSplash(true);

// Hides the splash screen.
this.splashControl1.HideSplash();

// Displays the splash screen as a modal dialog.
private void button1_Click(object sender, EventArgs e)
{
    this.splashControl1.ShowDialogSplash(new Point(700,700),new Form1());
}

{% endhighlight %}

{% highlight vb %}

' Displays the splash screen.
Me.splashControl1.ShowSplash(True);

' Hides the splash screen.
Me.splashControl1.HideSplash();

' Displays the splash screen as a modal dialog.
Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)
Me.splashControl1.ShowDialogSplash(New Point(700, 700), New Form1())
End Sub

{% endhighlight %}
{% endtabs %}

The below example uses a button click event to call this method. This method is overloaded. The overloaded method passes the owner form as a parameter to this method.

{% tabs %}
{% highlight c# %}

private void button1_Click(object sender, EventArgs e)
{
    this.splashControl1.ShowDialogSplash(new Form1());
}

{% endhighlight %}

{% highlight vb %}

Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)
Me.splashControl1.ShowDialogSplash(New Form1())
End Sub

{% endhighlight %}
{% endtabs %}

## Time interval settings

The SplashControl is, by default, a timed display splash screen. The splash screen will be displayed for a specific time period and will then be closed. By default, the value will be set as 5000. User can change this value, run the application and see the difference.

Property Table

<table>
<tr>
<th>
SplashControl Property</th><th>
Description</th></tr>
<tr>
<td>
TimerInterval</td><td>
The time interval for which the splash screen is to be displayed (in milliseconds).</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.splashControl1.TimerInterval = 3000;

{% endhighlight %}

{% highlight vb %}

Me.splashControl1.TimerInterval = 3000

{% endhighlight %}
{% endtabs %}
