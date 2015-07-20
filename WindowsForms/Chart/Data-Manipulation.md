---
layout: post
title: Data-Manipulation
description: data manipulation
platform: WindowsForms
control: Chart
documentation: ug
---

# Data Manipulation

Essential Chart provides a series model implementation that works directly on top of grouped data. Filters, summaries and computed expressions are all supported in EssentialChart and users can easily add custom summaries and filters and have such data displayed in the chart.

Grouping Support

The enterprise version of Essential Chart includes Essential Grouping that allows EssentialChart to implement a series model that works directly on top of grouped data. All the key advantages of Essential Grouping carry over into thegrouping support in Essential Chart. Filters, summaries and computed expressions are all supported in EssentialChart. With EssentialChart, you are not restricted to predefined summaries or filters. You can easily add custom summaries and filters and have such data displayed in the chart.

The following image displays stock data that is grouped by symbol to calculate the total volume. The data contains discrete transaction details with symbol information, volume, and price. 

The following image displays the same data with data from transactions that occurred in the morning filtered out. Filtering is done entirely in the grouping engine and the data changes are reflected in the chart. You will never be looking at data that is a filtered and grouped copy. Instead, you are always working with live data with the grouping layer provided by the grouping engine. Any changes made in the underlying data will be immediately reflected in the chart. 





{{ '![](Data-Manipulation_images/Data-Manipulation_img1.png)' | markdownify }}
{:.image }




_Figure_ _364__: Grouped Data with Filtering_



Essential Grid Interaction

Essential Chart offers great interaction capabilities with Essential Grid. You can use a common data model for the grid and chart. The grid can also serve as a data model for the chart, as shown in the following image. Selected columns are automatically mapped into the chart. All it takes, is a few lines of code to implement a model that adapts the data in question (in this case grid cells) for display in the chart.





{{ '![](Data-Manipulation_images/Data-Manipulation_img2.png)' | markdownify }}
{:.image }




_Figure_ _365__: Essential Chart with Essential Grid_

