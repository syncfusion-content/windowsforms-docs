---
layout: post
title: Numeric-Up-Down
description: numeric up down
platform: windowsform
control: Grid
documentation: ug
---

# Numeric Up Down

NumericUpDownCellType lets you input numeric data either by editing the displayed text or by using spinner buttons to increase or decrease the displayed value. As your value hits a limit, you can either have it stick at that limit or wrap to the opposite limiting value. To hold information such as the upper and lower limits, Essential Grid uses GridNumericUpDownCellInfo object whose constructor accepts the parameters used in the control. This is illustrated in the following code.

{% highlight c# %}



//Sets up a NumericUpDown Control and sets up upper and lower limits.  

public GridNumericUpDownCellInfo(int min, int max, int start, int step, bool wrap)
{% endhighlight %}


{% highlight vbnet %}



'Sets up a NumericUpDown Control and sets up upper and lower limits.

Public Sub New(min As Integer, max As Integer, start As Integer, step1 As Integer, wrap As Boolean) 

{% endhighlight %}

 ![](Adding-Special-Controls-to-Grid-Cells_images/Adding-Special-Controls-to-Grid-Cells_img12.png)



