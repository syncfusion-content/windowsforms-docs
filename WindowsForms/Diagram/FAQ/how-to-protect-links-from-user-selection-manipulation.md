---
layout: post
title: How To Protect Links From User Selection  Manipulation | Syncfusion®
description: Learn how to prevent users from selecting or manipulating links by using the EditStyle class to set the Enabled property to false, ensuring protection.





platform: windowsforms
control: Diagram
documentation: ug
---

# How To Protect Links From User Selection / Manipulation

You can protect links from user selection / manipulation by making use of the EditStyle class. By setting the Enabled property of the EditStyle class to _false_, you can disable the selection of a node link.


{% tabs %}

{% highlight c# %}

//Creating Line connector.

LineConnector conn = new LineConnector(new PointF(1, 1), new PointF(2, 2));

//Disabling selection of the line connector.

conn.EditStyle.Enabled = false;

{% endhighlight %}

{% highlight vbnet %}

'Creating Line connector.

Dim conn As LineConnector = New LineConnector(New PointF(1, 1), New PointF(2, 2))

'Disabling selection of the line connector.

conn.EditStyle.Enabled = False

{% endhighlight %}

{% endtabs %}

