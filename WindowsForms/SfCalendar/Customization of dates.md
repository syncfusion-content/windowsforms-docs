---
layout: post
title: Customize the Dates of SfCalendar control for Windows Forms
description: Customize the Dates of SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Highlight or Customize the Dates

This Support is used to highlight dates or customize to mention some special date.

To customize the dates, use the following code example.

{% tabs %}

{% highlight C# %}

public Form1()
{
    
    InitializeComponent();

    // Invoking the DrawCell Event.

    this.SfCalendar1.DrawCell += SfCalendar1_DrawCell;
}

/// <summary>
/// To Draw the Cell
/// </summary>
/// <param name="sender">SfCalendar</param>
/// <param name="args">DrawCell Event Args</param>
private void SfCalendar1_DrawCell(SfCalendar sender, DrawCellEventArgs args)
{
    SelectionRange range1 = new SelectionRange(new DateTime(2017, 09, 01), new DateTime(2017, 09, 15));

    SelectionRange range2 = new SelectionRange(new DateTime(2017, 09, 16), new DateTime(2017, 09, 30));

    DateTime Christmas = new DateTime(2017, 12, 25);

    if (args.Value != null)
    {

       if (args.Value == Christmas)

        {

            args.BackColor = Color.Green;

            args.ForeColor = Color.Yellow;
            
            args.Image = Resources.Christmas;
            
            args.ImageBounds = new Rectangle(25, 13, 30, 30);
            
            args.HorizontalAlignment = StringAlignment.Near;
            
            args.VerticalAlignment = StringAlignment.Near;
        }

        if (args.Value.Value.Date == this.dateTimePicker5.Value.Date)
        
        {
             string month = args.Value.Value.ToString("MMM", this.SfCalendar1.Culture);

             args.BackColor = this.colorPickerButton17.SelectedColor;

             args.ForeColor = this.colorPickerButton18.SelectedColor;

             args.Image = Resources.Cell;

             args.ImageBounds = new Rectangle(0, 20, 30, 30);

             args.VerticalAlignment = this.verticalAlignment;

             args.HorizontalAlignment = this.horizontalAlignment;

             args.Text = month + " " + args.Text;

         }
     }
 }


{% endhighlight  %}

{% highlight VB %}

public Form1()

{

    InitializeComponent();
    
    // Invoking the DrawCell Event.

    this.SfCalendar1.DrawCell += SfCalendar1_DrawCell;

}

/// <summary>
/// To Draw the Cell
/// </summary>
/// <param name="sender">SfCalendar</param>
/// <param name="args">DrawCell Event Args</param>

private void SfCalendar1_DrawCell(SfCalendar sender, DrawCellEventArgs args)

{

    SelectionRange range1 = new SelectionRange(new DateTime(2017, 09, 01), new DateTime(2017, 09, 15));

    SelectionRange range2 = new SelectionRange(new DateTime(2017, 09, 16), new DateTime(2017, 09, 30));

  
    DateTime Christmas = new DateTime(2017, 12, 25);

   
    if (args.Value != null)

    {

        if (args.Value == Christmas)

        {

            args.BackColor = Color.Green

            args.ForeColor = Color.Yellow

            args.Image = Resources.Christmas

            args.ImageBounds = new Rectangle(25, 13, 30, 30)

            args.HorizontalAlignment = StringAlignment.Near

            args.VerticalAlignment = StringAlignment.Near

        }

    }

}

{% endhighlight  %}

{% endtabs %} 

![](Customize-the-dates_images/CustomizeDates.png)

# Special Dates 

This Support is used to mention some special dates. `SpecialDates` property helps to hold the Special Dates collection, which can be customized

To customize the dates, use the following code example.

{% tabs %}

{% highlight C# %}

private void InitializeComponent()
    {

        this.components = new System.ComponentModel.Container();
        
        Syncfusion.WinForms.Input.SpecialDate specialDate1 = new 
        
        Syncfusion.WinForms.Input.SpecialDate();
        
        Syncfusion.WinForms.Input.SpecialDate specialDate2 = new 
        
        Syncfusion.WinForms.Input.SpecialDate();
        
        specialDate1.BackColor = System.Drawing.Color.White;
        
        specialDate1.Font = new System.Drawing.Font("Segoe UI", 11F, 
        
        System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        
        specialDate1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(168)))), ((int)
        (((byte)(0)))), ((int)(((byte)(0)))));
        
        specialDate1.Image = global::Calendar.Properties.Resources.Special;
        
        specialDate1.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
        
        specialDate1.IsDateVisible = true;
        
        specialDate1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
        
        specialDate1.TextImageRelation = 
        System.Windows.Forms.TextImageRelation.TextBeforeImage;
        
        specialDate1.Value = new System.DateTime(2018, 1, 4, 0, 0, 0, 0);
        
        specialDate2.BackColor = System.Drawing.Color.White;
        
        specialDate2.Font = new System.Drawing.Font("Segoe UI", 10.5F, 
        System.Drawing.FontStyle.Bold);
        specialDate2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(168)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
        
        specialDate2.Image = global::Calendar.Properties.Resources.Special;
        
        specialDate2.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
        
        specialDate2.IsDateVisible = true;
        
        specialDate2.TextAlign = System.Drawing.ContentAlignment.TopLeft;
        
        specialDate2.TextImageRelation = 
        System.Windows.Forms.TextImageRelation.TextBeforeImage;
        
        specialDate2.Value = new System.DateTime(2018, 1, 6, 0, 0, 0, 0);
        
        this.SfCalendar1.SpecialDates = new Syncfusion.WinForms.Input.SpecialDate[] { specialDate1, specialDate2 };
    }

{% endhighlight  %}

{% highlight VB %}

private void InitializeComponent()
    {
        
        this.components = new System.ComponentModel.Container()
        
        Syncfusion.WinForms.Input.SpecialDate specialDate1 = new 
        
        Syncfusion.WinForms.Input.SpecialDate()
        
        Syncfusion.WinForms.Input.SpecialDate specialDate2 = new 
        
        Syncfusion.WinForms.Input.SpecialDate()
        
        specialDate1.BackColor = System.Drawing.Color.White
        
        specialDate1.Font = new System.Drawing.Font("Segoe UI", 11F, 
        System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)))
        
        specialDate1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(168)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))))
        
        specialDate1.Image = global::Calendar.Properties.Resources.Special
        
        specialDate1.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        
        specialDate1.IsDateVisible = true
        
        specialDate1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        
        specialDate1.TextImageRelation = 
        System.Windows.Forms.TextImageRelation.TextBeforeImage
        
        specialDate1.Value = new System.DateTime(2018, 1, 4, 0, 0, 0, 0)
        
        specialDate2.BackColor = System.Drawing.Color.White
        
        specialDate2.Font = new System.Drawing.Font("Segoe UI", 10.5F, System.Drawing.FontStyle.Bold)
        
        specialDate2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(168)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))))
        
        specialDate2.Image = global::Calendar.Properties.Resources.Special
        
        specialDate2.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        
        specialDate2.IsDateVisible = true
        
        specialDate2.TextAlign = System.Drawing.ContentAlignment.TopLeft
        
        specialDate2.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        
        specialDate2.Value = new System.DateTime(2018, 1, 6, 0, 0, 0, 0)
        
        this.SfCalendar1.SpecialDates = new Syncfusion.WinForms.Input.SpecialDate[] { specialDate1, specialDate2 }
    }

{% endhighlight  %}

{% endtabs %} 

![](Customize-the-dates_images/SpecialDates.png)