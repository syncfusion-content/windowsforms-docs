---
layout: post
title: XPTaskBar Events | Windows Forms | Syncfusion
description: Concepts and Features
platform: windowsforms
control: XPTaskBar
documentation: ug
---
# XPTaskBar Events

The list of events and a detailed explanation about each of them is given in the following sections.

_Table 588: Events Table_

<table>
<tr>
<th>
XPTaskBar Events</th><th>
Description</th></tr>
<tr>
<td>
AfterAnimation</td><td>
This event gets called after the XPTaskBar Box box expands or collapses.</td></tr>
<tr>
<td>
BeforeAnimation</td><td>
This event gets called before the XPTaskBar Box expands or collapses.</td></tr>
<tr>
<td>
CollapsedStateChanged</td><td>
This event occurs after the XPTaskBar Box has been collapsed or expanded.</td></tr>
<tr>
<td>
ItemClick</td><td>
This event occurs when a user clicks on an Item.</td></tr>
<tr>
<td>
MinimumSizeChanged</td><td>
This event occurs when the MinimumSize property is changed.</td></tr>
<tr>
<td>
ProvideHeaderBackgroundBrush</td><td>
This event occurs when the header portion of the XPTaskBar Box gets drawn.</td></tr>
<tr>
<td>
ProvideItemsBackgroundBrush</td><td>
This event occurs when the Items portion of the XPTaskBar Box gets drawn.</td></tr>
</table>


## AfterAnimation Event

This event gets called after the XPTaskBar Box box expands or collapses.

The event handler receives an argument of the type EventArgs.

