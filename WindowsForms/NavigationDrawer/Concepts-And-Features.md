---
layout: post
title: Concepts-And-Featurea| WindowsForms | Syncfusion
description:  concepts and features
platform: WindowsForms
control: NavigationDrawer 
documentation: ug
---

# Concepts and Features

## ContentView

**ContentView** is the main view of the **NavigationDrawer** on which the desired items can be placed. For example, RichTextBox can be used in this sample.

{% tabs %}

{% highlight c# %}

//Creates RichTextBox instance.

RichTextBox richTextBox = new RichTextBox();

//Specifies the Text

this.richTextBox.Text = "Content View" + "\n" + "\n" + "This is Navigation Drawer content View";

//Add RichTextBox into the NavigationDrawer Container Control.

this.navigationDrawer1.ContentViewContainer.Controls.Add(richTextbox);

{% endhighlight %}

{% highlight vb %}

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

**DrawerView** is a container, that will be displayed upon selection on top, along and below with the Content view section. This will contain below sections.

![](Concepts-And-Features_images/Concepts-And-Features_img2.png)


## Transition

This support specifies the animations for the DrawerView panel. Transition needs to have following three options.

* SlideOnTop
* Push
* Reveal

### SlideOnTop 

That draws the Drawer Content on top of the Content view content. 

{% tabs %}

{% highlight c# %}

//Adds Transition property into NavigationDrawer

this.navigationDrawer1.Transition = Transition.SlideOnTop;

{% endhighlight %}

{% highlight vb %}

‘Adds Transition property into NavigationDrawer

Me.navigationDrawer1.Transition = Transition.SlideOnTop

{% endhighlight %}

{% endtabs %}


![](Concepts-And-Features_images/Concepts-And-Features_img3.jpg)


### Push

This Transition moves the Drawer and content view section simultaneously.

{% tabs %}

{% highlight c# %}

//Adds Transition property into NavigationDrawer

this.navigationDrawer1.Transition = Transition.Push;

{% endhighlight %}

{% highlight vb %}

'Adds Transition property into NavigationDrawer

Me.navigationDrawer1.Transition = Transition.Push

{% endhighlight %}

{% endtabs %}


![](Concepts-And-Features_images/Concepts-And-Features_img4.jpg)


### Reveal

In this transition, the Drawer content section will be stable and the content view section will be moved to reveal the drawer content.

{% tabs %}

{% highlight c# %}

//Adds Transition property into NavigationDrawer

this.navigationDrawer1.Transition = Transition.Push;

{% endhighlight %}

{% highlight vb %}

'Adds Transition property into NavigationDrawer

Me.navigationDrawer1.Transition = Transition.Push

{% endhighlight %}

{% endtabs %}


![](Concepts-And-Features_images/Concepts-And-Features_img5.jpg)



## Position

This support helps user to specify the sliding position of the DrawerView and it will have the following four options.

* Left – Slides from left direction. 
* Right – Slides from right direction. 
* Top – Slides from Top direction. 
* Bottom – Slides from Bottom direction. 

{% tabs %}

{% highlight c# %}

//Adds Position property into the NavigationDrawer

this.navigationDrawer1.Position = Position.Left;

{% endhighlight %}

{% highlight vb %}

'Adds Transition property into NavigationDrawer

Me.navigationDrawer1.Transition = Transition.Push

{% endhighlight %}

{% endtabs %}

* Left 

![](Concepts-And-Features_images/Concepts-And-Features_img6.jpg)

* Right 

![](Concepts-And-Features_images/Concepts-And-Features_img7.jpg)

* Top 

![](Concepts-And-Features_images/Concepts-And-Features_img8.jpg)

* Bottom 

![](Concepts-And-Features_images/Concepts-And-Features_img9.jpg)


## Animation Duration

This support will help to specify TimeSpan value, by which the DrawerContent can be brought to view.

{% tabs %}

{% highlight c# %}

//Sets AnimationDuration for the NavigationDrawer

 this.navigationDrawer1.AnimationDuration = 100;

{% endhighlight %}

{% highlight vb %}

'Sets AnimationDuration for the NavigationDrawer

Me.navigationDrawer1.AnimationDuration = 100

{% endhighlight %}

{% endtabs %}

## Toggle Drawer

This function decides whether to open or close the DrawerContent based on the truth of IsOpen property.

{% tabs %}

{% highlight c# %}

//Calls the ToggleDrawer function

this.navigationDrawer1.ToggleDrawer();

{% endhighlight %}

{% highlight vb %}

'Calls the ToggleDrawer function

Me.navigationDrawer1.ToggleDrawer()

{% endhighlight %}

{% endtabs %}
