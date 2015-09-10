---
layout: post
title: CommandBar-States | WindowsForms | Syncfusion
description: commandbar states
platform: WindowsForms
control: CommandBars
documentation: ug
---

# CommandBar States

The CommandBar control of the CommandBarController can be floated or docked to the form as per the requirements of the user.

These two states of the CommandBar are explained in detail in the following topics.

 {% seealso %}

 [Serialization](windowsforms/commandbar/serialization)
 
 {% endseealso %}

## Floating CommandBar

By default, CommandBars can be floated on the form by dragging the gripper on the CommandBar. The properties that enable floating of CommandBars and customization of their settings are discussed below.


<table>
<tr>
<th>
CommandBar Property</th><th>
Description</th></tr>
<tr>
<td>
DisableFloating</td><td>
Indicates whether the CommandBar is allowed to float.</td></tr>
<tr>
<td>
FloatModeWrapping</td><td>
Indicates whether the CommandBar should wrap when floating.</td></tr>
<tr>
<td>
FloatBounds</td><td>
Gets / sets the bounds of a floating CommandBar.</td></tr>
<tr>
<td>
Floating</td><td>
Returns the current dock / float state of the CommandBar.</td></tr>
</table>


The float state of the CommandBar can be disabled by setting the DisableFloating property to 'True'. 

Setting FloatModeWrapping property to 'True', wraps a floating CommandBar when it is resized to less than it's maximum length. The DisableFloating property must be set to 'False' for this.