{% highlight C# %} 

private void taskMenuBox1_AfterAnimation(object sender, System.EventArgs e)

{

XPTaskBarBox box = sender as XPTaskBarBox;

ListViewItem listViewItem = new ListViewItem(new String[]{"After Animation", "XPTaskBarBox: " + box.Text});

this.listView1.Items.Add(listViewItem);

}

 {% endhighlight %}



{% highlight vbnet %} 

Private Sub taskMenuBox1_AfterAnimation(ByVal sender As Object, ByVal e As System.EventArgs)

Dim box As XPTaskBarBox = TryCast(sender, XPTaskBarBox)

Dim listViewItem As New ListViewItem(New String() {"After Animation", "XPTaskBarBox: " + box.Text})

Me.listView1.Items.Add(listViewItem)

End Sub

{% endhighlight %}


## BeforeAnimation Event

This event gets called before the XPTaskBar Box expands or collapses.

The event handler receives an argument of the type EventArgs.

{% highlight C# %}  

private void taskMenuBox1_BeforeAnimation(object sender, System.EventArgs e)

{

XPTaskBarBox box = sender as XPTaskBarBox;

ListViewItem listViewItem = new ListViewItem(new String[]{"Before Animation", "XPTaskBarBox: " + box.Text});

this.listView1.Items.Add(listViewItem);

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub taskMenuBox1_BeforeAnimation(ByVal sender As Object, ByVal e As System.EventArgs)

Dim box As XPTaskBarBox = TryCast(sender, XPTaskBarBox)

Dim listViewItem As New ListViewItem(New String() {"Before Animation", "XPTaskBarBox: " + box.Text})

Me.listView1.Items.Add(listViewItem)

End Sub

{% endhighlight %}


## CollapsedStateChanged Event

This event occurs after the XPTaskBar Box has been collapsed or expanded.

The event handler receives an argument of the type EventArgs.

{% highlight C# %} 

private void taskMenuBox1_CollapsedStateChanged(object sender, System.EventArgs e)

{

XPTaskBarBox box = sender as XPTaskBarBox;

ListViewItem listViewItem = new ListViewItem(new String[]{"CollapsedStateChanged", "XPTaskBarBox: " + box.Text});

this.listView1.Items.Add(listViewItem);

}

 {% endhighlight %}



{% highlight vbnet %} 

Private Sub taskMenuBox1_CollapsedStateChanged(ByVal sender As Object, ByVal e As System.EventArgs)

Dim box As XPTaskBarBox = TryCast(sender, XPTaskBarBox)

Dim listViewItem As New ListViewItem(New String() {"CollapsedStateChanged", "XPTaskBarBox: " + box.Text})

Me.listView1.Items.Add(listViewItem)

End Sub

{% endhighlight %}

## ItemClick Event

The XPTaskBar Box uses this event to make an XPTaskBar Item do some task when the user clicks on it. For this event, the user 
should set unique names for the XPTaskBar Items through the Tag property in the Items Collection Editor.

The event handler receives an argument of the type XPTaskBarItemClickArgs. The event property associated with the 
XPTaskBarItemClickArgs is as follows.

_Table 594: Member Table_

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
XPTaskBarItem</td><td>
Returns the item that was clicked.</td></tr>
</table>


{% highlight C# %}  

private void xpTaskBarBox_ItemClick(object sender, Syncfusion.Windows.Forms.Tools.XPTaskBarItemClickArgs e)

{

switch (e.XPTaskBarItem.Tag as string)

{

case "Desk_top":

// Add code to Do something.

break;

case "Computer":

// Add code to Do something.

break;

}

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub xpTaskBarBox_ItemClick(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.XPTaskBarItemClickArgs)

Select Case CType IIf(TypeOf e.XPTaskBarItem.Tag Is String, e.XPTaskBarItem.Tag, Nothing), String

Case "Desk_top"

' Add code to Do something.

Case "Computer"

' Add code to Do something.

End Select

End Sub

{% endhighlight %}


## MinimumSizeChanged Event

This event occurs when the MinimumSize property is changed. The MinimumSize property specifies the minimum size with which  
the XPTaskBar is to be created.

The event handler receives an argument of type EventArgs. The event properties associated with the EventArgs are as follows.

{% highlight C# %}  

// Specify the minimum size with which the XPTaskBar control is to be created.

this.xpTaskBar1.MinimumSize = new System.Drawing.Size(5, 5);



// Handle the MinimumSizeChanged event.

this.xpTaskBar1.MinimumSizeChanged+=new EventHandler(xpTaskBar1_MinimumSizeChanged);



private void xpTaskBar1_MinimumSizeChanged(object sender, EventArgs e)

{

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" MinimumSizeChanged Event is raised ");

}

{% endhighlight %}



{% highlight vbnet %} 

' Specify the minimum size with which the XPTaskBar control is to be created. 

Me.xpTaskBar1.MinimumSize = New System.Drawing.Size(5, 5) 



' Handle the MinimumSizeChanged event. 

AddHandler Me.xpTaskBar1.MinimumSizeChanged, AddressOf xpTaskBar1_MinimumSizeChanged 



Private Sub xpTaskBar1_MinimumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' The below line will be displayed in the output window at runtime. 

    Console.WriteLine(" MinimumSizeChanged Event is raised ")

End Sub

{% endhighlight %}


## ProvideHeaderBackgroundBrush Event

This event occurs when the header portion of the XPTaskBar Box gets drawn. Users may custom draw the header portion of the 
XPTaskBar Box with different colors.

The event handler receives an argument of type ProvideBrushEventArgs. The event properties associated with the 
ProvideBrushEventArgs are as follows.

_Table 595: Members Table_

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Bounds</td><td>
Returns the bounds for which a brush is requested.</td></tr>
<tr>
<td>
Brush</td><td>
Gets / sets the brush that will be used to draw the specified bounds or path.</td></tr>
<tr>
<td>
Path</td><td>
Returns the Graphics Path for which a brush is requested.</td></tr>
</table>


The following example handles the ProvideBrushEventHandler event of a XPTaskBar Box and performs custom background drawing.

{% highlight C# %}  

private void taskBarBox_ProvideHeaderBackgroundBrush(object sender, Syncfusion.Windows.Forms.Tools.ProvideBrushEventArgs args)

{

// Custom draw the background only when XP Themes is not available.

// Using Syncfusion.Windows.Forms namespace.

if(!XPThemes.IsThemedOS && !XPThemes.IsThemeActive && !this.xpTaskBar1.ThemesEnabled)

{

if(args.Bounds.Width != 0 && args.Bounds.Height != 0)

{

// Blend settings

float[] relativeIntensities = {0.0f, 0.0f, 1.0f};

float[] relativePositions   = {0.0F, 0.5f, 1.0F};

Blend blend = new Blend();

blend.Factors = relativeIntensities;

blend.Positions = relativePositions;

XPTaskBarItem box = sender as XPTaskBarItem;

// Header back brush.

LinearGradientBrush lgBrush = new LinearGradientBrush(args.Bounds, Color.White, box.HeaderBackColor, 0, true);

lgBrush.Blend = blend;

args.Brush = lgBrush;

}

}

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub taskMenuBox_ProvideHeaderBackgroundBrush(sender As Object, args As Syncfusion.Windows.Forms.Tools.ProvideBrushEventArgs)

' Custom draw the background only when XP Themes is not available.

// Using Syncfusion.Windows.Forms namespace.

If Not XPThemes.IsThemedOS And Not XPThemes.IsThemeActive And Not Me.xpTaskBar1.ThemesEnabled Then

If args.Bounds.Width &lt;&gt; 0 And args.Bounds.Height &lt;&gt; 0 Then

' Blend settings.

Dim relativeIntensities As Single() = {0.0F, 0.0F, 1.0F}

Dim relativePositions As Single() = {0.0F, 0.5F, 1.0F}

Dim blend As New Blend()

blend.Factors = relativeIntensities

blend.Positions = relativePositions

Dim box As  = CType(sender, XPTaskBarItem)

' Header back brush.

Dim lgBrush As New LinearGradientBrush(args.Bounds, Color.White, box.HeaderBackColor, 0, True)

lgBrush.Blend = blend

args.Brush = lgBrush

End If

End If

End Sub 

{% endhighlight %}


## ProvideItemsBackgroundBrush Event

This event occurs when the Items portion of the XPTaskBar Box gets drawn. Users may custom draw the Items portion of the XPTaskBar Box with different colors.

The event handler receives an argument of type ProvideBrushEventArgs. 

The following example handles the ProvideBrushEventHandler event of a XPTaskBar Box and performs custom background drawing.

{% highlight C# %}  

private void OnTaskMenuProvideItemsBackgroundBrush(object sender, Syncfusion.Windows.Forms.Tools.ProvideBrushEventArgs args)

{

System.Drawing.Drawing2D.Blend blend = new System.Drawing.Drawing2D.Blend();

blend.Factors = new float[] { 0.0f, 0.25F, 0.5f, 1.0F };

blend.Positions = new float[] { 0.0F, 0.25F, 0.5F, 1.0F, 1.5F };

// Estimate the GroupBarItem bounds

Rectangle rcgroupbaritem = args.Bounds;

// Create and initialize the LinearGradientBrush

System.Drawing.Drawing2D.LinearGradientBrush lgbrush = new System.Drawing.Drawing2D.LinearGradientBrush(rcgroupbaritem, Color.FromArgb(227, 238, 255), Color.FromArgb(227, 238, 255), 75, true);

lgbrush.Blend = blend;

args.Brush = lgbrush;

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub OnTaskMenuProvideItemsBackgroundBrush(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.ProvideBrushEventArgs)

Dim blend As New System.Drawing.Drawing2D.Blend()

blend.Factors = New Single() {0.0F, 0.25F, 0.5F, 1.0F}

blend.Positions = New Single() {0.0F, 0.25F, 0.5F, 1.0F, 1.5F}

' Estimate the GroupBarItem bounds 

Dim rcgroupbaritem As Rectangle = args.Bounds

' Create and initialize the LinearGradientBrush 

Dim lgbrush As New System.Drawing.Drawing2D.LinearGradientBrush(rcgroupbaritem, Color.FromArgb(227, 238, 255), Color.FromArgb(227, 238, 255), 75, True)

lgbrush.Blend = blend

args.Brush = lgbrush

End Sub

{% endhighlight %}