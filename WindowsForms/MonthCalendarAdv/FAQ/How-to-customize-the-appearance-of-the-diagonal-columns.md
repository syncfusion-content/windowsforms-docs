---
layout: post
title: How to customize the appearance of the diagonal columns? | WindowsForms | Syncfusion
description: how to customize the appearance of the diagonal columns?
platform: WindowsForms
control: CalendarDateTime
documentation: ug
---
# How to customize the appearance of the diagonal columns?

The appearance of diagonal columns can be customized using the below code.


{% highlight c#  %}


private void monthCalendarAdv1_DateCellQueryInfo(object sender,Syncfusion.Windows.Forms.Tools.DateCellQueryInfoEventArgs e)

{

if(e.RowIndex==e.ColIndex) 

{

   // Creates an instance of GridStyleInfo. 

Syncfusion.Windows.Forms.Grid.GridStyleInfo gs=e.Style;



// Changes backcolor.

gs.BackColor=Color.Green;



monthCalendarAdv1.SetInfo(e.RowIndex,e.ColIndex,gs);

}

}




{% endhighlight  %}
{% highlight vbnet  %}


Private Sub monthCalendarAdv1_DateCellQueryInfo(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.DateCellQueryInfoEventArgs) 



   ' Creates an instance of GridStyleInfo. 

If e.RowIndex = e.ColIndex Then 

Dim gs As Syncfusion.Windows.Forms.Grid.GridStyleInfo = e.Style 



' Changes backcolor.

gs.BackColor = Color.Green 



monthCalendarAdv1.SetInfo(e.RowIndex, e.ColIndex, gs) 

End If 



End Sub

{% endhighlight  %}

![](FAQ_images/Overview_img177.jpeg) 



Setting Icons for the Data Cells

Using DateCellQueryInfo event, we can add icons to the data cells.


{% highlight c#  %}


private void monthCalendarAdv1_DateCellQueryInfo(object sender,Syncfusion.Windows.Forms.Tools.DateCellQueryInfoEventArgs e)

{

if(e.RowIndex==3) 

{

  e.Style.ImageList = this.imageList1;

    e.Style.ImageIndex = 1;



}

}



{% endhighlight  %}
{% highlight vbnet  %}



Private Sub monthCalendarAdv1_DateCellQueryInfo(ByVal sender As Object, ByVal e As  Syncfusion.Windows.Forms.Tools.DateCellQueryInfoEventArgs) 



 If e.RowIndex==3 Then 



e.Style.ImageList = this.imageList1;

     e.Style.ImageIndex = 1;



End If 



End Sub

{% endhighlight  %}

![](FAQ_images/Overview_img178.jpeg) 
