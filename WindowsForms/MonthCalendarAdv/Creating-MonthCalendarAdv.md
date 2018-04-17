---
layout: post
title: Creating MonthCalendarAdv | WindowsForms | Syncfusion
description: creating monthcalendaradv
platform: WindowsForms
control: CalendarDateTime
documentation: ug
---
# Creating MonthCalendarAdv

We can just drag and drop the MonthCalendarAdv onto the form through designer and can access their properties through the property grid.

![](CalendarDateTime_images/Overview_img133.jpeg)



To create the control programmatically, follow the given steps.

1. Include the required namespace.
    
    {% tabs %}

    {% highlight C# %}

		using Syncfusion.Windows.Forms.Tools;
   
    {% endhighlight %}
    
    {% highlight VB %}

		Imports Syncfusion.Windows.Forms.Tools
    
    {% endhighlight %}

    {% endtabs %}



2. Create an instance of the MonthCalendarAdv control. 
   
    {% tabs %}

    {% highlight C# %}

	   private Syncfusion.Windows.Forms.Tools.MonthCalendarAdv monthCalendarAdv1;
	   this.monthCalendarAdv1=new MonthCalendarAdv();
    
    {% endhighlight %}
    
    {% highlight VB %}

	   Private monthCalendarAdv1 As Syncfusion.Windows.Forms.Tools.MonthCalendarAdv
	   Me.monthCalendarAdv1 = New MonthCalendarAdv()
    
    {% endhighlight %}

    {% endtabs %}


3. Set the visual style for the control. Add that instance to the Form.

    {% tabs %}

    {% highlight C# %}

	   this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
	   this.Controls.Add(this.monthCalendarAdv1);
    
    {% endhighlight %}
    
    {% highlight VB %}

	   Me.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007
	   Me.Controls.Add(Me.monthCalendarAdv1)
    
    {% endhighlight %}

    {% endtabs %}



4. Run the application.

   ![](CalendarDateTime_images/Overview_img134.jpeg) 

  



