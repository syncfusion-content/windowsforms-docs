---
layout: post
title: Overview
description: overview
platform: windowsforms
control: Editors Package
documentation: ug
---

# Frequently Asked Questions

This section illustrates the solutions for various task-based queries about the control.

## How to display the scrollbars always, irrespective of the number of items

The scrollbar can be always made visible, irrespective of the number of items, present in it, by setting ScrollAlwaysVisible property to true. 

{%highlight c#%}



this.fontListBox1.ScrollAlwaysVisible = true;

{%endhighlight%}


{%highlight vbnet%}



Me.fontListBox1.ScrollAlwaysVisible = True

{%endhighlight%}