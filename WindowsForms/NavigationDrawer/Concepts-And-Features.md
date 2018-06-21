---
layout: post
title: Concepts-And-Featurea| WindowsForms | Syncfusion
description:  concepts and features
platform: WindowsForms
control: NavigationDrawer 
documentation: ug
---

# Concepts and features

## ContentView

ContentView is the main view of the NavigationDrawer on which the desired items can be placed. For example, RichTextBox can be used in this sample.

{% tabs %}

{% highlight C# %}

//Creates RichTextBox instance.

RichTextBox richTextBox = new RichTextBox();

//Specifies the Text

this.richTextBox.Text = "Content View" + "\n" + "\n" + "This is Navigation Drawer content View";

//Add RichTextBox into the NavigationDrawer Container Control.

this.navigationDrawer1.ContentViewContainer.Controls.Add(richTextbox);

{% endhighlight %}

{% highlight VB %}

'Creates RichTextBox instance.

Dim richTextbox As New RichTextBox()

'Specifies the Text

Me.richTextBox.Text = ("Content View" + ("" & vbLf + ("" & vbLf + "This is Navigation Drawer content View")))

'Add RichTextBox into the NavigationDrawer Container Control.

Me.navigationDrawer1.ContentViewContainer.Controls.Add(richTextbox)

{% endhighlight %}

{% endtabs %}

![](Concepts-And-Features_images/Concepts-And-Features_img1.jpg)


## DrawerView

DrawerView is a container, that will be displayed upon selection on top, along and below with the Content view section. This will contain below sections.

![](Concepts-And-Features_images/navigationdrawer_img2.png)

### Default color customization

The default color of item can be customized by using `DefaultColor` property of `DrawerMenuItem`. The backcolor of the item will be updated based on the value of DefaultColor.

{% tabs %}

{% highlight C# %}

// Back color
this.drawerMenuItem1.BackColor = System.Drawing.Color.Silver; 

// Hover color
this.drawerMenuItem1.HoverColor = System.Drawing.Color.White;           

// Default color
this.drawerMenuItem1.DefaultColor = System.Drawing.Color.Silver; 

{% endhighlight %}

{% highlight VB %}

' Back color
Me.drawerMenuItem1.BackColor = System.Drawing.Color.Silver

' Hover color
Me.drawerMenuItem1.HoverColor = System.Drawing.Color.White

' Default color
Me.drawerMenuItem1.DefaultColor = System.Drawing.Color.Silver

{% endhighlight %}

{% endtabs %}

![](Concepts-And-Features_images/navigationdrawer_img9.png)

## Transition

This support specifies the animations for the DrawerView panel. Transition needs to have following three options.

* SlideOnTop
* Push
* Reveal

### SlideOnTop

That draws the Drawer Content on top of the Content view content.

{% tabs %}

{% highlight C# %}

//Adds Transition property into NavigationDrawer

this.navigationDrawer1.Transition = Transition.SlideOnTop;

{% endhighlight %}

{% highlight VB %}

‘Adds Transition property into NavigationDrawer

Me.navigationDrawer1.Transition = Transition.SlideOnTop

{% endhighlight %}

{% endtabs %}


![](Concepts-And-Features_images/navigationdrawer_img2.png)


### Push

This Transition moves the Drawer and content view section simultaneously.

{% tabs %}

{% highlight C# %}

//Adds Transition property into NavigationDrawer

this.navigationDrawer1.Transition = Transition.Push;

{% endhighlight %}

{% highlight VB %}

'Adds Transition property into NavigationDrawer

Me.navigationDrawer1.Transition = Transition.Push

{% endhighlight %}

{% endtabs %}


![](Concepts-And-Features_images/navigationdrawer_img3.png)


### Reveal

In this transition, the Drawer content section will be stable and the content view section will be moved to reveal the drawer content.

{% tabs %}

{% highlight C# %}

//Adds Transition property into NavigationDrawer

this.navigationDrawer1.Transition = Transition.Push;

{% endhighlight %}

{% highlight VB %}

'Adds Transition property into NavigationDrawer

Me.navigationDrawer1.Transition = Transition.Push

{% endhighlight %}

{% endtabs %}


![](Concepts-And-Features_images/navigationdrawer_img4.png)



## Position

This support helps user to specify the sliding position of the DrawerView and it will have the following four options.

* Left – Slides from left direction.
* Right – Slides from right direction.
* Top – Slides from Top direction.
* Bottom – Slides from Bottom direction.

{% tabs %}

{% highlight C# %}

//Adds Position property into the NavigationDrawer

this.navigationDrawer1.Position = Position.Left;

{% endhighlight %}

{% highlight VB %}

'Adds Transition property into NavigationDrawer

Me.navigationDrawer1.Transition = Transition.Push

{% endhighlight %}

{% endtabs %}

* Left

![](Concepts-And-Features_images/navigationdrawer_img5.png)

* Right

![](Concepts-And-Features_images/navigationdrawer_img6.png)

* Top

![](Concepts-And-Features_images/navigationdrawer_img7.png)

* Bottom

![](Concepts-And-Features_images/navigationdrawer_img8.png)


## Animation duration

This support will help to specify TimeSpan value, by which the DrawerContent can be brought to view.

{% tabs %}

{% highlight C# %}

//Sets AnimationDuration for the NavigationDrawer

 this.navigationDrawer1.AnimationDuration = 100;

{% endhighlight %}

{% highlight VB %}

'Sets AnimationDuration for the NavigationDrawer

Me.navigationDrawer1.AnimationDuration = 100

{% endhighlight %}

{% endtabs %}

## Toggle drawer

 This support helps to toggle between Sliding Panel visibility.

{% tabs %}

{% highlight C# %}

//Calls the ToggleDrawer function

this.navigationDrawer1.ToggleDrawer();

{% endhighlight %}

{% highlight VB %}

'Calls the ToggleDrawer function

Me.navigationDrawer1.ToggleDrawer()

{% endhighlight %}

{% endtabs %}
