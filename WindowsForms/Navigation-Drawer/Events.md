---
layout: post
title: Events in Windows Forms Navigation Drawer control | Syncfusion
description: Learn about Events support in Syncfusion Windows Forms Navigation Drawer control, its elements and more details.
platform: WindowsForms
control: NavigationDrawer 
documentation: ug
---

# Events in Windows Forms Navigation Drawer

The below four events are implemented in Transition.

* [Opening](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationDrawer.html#Syncfusion_Windows_Forms_Tools_NavigationDrawer_Opening)
* [Closing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationDrawer.html#Syncfusion_Windows_Forms_Tools_NavigationDrawer_Closing)
* [Opened](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationDrawer.html#Syncfusion_Windows_Forms_Tools_NavigationDrawer_Opened)
* [Closed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationDrawer.html#Syncfusion_Windows_Forms_Tools_NavigationDrawer_Closed)

## Opening

This [Opening](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationDrawer.html#Syncfusion_Windows_Forms_Tools_NavigationDrawer_Opening) event occurs when expand Transition begins.

{% tabs %}

{% highlight C# %}

//Raises when expand Transition begins.

public event OpeningEventHandler Opening;

//Hooking the Opening event.

navigationDrawer1.Opening += new OpeningEventHandler(navigationDrawer1_Opening);

public void navigationDrawer1_Opening(object sender, OpeningEventArgs e)

{
	
 MessageBox.Show(“Transition begins”);
	  
}

{% endhighlight %}

{% highlight VB %}

'Raises when expand Transition begins.

Public event OpeningEventHandler Opening

'Hooking the Opening event.

navigationDrawer1.Opening += New OpeningEventHandler(navigationDrawer1_Opening)

Public Sub navigationDrawer1_Opening(ByVal sender As Object, ByVal e As OpeningEventArgs)

MessageBox.Show(“Transition begins”)

End Sub

{% endhighlight %}

{% endtabs %}

## Closing

The [Closing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationDrawer.html#Syncfusion_Windows_Forms_Tools_NavigationDrawer_Closing) Occurs when collapse Transition begins.

{% tabs %}

{% highlight C# %}

//Raises when collapse Transition begins.

public event ClosingEventHandler Closing;

//Hooking the Closing event.

navigationDrawer1.Closing += new ClosingEventHandler(navigationDrawer1_Closing);

void navigationDrawer1_Closing(object sender, CancelEventArgs e)

{

MessageBox.Show(“Collapses begins”);

}
{% endhighlight %}

{% highlight VB %}

'Raises when collapse Transition begins.

Public event ClosingEventHandler Closing

'Hooking the Closing event.

navigationDrawer1.Closing += New ClosingEventHandler(navigationDrawer1_Closing)

Private Sub navigationDrawer1_Closing(ByVal sender As Object, ByVal e As CancelEventArgs)

MessageBox.Show(“Collapses begins”)

End Sub

{% endhighlight %}

{% endtabs %}


## Opened

This [Opened](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationDrawer.html#Syncfusion_Windows_Forms_Tools_NavigationDrawer_Opened) event occurs when expand Transition ends.

{% tabs %}

{% highlight C# %}

//Raises when expand Transition ends.

public event OpenedEventHandler Opened;

//Hooking the Opened event.

navigationDrawer1.Opened += new OpenedEventHandler(navigationDrawer1_Opened);

void navigationDrawer1_Opened(object sender, EventArgs e)

{

MessageBox.Show(“Transition Ends”);

}

{% endhighlight %}

{% highlight VB %}

'Raises when expand Transition ends.

Public event OpenedEventHandler Opened

'Hooking the Opened event.

navigationDrawer1.Opened += New OpenedEventHandler(navigationDrawer1_Opened)

Private Sub navigationDrawer1_Opened(ByVal sender As Object, ByVal e As EventArgs)

MessageBox.Show(“Transition Ends”)

End Sub

{% endhighlight %}

{% endtabs %}

## Closed

The [Closed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationDrawer.html#Syncfusion_Windows_Forms_Tools_NavigationDrawer_Closed) event occurs when collapse Transition ends.

{% tabs %}

{% highlight C# %}

//Raises when collapse Transition ends.

public event ClosedEventHandler Closed;

//Hooking the Closed event.

navigationDrawer1.Closed += new ClosedEventHandler(navigationDrawer1_Closed);

void navigationDrawer1_Closed(object sender, EventArgs e)

{

MessageBox.Show(“Collapses ends”);

}

{% endhighlight %}

{% highlight VB %}

'Raises when collapse Transition ends.

Public event ClosedEventHandler Closed

'Hooking the Closed event.

navigationDrawer1.Closed += New ClosedEventHandler(navigationDrawer1_Closed)

Private Sub navigationDrawer1_Closed(ByVal sender As Object, ByVal e As EventArgs)

MessageBox.Show(“Collapses ends”)

End Sub

{% endhighlight %}

{% endtabs %}




