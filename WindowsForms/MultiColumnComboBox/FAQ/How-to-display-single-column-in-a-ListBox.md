---
layout: post
title: How-to-display-single-column-in-a-ListBox
description: how to display single column in a listbox
platform: WindowsForms
control: Editors Package
documentation: ug
---

# How to display single column in a ListBox?

To turn off showing multiple columns in a ListBox, follow the below given steps.

1. Access the GridListControl and set its MultiColumn property to False.

   ~~~ cs

        // Turns off  multiple columns display.

		this.multiColumnBoundCombo.ListBox.MultiColumn = false;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

        ' Turns off  multiple columns display.

		Me.multiColumnBoundCombo.ListBox.MultiColumn = False

   ~~~
   {:.prettyprint }

2. The dropdown will then simply show the first column in the bound datasource (the combo's DisplayMember property will not be consulted here). Make sure that in your SQL query, the desired column to be shown in the drop-down is the first one.

