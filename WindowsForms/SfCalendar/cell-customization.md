---
layout: post
title: Customize the Dates of SfCalendar control for Windows Forms
description: Customize the Dates of SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Cell Customization

`SfCalendar` cells can be customized for mentioning some special or important days. 

## Special Dates 

This Support is used to mention some special dates. `SpecialDates` property helps to hold the Special Dates collection, which can be customized

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
        specialDate1.Value = new System.DateTime(2018, 1, 12, 0, 0, 0, 0);
    
        specialDate2.BackColor = System.Drawing.Color.White;
        specialDate2.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        specialDate2.ForeColor = System.Drawing.Color.Magenta;
        specialDate2.Image = Properties.Resources.Icon_Army_day;
        specialDate2.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate2.IsDateVisible = false;
        specialDate2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate2.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
        specialDate2.Value = new System.DateTime(2018, 1, 15, 0, 0, 0, 0); specialDate1.BackColor = System.Drawing.Color.White;
        
        specialDate3.BackColor = System.Drawing.Color.White;
        specialDate3.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        specialDate3.ForeColor = System.Drawing.Color.Magenta;
        specialDate3.Image = Properties.Resources.Icon_Anti_tobacco;
        specialDate3.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate3.IsDateVisible = false;
        specialDate3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate3.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
        specialDate3.Value = new System.DateTime(2018, 2, 4, 0, 0, 0, 0);
            
        specialDate4.BackColor = System.Drawing.Color.White;
        specialDate4.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        specialDate4.ForeColor = System.Drawing.Color.Magenta;
        specialDate4.Image = Properties.Resources.Valentine_day;
        specialDate4.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate4.IsDateVisible = false;
        specialDate4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate4.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
        specialDate4.Value = new System.DateTime(2018, 2, 14, 0, 0, 0, 0);
            
        specialDate5.BackColor = System.Drawing.Color.White;
        specialDate5.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        specialDate5.ForeColor = System.Drawing.Color.Magenta;
        specialDate5.Image = Properties.Resources.Icon_Childrens_day;
        specialDate5.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate5.IsDateVisible = false;
        specialDate5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
        specialDate5.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
        specialDate5.Value = new System.DateTime(2018, 7, 11, 0, 0, 0, 0);

        this.sfCalendar.BackColor = System.Drawing.Color.White;
        this.sfCalendar.BlackoutDates = null;            
        this.sfCalendar.Culture = new System.Globalization.CultureInfo("en-US");
        this.sfCalendar.DownArrowImage = null;
        this.sfCalendar.EnableAnimation = true;
        this.sfCalendar.FooterHeight = 30;
        this.sfCalendar.HeaderHeight = 70;
        this.sfCalendar.Location = new System.Drawing.Point(154, 64);
        this.sfCalendar.MaxDate = new System.DateTime(9999, 12, 31, 23, 59, 59, 999);
        this.sfCalendar.MinDate = new System.DateTime(((long)(0)));
        this.sfCalendar.Name = "sfCalendar";
        this.sfCalendar.NavigationButtonAlignment = Syncfusion.WinForms.Input.Enums.NavigationButtonAlignment.Right;
        this.sfCalendar.NumberOfWeeksInView = 6;
        this.sfCalendar.ShowAbbreviatedDayNames = true;
        this.sfCalendar.ShowFooter = false;
        this.sfCalendar.ShowNavigationButton = true;
        this.sfCalendar.ShowWeekNumbers = true;
        this.sfCalendar.VisualStyle.Header.BackColor = System.Drawing.Color.Red;
        this.sfCalendar.Size = new System.Drawing.Size(378, 354);
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
        specialDate1.Value = New Date(2018, 1, 12, 0, 0, 0, 0)

        specialDate2.BackColor = System.Drawing.Color.White
        specialDate2.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        specialDate2.ForeColor = System.Drawing.Color.Magenta
        specialDate2.Image = Properties.Resources.Icon_Army_day
        specialDate2.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate2.IsDateVisible = false
        specialDate2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate2.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        specialDate2.Value = New Date(2018, 1, 15, 0, 0, 0, 0)

        specialDate3.BackColor = System.Drawing.Color.White
        specialDate3.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        specialDate3.ForeColor = System.Drawing.Color.Magenta
        specialDate3.Image = Properties.Resources.Icon_Anti_tobacco
        specialDate3.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate3.IsDateVisible = false
        specialDate3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate3.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        specialDate3.Value = New Date(2018, 2, 4, 0, 0, 0, 0)

        specialDate4.BackColor = System.Drawing.Color.White
        specialDate4.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        specialDate4.ForeColor = System.Drawing.Color.Magenta
        specialDate4.Image = Properties.Resources.Valentine_day
        specialDate4.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate4.IsDateVisible = false
        specialDate4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate4.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        specialDate4.Value = New Date(2018, 2, 14, 0, 0, 0, 0)

        specialDate5.BackColor = System.Drawing.Color.White
        specialDate5.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        specialDate5.ForeColor = System.Drawing.Color.Magenta
        specialDate5.Image = Properties.Resources.Icon_Childrens_day
        specialDate5.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate5.IsDateVisible = false
        specialDate5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        specialDate5.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        specialDate5.Value = New Date(2018, 7, 11, 0, 0, 0, 0)

        Me.sfCalendar.BackColor = System.Drawing.Color.White
        Me.sfCalendar.BlackoutDates = Nothing
        Me.sfCalendar.Culture = New System.Globalization.CultureInfo("en-US")
        Me.sfCalendar.DownArrowImage = Nothing
        Me.sfCalendar.EnableAnimation = true
        Me.sfCalendar.FooterHeight = 30
        Me.sfCalendar.HeaderHeight = 70
        Me.sfCalendar.Location = New System.Drawing.Point(154, 64)
        Me.sfCalendar.MaxDate = New Date(9999, 12, 31, 23, 59, 59, 999)
        Me.sfCalendar.MinDate = New Date(CType(0,Long))
        Me.sfCalendar.Name = "sfCalendar"
        Me.sfCalendar.NavigationButtonAlignment = Syncfusion.WinForms.Input.Enums.NavigationButtonAlignment.Right
        Me.sfCalendar.NumberOfWeeksInView = 6
        Me.sfCalendar.ShowAbbreviatedDayNames = true
        Me.sfCalendar.ShowFooter = false
        Me.sfCalendar.ShowNavigationButton = true
        Me.sfCalendar.ShowWeekNumbers = true
        Me.sfCalendar.VisualStyle.Header.BackColor = System.Drawing.Color.Red
        Me.sfCalendar.Size = New System.Drawing.Size(378, 354)
        Me.sfCalendar.SpecialDates = New SpecialDate() {specialDate1, specialDate2, specialDate3, specialDate4, specialDate5}
        
    End Sub

{% endhighlight  %}

{% endtabs %} 

![](cell-customization-images/specialdates.png)

# Render cell on-demand

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

![](cell-customization-images/customizedates.png)

