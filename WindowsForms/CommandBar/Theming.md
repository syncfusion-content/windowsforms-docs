---
layout: post
title: Theming | WindowsForms | Syncfusion®
description: Learn here all about themes and visual styles feature of Syncfusion® Windows Forms CommandBars control and more.
platform: WindowsForms
control: CommandBars
documentation: ug
---

# Theming in Windows Forms CommandBars

The command bar supports various built in themes via the `Style` property of the command bar controller instance that are discussed in this topic.

## Default theme

The `Default` theme applies the default color styles to the visual components of command bar. The following code snippet shows the command bar is applied with default theme.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Default;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Default

{% endhighlight %}

{% endtabs %}

![Command bar applied with default theme](Theming-images/defaultTheme.png)

## Office XP theme

The command bar supports XP theme color styles when the style is applied as `OfficeXP`. The below code snippet shows the command bar is being applied with Office XP theme.

{% tabs %}

{% highlight C# %}

this.commandBarController1.ThemesEnabled = true;
this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.OfficeXP;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.ThemesEnabled = True
Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.OfficeXP

{% endhighlight %}

{% endtabs %}

![Command bar applied with Office XP theme](Theming-images/officeXP_ThemesEnabled.png)

N> The `ThemesEnabled` property should be enabled to apply the XP theme color styles to the command bar.

## Metro Theme

The command bar supports metro theme color styles when the style is applied as `Metro`. The below code snippet shows the command bar is being applied with metro theme.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Metro;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Metro

{% endhighlight %}

{% endtabs %}

![Command bar applied with metro theme](Theming-images/metroTheme.png)

## Office 2003 theme

The Office 2003 color styles can be applied to the command bar by applying the `Office2003` theme. The below code snippet shows the command bar is being applied with Office 2003 theme.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2003;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2003

{% endhighlight %}

{% endtabs %}

![Command bar applied with office 2003 theme](Theming-images/office2003Theme.png)

## Office 2007 theme

The Office 2007 color styles can be applied to the command bar by applying the `Office2007` theme and the respective color style can be selected via the `Office2007Theme` property. By default, the color scheme is set as `Blue`. Likewise the `Black`, `Silver` is applied. The below code snippet shows the command bar is being applied with office 2007 theme.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.commandBarController1.Office2007Theme = Office2007Theme.Blue;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.commandBarController1.Office2007Theme = Office2007Theme.Blue

{% endhighlight %}

{% endtabs %}

![Command bar applied with office 2007 blue theme](Theming-images/office2007BlueTheme.png)

![Command bar applied with office 2007 black theme](Theming-images/office2007BlackTheme.png)

![Command bar applied with office 2007 silver theme](Theming-images/office2007SilverTheme.png)

The color schemes can also be modified with the `Managed` color style. The below code snippet shows the command bar is being applied with office 2007 theme with custom color via the **Office2007Colors** class.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.commandBarController1.Office2007Theme = Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(this, Color.Red);

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.commandBarController1.Office2007Theme = Office2007Theme.Managed
Office2007Colors.ApplyManagedColors(Me, Color.Red);

{% endhighlight %}

{% endtabs %}

![Command bar applied with office 2007 managed theme](Theming-images/office2007ManagedTheme.png)

## Office 2007 Outlook theme

The Office 2007 Outlook-like color styles can be applied to the command bar by applying the `Office2007Outlook` theme. The below code snippet shows the command bar is being applied with it.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook

{% endhighlight %}

{% endtabs %}

![Command bar applied with office 2007 Outlook theme](Theming-images/office2007OutlookTheme.png)

## Office 2010 theme

The Office 2010 color styles can be applied to the command bar by applying the `Office2010` theme and the respective color style can be selected via the `Office2010Theme` property. By default, the color scheme is set as `Blue`. Likewise the `Black`, `Silver` is applied. The below code snippet shows the command bar is being applied with office 2010 theme.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.commandBarController1.Office2010Theme = Office2010Theme.Blue;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.commandBarController1.Office2010Theme = Office2010Theme.Blue

{% endhighlight %}

{% endtabs %}

![Command bar applied with office 2010 blue theme](Theming-images/office2010BlueTheme.png)

![Command bar applied with office 2010 black theme](Theming-images/office2010BlackTheme.png)

![Command bar applied with office 2010 silver theme](Theming-images/office2010SilverTheme.png)

The color schemes can also be modified with the `Managed` color style. The below code snippet shows the command bar is being applied with office 2010 theme with custom color via the **Office2010Colors** class.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.commandBarController1.Office2010Theme = Office2010Theme.Managed;
Office2010Colors.ApplyManagedColors(this, Color.Green);

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.commandBarController1.Office2010Theme = Office2010Theme.Managed
Office2010Colors.ApplyManagedColors(Me, Color.Green);

{% endhighlight %}

{% endtabs %}

![Command bar applied with office 2007 managed theme](Theming-images/office2010ManagedTheme.png)

## Office 2016 theme

Command bar supports the Office 2016-like color styles and color schemes. The applicable color schemes of Office 2016 themes are as follows.

* Office 2016 dark gray
* Office 2016 black
* Office 2016 white
* Office 2016 colorful

### Office 2016 dark gray theme

The command bar is applied with `Office2016Darkgray` color scheme by using the below code snippet.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Darkgray;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Darkgray

{% endhighlight %}

{% endtabs %}

![Command bar applied with Office 2016 dark gray](Theming-images/office2016DarkgrayTheme.png)

### Office 2016 black theme

The command bar is applied with `Office2016Black` color scheme by using the below code snippet.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Black;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Black

{% endhighlight %}

{% endtabs %}

![Command bar applied with Office 2016 black](Theming-images/office2016BlackTheme.png)

### Office 2016 white theme

The command bar is applied with `Office2016White` color scheme by using the below code snippet.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016White;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016White

{% endhighlight %}

{% endtabs %}

![Command bar applied with Office 2016 white](Theming-images/office2016WhiteTheme.png)

### Office 2016 colorful theme

The command bar is applied with `Office2016Colorful` color scheme by using the below code snippet.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful

{% endhighlight %}

{% endtabs %}

![Command bar applied with Office 2016 colorful](Theming-images/office2016ColorfulTheme.png)

## VS 2005 theme

The Visual Studio-2005 like color styles are applied via the `VS2005` theme. The below code snippet shows the command bar is applied with VS 2005-like theme.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.VS2005;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.VS2005

{% endhighlight %}

{% endtabs %}

![Command bar applied with VS 2005 theme](Theming-images/vs2005Theme.png)

## VS 2010 theme

The Visual Studio-2005 like color styles are applied via the `VS2010` theme. The below code snippet shows the command bar is applied with VS 2010-like theme.

{% tabs %}

{% highlight C# %}

this.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.VS2010;

{% endhighlight %}

{% highlight VB %}

Me.commandBarController1.Style = Syncfusion.Windows.Forms.VisualStyle.VS2010

{% endhighlight %}

{% endtabs %}

![Command bar applied with VS 2010 theme](Theming-images/vs2010Theme.png)