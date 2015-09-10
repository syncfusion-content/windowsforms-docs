---
layout: post
title: Overview | WindowsForms | Syncfusion
description: overview
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Overview

The GroupBar and GroupView controls abide by the container-client model and are designed to work in perfect synchronization with each other.

The GroupBar class implements a tab-type container control similar to the Windows Forms TabControl that can serve as a host for other Windows Forms controls. Each control in the GroupBar is represented by a GroupBar Item and navigation between the different controls is accomplished by selecting the corresponding GroupBar Item. Only the selected control is displayed at any particular time.

The GroupBar may be used in combination with the GroupView control to implement clones of some of the popular UI components such as the Microsoft OutlookBar and the Visual Studio .NET toolbox window.

![](Overview_images/Overview_img2.jpeg) 


The Essential ToolsGroupBar control displays multiple groups or tabs, each of which represents a client control that is hosted 
within the GroupBar. 

The primary function of the GroupBar is to serve as a container for a group of functionally related controls while allowing only
one selected control to be visible at any given time. Groups are implemented as instances of the GroupBarItem class and the 
collection can be accessed through the GroupBar.GroupBarItems property. 



