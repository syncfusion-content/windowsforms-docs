---
layout: post
title: Layout Events in Windows Forms LayoutManagers control | Syncfusion®
description: Learn about Layout Events support in Syncfusion® Windows Forms LayoutManagers control and more details.
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# Layout Events in Windows Forms LayoutManagers

The list of events and a detailed explanation about each of them is given in the following sections.



<table>
<tr>
<th>
Layout events</th><th>
Description</th></tr>
<tr>
<td>
ContainerControlChanged</td><td>
This event is triggered when the ContainerControl property is changed.</td></tr>
<tr>
<td>
ProvideLayoutInformation</td><td>
This event is triggered to obtain the preferred size information for a Child control during layout.</td></tr>
</table>


## ContainerControlChanged event

This event is handled, when the ContainerControl property is changed.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %}


// Initialize the new ContainerControl.

this.borderLayout1.ContainerControl = this.panel1;



// Handle the ContainerControlChanged event.

this.borderLayout1.ContainerControlChanged+=new EventHandler(borderLayout1_ContainerControlChanged);



private void borderLayout1_ContainerControlChanged(object sender, EventArgs e)

{

// ContainerControlChanged event is raised when the ContainerControl for the Layout Manager is changed. The below statement can be seen in the output window at runtime.

Console.Write("Container Control is changed to Panel" );

}


{% endhighlight %}
{% highlight VB %}




' Initialize the new ContainerControl. 

Me.borderLayout1.ContainerControl = Me.panel1 



' Handle the ContainerControlChanged event. 

AddHandler Me.borderLayout1.ContainerControlChanged, AddressOf borderLayout1_ContainerControlChanged 



Private Sub borderLayout1_ContainerControlChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' ContainerControlChanged event is raised when the ContainerControl for the Layout Manager is changed. The below statement can be seen in the output window at runtime. 

    Console.Write("Container Control is changed to Panel")

End Sub
{% endhighlight %}

{% endtabs %}

## ProvideLayoutInformation event

This event is triggered to obtain the preferred size information for a Child control during layout.

The event handler receives an argument of type ProvideLayoutInformationEventArgs containing data related to this event. The ProvideLayoutInformationEventArgs members provide information specific to this event.



<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Specifies whether the child controls should be automatically aligned.</td></tr>
<tr>
<td>
Handle</td><td>
Specifies whether this event was handled and a value provided.</td></tr>
<tr>
<td>
Requested</td><td>
Returns the type of information requested.</td></tr>
<tr>
<td>
Size</td><td>
Gets/sets the size to be returned.</td></tr>
</table>


You can handle this event to auto size the Label control when you increase/decrease the form width.

{% tabs %}

{% highlight C# %}


private void flowLayout1_ProvideLayoutInformation(object sender, Syncfusion.Windows.Forms.Tools.ProvideLayoutInformationEventArgs e)

{

if (e.Control == this.label1 && e.Requested == LayoutInformationType.PreferredSize)

{

Graphics g = this.CreateGraphics();

SizeF measure = g.MeasureString(this.label1.Text, this.label1.Font, this.ClientRectangle.Width);

e.Size = new Size(this.ClientRectangle.Width-20, (int)measure.Height + 5);

e.Handled = true;

g.Dispose();

}

}



{% endhighlight  %}
{% highlight VB %}



Private Sub flowLayout1_ProvideLayoutInformation(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.ProvideLayoutInformationEventArgs)

If e.Control = Me.label1 AndAlso e.Requested = LayoutInformationType.PreferredSize Then

Dim g As Graphics = Me.CreateGraphics()

Dim measure As SizeF = g.MeasureString(Me.label1.Text, Me.label1.Font, Me.ClientRectangle.Width)

e.Size = New Size(Me.ClientRectangle.Width - 20, CInt(measure.Height) + 5)

e.Handled = True

g.Dispose()

End If

End Sub
{% endhighlight  %}

{% endtabs %}
