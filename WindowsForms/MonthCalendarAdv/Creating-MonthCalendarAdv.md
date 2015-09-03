---
layout: post
title: Creating MonthCalendarAdv
description: creating monthcalendaradv
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# Creating MonthCalendarAdv

We can just drag and drop the MonthCalendarAdv onto the form through designer and can access their properties through the property grid. 

![](CalendarDateTime_images/Overview_img133.jpeg) 



To create the control programmatically, follow the below steps.

1. Include the required namespace.





             using Syncfusion.Windows.Forms.Tools;







              Imports Syncfusion.Windows.Forms.Tools



2. Create an instance of the MonthCalendarAdv control. 





					private Syncfusion.Windows.Forms.Tools.MonthCalendarAdv monthCalendarAdv1;

					this.monthCalendarAdv1=new MonthCalendarAdv();







					Private monthCalendarAdv1 As Syncfusion.Windows.Forms.Tools.MonthCalendarAdv

					Me.monthCalendarAdv1 = New MonthCalendarAdv()



3. Set the visual style for the control. Add that instance to the Form.





					this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;

					this.Controls.Add(this.monthCalendarAdv1);







					Me.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007

					Me.Controls.Add(Me.monthCalendarAdv1)



4. Run the application.

   ![](CalendarDateTime_images/Overview_img134.jpeg) 

   {:.prettyprint}

See Also

