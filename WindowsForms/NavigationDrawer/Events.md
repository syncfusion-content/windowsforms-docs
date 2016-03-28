---
layout: post
title: Events| WindowsForms | Syncfusion
description:  events
platform: WindowsForms
control: NavigationDrawer 
documentation: ug
---

# Events

The below four events are implemented in Transition.

* Opening
* Closing
* Opened
* Closed

## Opening

Occurs when the Transition expands begins. 

{% tabs %}

{% highlight c# %}

//Raises when Transition expands begins.

public event OpeningEventHandler Opening;

//Hooking the Opening event.

navigationDrawer1.Opening += new OpeningEventHandler(navigationDrawer1_Opening);

public void navigationDrawer1_Opening(object sender, OpeningEventArgs e)

{
	
 MessageBox.Show(“Transition begins”);
	  
}

{% endhighlight %}

{% highlight vb %}

'Raises when Transition expands begins.

Public event OpeningEventHandler Opening

'Hooking the Opening event.

navigationDrawer1.Opening += New OpeningEventHandler(navigationDrawer1_Opening)

Public Sub navigationDrawer1_Opening(ByVal sender As Object, ByVal e As OpeningEventArgs)

MessageBox.Show(“Transition begins”)

End Sub

{% endhighlight %}

{% endtabs %}

## Closing

Occurs when the Transition Collapses begins. 

{% tabs %}

{% highlight c# %}

//Raises when Transition collapses begins.

public event ClosingEventHandler Closing;

//Hooking the Closing event.

navigationDrawer1.Closing += new ClosingEventHandler(navigationDrawer1_Closing);

void navigationDrawer1_Closing(object sender, CancelEventArgs e)

{

MessageBox.Show(“Collapses begins”);

}
{% endhighlight %}

{% highlight vb %}

'Raises when Transition collapses begins.

Public event ClosingEventHandler Closing

'Raises when Transition collapses begins.

Public event ClosingEventHandler Closing

'Hooking the Closing event.

navigationDrawer1.Closing += New ClosingEventHandler(navigationDrawer1_Closing)

Private Sub navigationDrawer1_Closing(ByVal sender As Object, ByVal e As CancelEventArgs)

MessageBox.Show(“Collapses begins”)

End Sub

{% endhighlight %}

{% endtabs %}


## Opened

Occurs when the Transition expands ends.

{% tabs %}

{% highlight c# %}

//Raises when Transition expands ends.

public event OpenedEventHandler Opened;

//Hooking the Opened event.

navigationDrawer1.Opened += new OpenedEventHandler(navigationDrawer1_Opened);

void navigationDrawer1_Opened(object sender, EventArgs e)

{

MessageBox.Show(“Transition Ends”);

}

{% endhighlight %}

{% highlight vb %}

'Raises when Transition expands ends.

Public event OpenedEventHandler Opened

'Hooking the Opened event.

navigationDrawer1.Opened += New OpenedEventHandler(navigationDrawer1_Opened)

Private Sub navigationDrawer1_Opened(ByVal sender As Object, ByVal e As EventArgs)

MessageBox.Show(“Transition Ends”)

End Sub

{% endhighlight %}

{% endtabs %}

## Closed

Occurs when the Transition Collapses ends.

{% tabs %}

{% highlight c# %}

//Raises when Transition collapses ends.

public event ClosedEventHandler Closed;

//Hooking the Closed event.

navigationDrawer1.Closed += new ClosedEventHandler(navigationDrawer1_Closed);

void navigationDrawer1_Closed(object sender, EventArgs e)

{

MessageBox.Show(“Collapses ends”);

}

{% endhighlight %}

{% highlight vb %}

'Raises when Transition collapses ends.

Public event ClosedEventHandler Closed

'Hooking the Closed event.

navigationDrawer1.Closed += New ClosedEventHandler(navigationDrawer1_Closed)

Private Sub navigationDrawer1_Closed(ByVal sender As Object, ByVal e As EventArgs)

MessageBox.Show(“Collapses ends”)

End Sub

{% endhighlight %}

{% endtabs %}