{% highlight C# %}





this.commandBar1.DisableFloating = false;

this.commandBar1.FloatModeWrapping = true;

this.commandBar1.FloatBounds = new System.Drawing.Rectangle(419, 303, 183, 47);
{% endhighlight %}

{% highlight vbnet %}





Me.commandBar1.DisableFloating = False

Me.commandBar1.FloatModeWrapping = True

Me.commandBar1.FloatBounds = New System.Drawing.Rectangle(419, 303, 183, 47)
{% endhighlight %}


![](CommandBar-States_images/CommandBar-States_img1.jpeg) 



A sample which demonstrates the Floating CommandBar is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

 {% seealso %}
 
 [Docking CommandBar](#docking-commandbar)
 
 {% endseealso %}

## Docking CommandBar

CommandBar can be docked to all the edges of the form such as Top, Bottom, Right and Left. Docking can be controlled by the CommandBar and CommandBarController properties.


<table>
<tr>
<th>
CommandBar Property</th><th>
Description</th></tr>
<tr>
<td>
AllowedDockBorders</td><td>
Gets / sets the edges of the form along which the CommandBar may be docked. The options included are given below.Bottom,Left,Right,Top andNone.When set to 'None', the CommandBar cannot be docked to the form.</td></tr>
<tr>
<td>
AlwaysLeadingEdge</td><td>
Indicates whether the CommandBar is always docked to the leading edge.</td></tr>
<tr>
<td>
AlwaysTrailingEdge</td><td>
Indicates whether the CommandBar is always docked to the trailing edge.</td></tr>
<tr>
<td>
DisableDocking</td><td>
Indicates whether the CommandBar is allowed to dock.</td></tr>
<tr>
<td>
DockModeWrapping</td><td>
Wraps the CommandBar when the bounds are less than the maximum length. </td></tr>
<tr>
<td>
DockState</td><td>
Gets / sets the current dock or float state for the CommandBar.</td></tr>
<tr>
<td>
ShowDockModeText</td><td>
Indicates whether the text caption should be displayed on a docked CommandBar.</td></tr>
</table>



N> The DisableDocking property must be set to 'False' for the above settings to take effect.

The docked state of the CommandBar can be disabled by setting the DisableDocking property to 'True'.

### EnabledDockBorders

This CommandBarController property allows you to dock the CommandBar to the edges of the form. The AllowedDockBorders property doesn't take any effect when this property is set to 'None'.


<table>
<tr>
<th>
CommandBarController Property</th><th>
Description</th></tr>
<tr>
<td>
EnabledDockBorders</td><td>
Gets / sets the edges of the form along which the CommandBars are allowed to dock. The options included are given below.Bottom,Left,Right,Top andNone.</td></tr>
</table>


{% highlight C# %}






this.commandBar1.AllowedDockBorders = ((Syncfusion.Windows.Forms.Tools.CommandBarDockBorder)(((Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Top | Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Bottom) | Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Left)));

this.commandBar1.AlwaysLeadingEdge = true;

this.commandBar1.AlwaysTrailingEdge = true;

this.commandBar1.DisableDocking = true;

this.commandBar1.ShowDockModeText = false;

this.commandBar1.DockState = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Top;

this.commandBar1.DockModeWrapping = true;



this.commandBarController1.EnabledDockBorders = ((Syncfusion.Windows.Forms.Tools.CommandBarDockBorder)(((Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Bottom | Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Left) | Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Right)));
{% endhighlight %}

{% highlight vbnet %}





Me.commandBar1.AllowedDockBorders = (CType(((Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Top Or Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Bottom) Or Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Left), Syncfusion.Windows.Forms.Tools.CommandBarDockBorder))

Me.commandBar1.AlwaysLeadingEdge=True

Me.commandBar1.AlwaysTrailingEdge = True

Me.commandBar1.DisableDocking=True

Me.commandBar1.ShowDockModeText = False

Me.commandBar1.DockState = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Top

Me.commandBar1.DockModeWrapping = True



Me.commandBarController1.EnabledDockBorders = (CType(((Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Bottom Or Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Left) Or Syncfusion.Windows.Forms.Tools.CommandBarDockBorder.Right), Syncfusion.Windows.Forms.Tools.CommandBarDockBorder))
{% endhighlight %}


The following figure illustrates the above settings.

 ![](CommandBar-States_images/CommandBar-States_img3.jpeg) 



### Procedure

The following step by step procedure helps you to dock the CommandBar to the target location.

1. Drag the CommandBarController onto the form and add a CommandBar through the design time verb.

   ![](CommandBar-States_images/CommandBar-States_img4.jpeg) 



2. Drag buttons onto the form and arrange the buttons as shown as below.

   ![](CommandBar-States_images/CommandBar-States_img5.jpeg) 



3. Specify the docking state of the CommandBar in the button click event using the following code snippet.
{% highlight C# %}





private void button1_Click(object sender, System.EventArgs e)

{

Button btn = sender as Button; 

// Dock to the Top

if (btn == this.top)

this.commandBar1.DockState = CommandBarDockState.Top;

// Dock to the Bottom

if (btn == this.bottom)

this.commandBar1.DockState = CommandBarDockState.Bottom;

// Dock to the Right

if (btn == this.right)

this.commandBar1.DockState = CommandBarDockState.Right;

// Dock to the Left

if (btn == this.left)

this.commandBar1.DockState = CommandBarDockState.Left;

// Dock as Floating

if (btn == this.float_btn)

this.commandBar1.DockState = CommandBarDockState.Float;

}
{% endhighlight %}

{% highlight vbnet %}






Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles top.Click, right.Click, left.Click, bottom.Click, float_btn.Click

Dim btn As Button = sender '

' Dock to the Top

If btn Is Me.top Then

Me.commandBar1.DockState = CommandBarDockState.Top

End If

'Dock to the Bottom

If btn Is Me.bottom Then

Me.commandBar1.DockState = CommandBarDockState.Bottom

End If

'Dock to the Right

If btn Is Me.right Then

Me.commandBar1.DockState = CommandBarDockState.Right

End If

'Dock to the Left

If btn Is Me.left Then

Me.commandBar1.DockState = CommandBarDockState.Left

End If

Dock as Floating

If btn Is Me.float_btn Then

Me.commandBar1.DockState = CommandBarDockState.Float

End If

End Sub
{% endhighlight %}

### Output

The following figure shows the CommandBar docked to the right border of the Form.

 ![](CommandBar-States_images/CommandBar-States_img6.jpeg) 



A sample which demonstrates the Docked CommandBar is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

{% seealso %}

[Floating CommandBar](#floating-commandBar)

{% endseealso %}