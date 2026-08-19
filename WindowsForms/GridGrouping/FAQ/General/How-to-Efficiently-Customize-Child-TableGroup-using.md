---
layout: post
title: Customize Child, Group in WinForms GridGroupingControl | Syncfusion®
description: Efficiently customize child tables and groups in Syncfusion® Windows Forms GridGroupingControl, its custom engine implementation, initialization methods.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Customize Child Table and Group in WinForms GridGroupingControl

When customizing GridChildTable/GridGroup by deriving GridChildTable/GridGroup in the custom engine, OnInitializeVisibleCounters method and OnEnsureInitialized method must also be overridden along with other overrides. Otherwise, GridGroup calls into GridGroup extend methods and sometimes bypasses methods like IsChildVisible that you have overridden.

In OnInitializeVisibleCounters override, the total visible elements count, the total vertical scroll distance of elements in pixels and the total custom count of the visible elements must be calculated and set to CachedVisibleCount, CachedYamountCount and CachedVisibleCustomCount respectively. The OnEnsureInitialized override method must return false (i.e changes were detected and the object was not updated) to ensure that the object is up to data.

