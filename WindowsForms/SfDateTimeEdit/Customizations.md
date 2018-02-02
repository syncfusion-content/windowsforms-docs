---
layout: post
title: Customizations | WindowsForms | Syncfusion
description: Customize the visibility of UpDown Button, Key Navigation Support and DropDown Popup alignment
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Customizations

## Customize the UpDown Button

UpDown allows to change the value by Keyboard or Mouse interaction and it also allows to define increment or decrement the values of date, month and year when change the value by clicking Up and Down buttons. Shows or hides the UpDown buttons using the `ShowUpDown` property. The following code snippets illustrates the same.

{% tabs %}

{% highlight c# %}

//Enable the UpDown Button

this.dateTimeEdit.ShowUpDown = true;

//Disable the UpDown Button

this.dateTimeEdit.ShowUpDown = false;

{% endhighlight  %}

{% highlight vb %}

'Enable the UpDown Button

this.dateTimeEdit.ShowUpDown = True

'Disable the UpDown Button

this.dateTimeEdit.ShowUpDown = False

{% endhighlight  %}

{% endtabs %} 

![](Customization_images/Showupdown.png)

## Customize the DropDown Button

DropDown allows to open the Calendar Popup by Keyboard or Mouse interaction. Shows or hides the DropDown button using the `ShowDropDown` property. The following code snippets illustrates the same.

{% tabs %}

{% highlight c# %}

//Enable the DropDown Button

this.dateTimeEdit.ShowDropDown = true;

//Disable the DropDown Button

this.dateTimeEdit.ShowDropDown = false;

{% endhighlight  %}

{% highlight vb %}

'Enable the DropDown Button

this.dateTimeEdit.ShowDropDown = True

'Disable the DropDown Button

this.dateTimeEdit.ShowDropDown = False

{% endhighlight  %}

{% endtabs %} 

![](Customization_images/ShowDropDown.png)

## Key Navigation Support

`DateTimeField` can be chosen and `DateTime` Value can be increment / decrement with Left Arrow Key, Right Arrow Key , Up Arrow Key, Down Arrow Key combinations. This can be enabled / disabled by using `InterceptArrowKeys` property. The following code snippets illustrates the same.

{% tabs %}

{% highlight c# %}

//Allow the arrow keys functionalities

this.dateTimeEdit.InterceptArrowKeys = true;

//Disable the arrow keys functionalities

this.dateTimeEdit.InterceptArrowKeys = false;

{% endhighlight  %}

{% highlight vb %}

'Allow the arrow keys functionalities

this.dateTimeEdit.InterceptArrowKeys = True

'Disable the arrow keys functionalities

this.dateTimeEdit.InterceptArrowKeys = False

{% endhighlight  %}

{% endtabs %} 

![](Customization_images/Keynavigation.png)

## DropDown Popup Alignment customization

`DateTime` Value can be chosen from Popup Calendar. By default it will be displayed from Left position and its initial display position can be customized by `DropDownPopupAlignment` property. The following code snippets illustrates the same.

{% tabs %}

{% highlight c# %}

//Setting Left Popup alignment

this.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Left;

//Setting Right Popup alignment

this.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Right;

{% endhighlight  %}

{% highlight vb %}

'Setting Left Popup alignment

this.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Left

'Setting Right Popup alignment

this.dateTimeEdit.DropDownPopupAlignment = DropDownPopupAlignment.Right

{% endhighlight  %}

{% endtabs %} 

![](Customization_images/popupalignment.png)

## DropDown Popup Size customization

By default it will be displayed from Left position with default Popup Width and it can be customized by `DropDownSize` property. The following code snippets illustrates the same.

{% tabs %}

{% highlight c# %}

//Setting DropDownSize

this.dateTimeEdit.DropDownSize = new Size(294, 293);

this.dateTimeEdit.Width = 294;

{% endhighlight  %}

{% highlight vb %}

'Setting DropDownSize

this.dateTimeEdit.DropDownSize = new Size(294, 293)

this.dateTimeEdit.Width = 294

{% endhighlight  %}

{% endtabs %} 

![](Customization_images/DropDownSize.png)
