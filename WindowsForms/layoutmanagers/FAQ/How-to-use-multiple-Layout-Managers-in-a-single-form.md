---
layout: post
title: How to use multiple Layout Managers in a single form | Syncfusion®
description: How to use multiple Layout Managers in a single form in Syncfusion® Windows Forms Layout Managers Package control and more details.
platform: windowsforms
control: Layout Managers Package
documentation: ug
---

# How to use multiple Layout Managers in a single form

This page explains How to use multiple Layout Managers in a single form and more details.

## How to use multiple Layout Managers in a single form?

It is very simple to use more than one Layout Manager in a single form.

* Drag-and-drop the FlowLayout Manager from the toolbox onto the form setting it as the Container control.

![Overview_img79](Overview_images/Overview_img79.jpeg)



* Add Panels as Child controls onto the form. The FlowLayout Manager will automatically layout the Child components as shown below.

![Overview_img80](Overview_images/Overview_img80.jpeg)



* Drag and drop the GridLayout Manager onto the Panel1 and add Button controls as Child controls. This will be arranged as follows.

![Overview_img81](Overview_images/Overview_img81.jpeg)



* We can also make Panel2 as the Container control for GridBagLayout Manager. This will arrange it's Child controls (Buttons) in a single row as shown below.

![Overview_img82](Overview_images/Overview_img82.jpeg)



* Finally make Panel3 as the Container control for the BorderLayout Manager which will arrange the Child controls (Buttons) as follows.

![Overview_img83](Overview_images/Overview_img83.jpeg)



* The final output of the application with all the Layout Managers arranged in the above said fashion is shown below.

![Overview_img84](Overview_images/Overview_img84.jpeg)



{% seealso %}

[Creating a Simple Layout](/windowsforms/layoutmanagers/creating-a-simple-layout), [How to programmatically nest various layouts?](/windowsforms/layoutmanagers/faq/how-to-programmatically-nest-various-layouts)

{% endseealso %}
