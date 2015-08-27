---
layout: post
title: Display-Settings
description: display settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Display Settings

The section illustrates the display settings available for the SplashPanel control.

The SplashPanel can be displayed or hidden according to the needs of the user. It can be displayed at any specified location. The display settings of the SplashPanel control are illustrated through the following methods.

_Table_ _627_: _Methods Table_

<table>
<tr>
<td>
Methods</td><td>
Description</td></tr>
<tr>
<td>
ShowSplash</td><td>
Displays the SplashPanel.</td></tr>
<tr>
<td>
HideSplash</td><td>
Hides the SplashPanel.</td></tr>
<tr>
<td>
ShowDialogSplash</td><td>
Displays the SplashPanel as a modal dialog.</td></tr>
<tr>
<td>
IsShowing</td><td>
Indicates whether the splash is currently displayed.</td></tr>
</table>

> Note: The time interval for which the SplashPanel is displayed can be customized using the Time Interval settings provided in the SplashPanel control._

The above methods are explained below in detail.

ShowSplash() - This method is used to display the SplashPanel at run time.

The parameters discussed for the ShowSplash() method are as follows.

_Table_ _628_: _Parameters Table_

<table>
<tr>
<td>
Parameters</td><td>
Description</td></tr>
<tr>
<td>
Location</td><td>
Indicates the point in screen coordinates. The value can be 'Point.Empty'.</td></tr>
<tr>
<td>
OwnerForm</td><td>
Indicates the form that will embed the splash form.</td></tr>
<tr>
<td>
DisableOwner</td><td>
Indicates whether the owner form is to be disabled.</td></tr>
</table>


When the SplashPanel is getting displayed, the owner form will be disabled when the DisableOwner parameter is passed as 'True'. You can assign any form as the owner form.

The below code snippet will display the SplashPanel at the specified location with the owner form being disabled. The location will be effective only when the DesktopAlignment property is set as 'Custom'.

{% highlight c# %}



Form2 f2 = new Form2();



// To display the SplashPanel call the ShowSplash() method.

this.splashPanel1.ShowSplash(new Point(100, 100), f2, true);

{% endhighlight %}

{% highlight vbnet %}



Private f2 As Form2 = New Form2



' To display the SplashPanel call the ShowSplash() method.

Me.splashPanel1.ShowSplash(New Point(100,100), f2, True)

{% endhighlight %}

* HideSplash() - The SplashPanel can be hidden by calling this method at run time.

{% highlight c# %}



// To hide the SplashPanel call the HideSplash() method.

this.splashPanel1.HideSplash();

{% endhighlight %}

{% highlight vbnet %}



' To hide the SplashPanel call the HideSplash() method.

Me.splashPanel1.HideSplash()

{% endhighlight %}

* ShowSplashDialog() -The method is used to display the SplashPanel as a modal dialog during run time. 

When this method is called, the user will not be able to interact with the application until the SplashPanel is closed. This is the only difference between the ShowSplash() method and this method.

The parameters discussed for the method are as follows.

_Table_ _629_: _Parameters Table_

<table>
<tr>
<td>
Parameters</td><td>
Description</td></tr>
<tr>
<td>
OwnerForm</td><td>
Represents the owner form.</td></tr>
<tr>
<td>
Location </td><td>
Specifies the location at which the SplashPanel will be displayed.</td></tr>
</table>


The SplashPanel will be displayed at the position / location specified in this method. By passing a new instance of the owner form to this method, we can display the SplashPanel as a modal dialog.

The below example uses a button click event to call this method. This method is overloaded.

{% highlight c# %}



private void button1_Click(object sender, EventArgs e)

{

this.splashPanel1.ShowDialogSplash(new Point(700, 700), new Form1());

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)

Me.splashPanel1.ShowDialogSplash(New Point(700, 700), New Form1())

End Sub

{% endhighlight %}

This overloaded method passes the owner form as a parameter to this method.

{% highlight c# %}



private void button1_Click(object sender, EventArgs e)

{

this.splashPanel1.ShowDialogSplash(new Form1());

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)

Me.splashPanel1.ShowDialogSplash(New Form1())

End Sub

{% endhighlight %}

* IsShowing() - This method will tell you whether the SplashPanel is currently displayed or not. This method returns 'True' if the SplashPanel is displayed and 'False' if it is not displayed.

You can call this method in a button click event and view the result in the output window as given below.

{% highlight c# %}



// To know whether splash screen is showing

private void button1_Click_1(object sender, EventArgs e)

{

this.splashPanel1.IsShowing();

Console.Write(this.splashPanel1.IsShowing());

}

{% endhighlight %}

{% highlight vbnet %}



' To know whether splash screen is showing

Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)

Me.splashPanel1.IsShowing()

Console.Write(Me.splashPanel1.IsShowing())

End Sub

{% endhighlight %}

### Location

The location for displaying the splash window is specified using the property given below.

_Table_ _630_: _Property Table_

<table>
<tr>
<td>
SplashPanel Property</td><td>
Description</td></tr>
<tr>
<td>
DiscreetLocation</td><td>
Gets / sets the location to display the splash window. </td></tr>
</table>


A Sample which demonstrates the ShowSplash() and ShowSplashDialog() methods is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

