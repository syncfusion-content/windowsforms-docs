---
layout: post
title: Customize Dialog Appearance
description: customize dialog appearance
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Customize Dialog Appearance

Foreground and Background Settings

Fore color, back color and the Font style can be set for the Customize Dialog using ForeColor, BackColor and Font properties respectively.



{% highlight c# %}

//to change ForeColor

this.mainFrameBarManager1.CustomizationDialog.ForeColor = Color.OrangeRed;



//to change BackColor

this.mainFrameBarManager1.CustomizationDialog.BackColor = Color.PowderBlue;



//Change the font,font style and size

mainFrameBarManager1.CustomizationDialog.Font = new Font("Arial", 8, System.Drawing.FontStyle.Bold);



{% endhighlight  %}
{% highlight vbnet %}



'to change ForeColor

Me.mainFrameBarManager1.CustomizationDialog.ForeColor = Color.OrangeRed



'to change BackColor

Me.mainFrameBarManager1.CustomizationDialog.BackColor = Color.PowderBlue



'Change the font,font style and size 

mainFrameBarManager1.CustomizationDialog.Font = New Font("Arial", 8, System.Drawing.FontStyle.Bold) 

{% endhighlight  %}

![](Overview_images/Overview_img168.jpeg) 



## Size Settings

Size and the client size of the Customize Dialog can be controlled using the Size property as follows.




{% highlight c# %}
//to change the size of entire dialog

this.mainFrameBarManager1.CustomizationDialog.Size = new Size(700, 800);

//to change the client area

this.mainFrameBarManager1.CustomizationDialog.ClientSize = new Size(600, 700);


{% endhighlight  %}
{% highlight vbnet  %}



'to change the size of entire dialog 

Me.mainFrameBarManager1.CustomizationDialog.Size = New Size(700, 800)

'to change the client area 

Me.mainFrameBarManager1.CustomizationDialog.ClientSize = New Size(600, 700)
{% endhighlight  %}