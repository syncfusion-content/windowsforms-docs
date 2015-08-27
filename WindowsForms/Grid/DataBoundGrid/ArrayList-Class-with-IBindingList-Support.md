---
layout: post
title: ArrayList Class with IBindingList Support
description: ArrayList Class with IBindingList Support
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---

# ArrayList Class with IBindingList Support

Any change that you make to the grid will be posted back to the ArrayList. Keep in mind that you cannot add new items to the ArrayList through the grid. Instead, make sure that your data source supports the IBindingList interface and that it implements an appropriate AddNew method. The IBindingList support determines whether you can add new items and sort items as well as do searching for other basic aspects of list behavior. 

![](DataBound-Grid_images/DataBound-Grid_img9.jpeg)

Here is a minimal implementation of an ArrayList-derived class that also supports IBindingList. If you add this class to the above code and in the Form-Load change the ArrayList to PersonList, then you will be able to add new entries to your underlying PersonList data source by using the AppendRow at the bottom of the grid. Notice that the implementation of IBindingList.AddNew as well as the IBindingList.AllowNew property will indicate that new rows are allowed.

