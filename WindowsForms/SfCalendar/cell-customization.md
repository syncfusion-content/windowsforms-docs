---
layout: post
title: Customize the Dates of SfCalendar control for Windows Forms
description: Customize the Dates of SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Cell customization

`SfCalendar` cells can be customized for mentioning some special or important days. 

## Special Dates 

This support is used to mention some special dates. `SpecialDates` property helps to hold the Special Dates collection, which can be customized.

To customize the dates, use the following code example.

{% tabs %}

{% highlight C# %}

private void InitializeComponent()
    {

        this.components = new System.ComponentModel.Container();
        
        SpecialDate specialDate1 = new SpecialDate();
        SpecialDate specialDate2 = new SpecialDate();
        SpecialDate specialDate3 = new SpecialDate();
        SpecialDate specialDate4 = new SpecialDate();
        SpecialDate specialDate5 = new SpecialDate();
        
        specialDate1.BackColor = System.Drawing.Color.White;
        specialDate1.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        specialDate1.ForeColor = System.Drawing.Color.Magenta;
        specialDate1.Image = Properties.Resources.Icon_National_Youth_day;
        specialDate1.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate1.IsDateVisible = false;
        specialDate1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate1.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
        specialDate1.Value = new System.DateTime(2018, 4, 7, 0, 0, 0, 0);
    
        specialDate2.BackColor = System.Drawing.Color.White;
        specialDate2.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        specialDate2.ForeColor = System.Drawing.Color.Magenta;
        specialDate2.Image = Properties.Resources.Icon_Army_day;
        specialDate2.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate2.IsDateVisible = false;
        specialDate2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate2.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
        specialDate2.Value = new System.DateTime(2018, 3, 24, 0, 0, 0, 0); specialDate1.BackColor = System.Drawing.Color.White;
        
        specialDate3.BackColor = System.Drawing.Color.White;
        specialDate3.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        specialDate3.ForeColor = System.Drawing.Color.Magenta;
        specialDate3.Image = Properties.Resources.Icon_Anti_tobacco;
        specialDate3.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate3.IsDateVisible = false;
        specialDate3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate3.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
        specialDate3.Value = new System.DateTime(2018, 3, 21, 0, 0, 0, 0);
            
        specialDate4.BackColor = System.Drawing.Color.White;
        specialDate4.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        specialDate4.ForeColor = System.Drawing.Color.Magenta;
        specialDate4.Image = Properties.Resources.Valentine_day;
        specialDate4.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate4.IsDateVisible = false;
        specialDate4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate4.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
        specialDate4.Value = new System.DateTime(2018, 3, 14, 0, 0, 0, 0);
            
        specialDate5.BackColor = System.Drawing.Color.White;
        specialDate5.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        specialDate5.ForeColor = System.Drawing.Color.Magenta;
        specialDate5.Image = Properties.Resources.Icon_Children_day;
        specialDate5.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate5.IsDateVisible = false;
        specialDate5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate5.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
        specialDate5.Value = new System.DateTime(2018, 3, 8, 0, 0, 0, 0);

        this.sfCalendar.SpecialDates = new SpecialDate[] {specialDate1, specialDate2, specialDate3, specialDate4, specialDate5};
    }

{% endhighlight  %}

{% highlight VB %}

 Private Sub InitializeComponent()

        Me.components = New System.ComponentModel.Container
        Dim specialDate1 As SpecialDate = New SpecialDate
        Dim specialDate2 As SpecialDate = New SpecialDate
        Dim specialDate3 As SpecialDate = New SpecialDate
        Dim specialDate4 As SpecialDate = New SpecialDate
        Dim specialDate5 As SpecialDate = New SpecialDate

        specialDate1.BackColor = System.Drawing.Color.White
        specialDate1.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        specialDate1.ForeColor = System.Drawing.Color.Magenta
        specialDate1.Image = Properties.Resources.Icon_National_Youth_day
        specialDate1.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate1.IsDateVisible = false
        specialDate1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate1.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        specialDate1.Value = New Date(2018, 4, 7, 0, 0, 0, 0)

        specialDate2.BackColor = System.Drawing.Color.White
        specialDate2.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        specialDate2.ForeColor = System.Drawing.Color.Magenta
        specialDate2.Image = Properties.Resources.Icon_Army_day
        specialDate2.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate2.IsDateVisible = false
        specialDate2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate2.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        specialDate2.Value = New Date(2018, 3, 24, 0, 0, 0, 0)

        specialDate3.BackColor = System.Drawing.Color.White
        specialDate3.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        specialDate3.ForeColor = System.Drawing.Color.Magenta
        specialDate3.Image = Properties.Resources.Icon_Anti_tobacco
        specialDate3.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate3.IsDateVisible = false
        specialDate3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate3.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        specialDate3.Value = New Date(2018, 3, 21, 0, 0, 0, 0)

        specialDate4.BackColor = System.Drawing.Color.White
        specialDate4.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        specialDate4.ForeColor = System.Drawing.Color.Magenta
        specialDate4.Image = Properties.Resources.Valentine_day
        specialDate4.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate4.IsDateVisible = false
        specialDate4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate4.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        specialDate4.Value = New Date(2018, 3, 14, 0, 0, 0, 0)

        specialDate5.BackColor = System.Drawing.Color.White
        specialDate5.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        specialDate5.ForeColor = System.Drawing.Color.Magenta
        specialDate5.Image = Properties.Resources.Icon_Children_day
        specialDate5.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate5.IsDateVisible = false
        specialDate5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate5.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        specialDate5.Value = New Date(2018, 3, 8, 0, 0, 0, 0)

        Me.sfCalendar.SpecialDates = New SpecialDate() {specialDate1, specialDate2, specialDate3, specialDate4, specialDate5}
        
    End Sub

{% endhighlight  %}

{% endtabs %} 

![](cell-customization-images/specialdates.png)

## Render cell on-demand

This support is used to highlight dates or customize to mention some special date.

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

![](cell-customization-images/customizedates.png)

