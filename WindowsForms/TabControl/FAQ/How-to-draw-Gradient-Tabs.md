---
layout: post
title: How-to-draw-Gradient-Tabs | WindowsForms | Syncfusion®
description: how to draw gradient tabs
platform: windowsforms
control: TabsPackage
documentation: ug
---

# How to draw Gradient Tabs?

You can handle the DrawItem Event of [TabPageAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabPageAdv.html) and then set the gradient by using the [LinearGradientBrush](https://docs.microsoft.com/en-us/dotnet/api/system.windows.media.lineargradientbrush?view=netframework-4.7.2).

This can be done programmatically using the code snippet given below.

{% tabs %}

{% highlight C# %}


private void tabControlAdv1_DrawItem(object sender, Syncfusion.Windows.Forms.Tools.DrawTabEventArgs drawItemInfo)

{

   // Use LinearGradientBrush to set gradient. 

   // Use GetTabRect to get the rectangle of the tabs. 

   if (drawItemInfo.Index != this.tabControlAdv1.SelectedIndex)

   {

        // For the non-selected tabs. 

        linearBrush = new System.Drawing.Drawing2D.LinearGradientBrush(

        this.tabControlAdv1.GetTabRect(drawItemInfo.Index), Color.FromArgb(197, 197, 173), Color.FromArgb(228, 228, 212), LinearGradientMode.Horizontal);

   }

   else

   {

        // For the selected tab. 

        linearBrush = new System.Drawing.Drawing2D.LinearGradientBrush(

        this.tabControlAdv1.GetTabRect(drawItemInfo.Index), Color.White, Color.WhiteSmoke, LinearGradientMode.Horizontal);

   }



   float[] positions = { 0.0f, 0.05f, 0.95f, 1.0f };

   float[] factors = { 0.4f, 1.0f, 0.05f, 0.04f };

   // Blend Settings

   Blend blend = new Blend();

   blend.Factors = factors;

   blend.Positions = positions;

   linearBrush.Blend = blend;

   drawItemInfo.Graphics.FillRectangle(linearBrush, this.tabControlAdv1.GetTabRect(drawItemInfo.Index));

   linearBrush.Dispose();

   // Draw the default borders and interior (text and image). 

   drawItemInfo.DrawBorders();

   drawItemInfo.DrawInterior();

}    

  

{% endhighlight %}

{% highlight VB %}

Private Sub tabControlAdv1_DrawItem(sender As Object, drawItemInfo As Syncfusion.Windows.Forms.Tools.DrawTabEventArgs)

' Use LinearGradientBrush to set gradient. 

' Use GetTabRect to get the rectangle of the tabs. 

Dim linearBrush As LinearGradientBrush
If drawItemInfo.Index <> Me.tabControlAdv1.SelectedIndex Then
' For the non-selected tabs. 


linearBrush = New System.Drawing.Drawing2D.LinearGradientBrush(Me.tabControlAdv1.GetTabRect(drawItemInfo.Index), Color.FromArgb(197, 197, 173), Color.FromArgb(228, 228, 212), LinearGradientMode.Horizontal)
Else

' For the selected tab. 


linearBrush = New System.Drawing.Drawing2D.LinearGradientBrush(Me.tabControlAdv1.GetTabRect(drawItemInfo.Index), Color.White, Color.WhiteSmoke, LinearGradientMode.Horizontal)
End If

Dim positions As Single() = {0F, 0.05F, 0.95F, 1F}

Dim factors As Single() = {0.4F, 1F, 0.05F, 0.04F}

' Blend Settings

Dim blend As New Blend()

blend.Factors = factors

blend.Positions = positions

linearBrush.Blend = blend

drawItemInfo.Graphics.FillRectangle(linearBrush, Me.tabControlAdv1.GetTabRect(drawItemInfo.Index))

linearBrush.Dispose()

' Draw the default borders and interior (text and image). 

drawItemInfo.DrawBorders()

drawItemInfo.DrawInterior()

End Sub

{% endhighlight %}

{% endtabs %}
