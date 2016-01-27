---
layout: post
title: How-to-draw-Gradient-Tabs | WindowsForms | Syncfusion
description: how to draw gradient tabs
platform: WindowsForms
control: TabsPackage
documentation: ug
---

# How to draw Gradient Tabs

You can handle the DrawItem Event of TabControlAdv and then set the gradient by using the LinearGradientBrush.

This can be done programmatically using the code snippet given below.

{% tabs %}

{% highlight c# %}



private void tabControlAdv1_DrawItem(object sender, Syncfusion.Windows.Forms.Tools.DrawTabEventArgs drawItemInfo)

{

   // Use LinearGradientBrush to set gradient. 

   // Use GetTabRect to get the rectangle of the tabs. 

   if (drawItemInfo.Index != this.tabControlAdv1.SelectedIndex)

   {

        // For the non-selected tabs. 

        lgb = new System.Drawing.Drawing2D.LinearGradientBrush(

        this.tabControlAdv1.GetTabRect(drawItemInfo.Index), Color.FromArgb(197, 197, 173), Color.FromArgb(228, 228, 212), LinearGradientMode.Horizontal);

   }

   else

   {

        // For the selected tab. 

        lgb = new System.Drawing.Drawing2D.LinearGradientBrush(

        this.tabControlAdv1.GetTabRect(drawItemInfo.Index), Color.White, Color.WhiteSmoke, LinearGradientMode.Horizontal);

   }



   float[] positions = { 0.0f, 0.05f, 0.95f, 1.0f };

   float[] factors = { 0.4f, 1.0f, 0.05f, 0.04f };

   // Blend Settings

   Blend blend = new Blend();

   blend.Factors = factors;

   blend.Positions = positions;

   lgb.Blend = blend;

   drawItemInfo.Graphics.FillRectangle(lgb, this.tabControlAdv1.GetTabRect(drawItemInfo.Index));

   lgb.Dispose();

   // Draw the default borders and interior (text and image). 

   drawItemInfo.DrawBorders();

   drawItemInfo.DrawInterior();

} 



        private void Form1_Load(object sender, EventArgs e)

        {

            this.tabControlAdv1.Padding = new Point(12, 12); 

        }



        private void tabPageAdv1_Click(object sender, EventArgs e)

        {



        }



        private void tabControlAdv1_SelectedIndexChanged(object sender, EventArgs e)

        {



        }



        private void tabPageAdv1_Click_1(object sender, EventArgs e)

        {



        }



        private void autoLabel1_Click(object sender, EventArgs e)

        {



        }

   }

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub tabControlAdv1_DrawItem(sender As Object, drawItemInfo As Syncfusion.Windows.Forms.Tools.DrawTabEventArgs)

' Use LinearGradientBrush to set gradient. 

' Use GetTabRect to get the rectangle of the tabs. 

Dim lgb As LinearGradientBrush
If drawItemInfo.Index <> Me.tabControlAdv1.SelectedIndex Then
' For the non-selected tabs. 


lgb = New System.Drawing.Drawing2D.LinearGradientBrush(Me.tabControlAdv1.GetTabRect(drawItemInfo.Index), Color.FromArgb(197, 197, 173), Color.FromArgb(228, 228, 212), LinearGradientMode.Horizontal)
Else

' For the selected tab. 


lgb = New System.Drawing.Drawing2D.LinearGradientBrush(Me.tabControlAdv1.GetTabRect(drawItemInfo.Index), Color.White, Color.WhiteSmoke, LinearGradientMode.Horizontal)
End If

Dim positions As Single() = {0F, 0.05F, 0.95F, 1F}

Dim factors As Single() = {0.4F, 1F, 0.05F, 0.04F}

' Blend Settings

Dim blend As New Blend()

blend.Factors = factors

blend.Positions = positions

lgb.Blend = blend

drawItemInfo.Graphics.FillRectangle(lgb, Me.tabControlAdv1.GetTabRect(drawItemInfo.Index))

lgb.Dispose()

' Draw the default borders and interior (text and image). 

drawItemInfo.DrawBorders()

drawItemInfo.DrawInterior()

End Sub

{% endhighlight %}

{% endtabs %}