---
layout: post
title: Banner-Cells
description: banner cells
platform: windowsform
control: Grid
documentation: ug
---

# Banner Cells

Banner cells are multiple cells spanning a single background image. An image to be displayed in the cell can be loaded on disk, by changing the BackgroundImage property for a cell in Property Grid and applying a Banner for the cell area, displaying the image. For a cell background color, Gradient style can be set. Custom cell backgrounds can be drawn by handling DrawCellBackground event. Banner cells can also be defined through a recurring pattern by handling QueryBanneredRange event.

The following screen shot shows an example of how multiple cells span a single background image to form banner cells.

![](Banner-Cells_images/Banner-Cells_img1.png)





Displaying Image using Banner Cells

The following code example illustrates how to display images by using banner cells:

 {% highlight c# %}



GridStyleInfo style;

style = grid[4, 3];

grid.BanneredRanges.Add(GridRangeInfo.FromTlhw(4, 3, 8, 3));

style.BackgroundImage = GetImage(@"common\Images\Grid\BannerCells\back1.jpg");

style.Text = "back1.jpg";

style.TextColor = Color.Red;

style.BackgroundImageMode = GridBackgroundImageMode.StretchImage;

{% endhighlight %}

{% highlight vbnet %}



Dim style As GridStyleInfo

style = grid(4, 3)

grid.BanneredRanges.Add(GridRangeInfo.FromTlhw(4, 3, 8, 3))

style.BackgroundImage = GetImage("common\Images\Grid\BannerCells\back1.jpg")

style.Text = "back1.jpg"

style.TextColor = Color.Red

style.BackgroundImageMode = GridBackgroundImageMode.StretchImage
{% endhighlight %}



