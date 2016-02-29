---
layout: post
title: How-to-improve-the-performance-of-CalcEngine- | Windows Forms | Syncfusion
description: how to improve the performance of calcengine ?
platform: windowsforms
control: Calculate
documentation: ug
---

# How to improve the performance of CalcEngine ?

By default, CalcEngine calculate the formulas quickly. You can improve the calculation speed by disabling the RethroLibraryException in CalcEngine. It prevents the exception in calculation and return the proper error string. The following code example explains how to increase the performance of CalcEngine. 



{% highlight c# %}



       // It returns the errorstring instead of exception while computing any invalid formula arguments.

            this.calcEngine.RethrowLibraryComputationExceptions = false;

            // It returns the errorstring instead of exception while computing any invalid formula or namedRanges.

            this.calcEngine.RethrowParseExceptions = false;



            // It compute the nested IF formulas quickly

            this.calcEngine.AllowShortCircuitIFs = true;

            // It avoid the cirecular exception and returns the proper error string.

            this.calcEngine.ThrowCircularException = false;



            /// If you enter a formula like "=(1+2)(9+8)", Essential Calculate will compute this formula as 17, ignoring the dangling

            /// 3 value on its calculation stack. If you want this situation flagged as a Invalid Formula, set this CheckDanglingStack property

            /// to true. The default value is false for backward compatibility purposes.

            this.calcEngine.CheckDanglingStack = false;





{% endhighlight %}





{% highlight vbnet %}






    ' It returns the errorstring instead of exception while computing any invalid formula arguments.

        Me.calcEngine.RethrowLibraryComputationExceptions = False

        ' It returns the errorstring instead of exception while computing any invalid formula or namedRanges.

        Me.calcEngine.RethrowParseExceptions = False



        ' It compute the nested IF formulas quickly

        Me.calcEngine.AllowShortCircuitIFs = True

        ' It avoid the cirecular exception and returns the proper error string.

        Me.calcEngine.ThrowCircularException = False



        ''' If you enter a formula like "=(1+2)(9+8)", Essential Calculate will compute this formula as 17, ignoring the dangling

        ''' 3 value on its calculation stack. If you want this situation flagged as a Invalid Formula, set this CheckDanglingStack property

        ''' to true. The default value is false for backward compatibility purposes.

        Me.calcEngine.CheckDanglingStack = False





{% endhighlight %}



