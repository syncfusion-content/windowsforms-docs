---
layout: post
title: How to Efficiently Customize Child Table/Group using Custom Engine
description: how to efficiently customize child table/group using custom engine
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to Efficiently Customize Child Table/Group using Custom Engine.

When customizing GridChildTable/GridGroup by deriving GridChildTable/GridGroup in the custom engine, OnInitializeVisibleCounters method and OnEnsureInitialized method must also be overridden along with other overrides. Otherwise, GridGroup calls into GridGroup extend methods and sometimes bypasses methods like IsChildVisible that you have overridden.

In OnInitializeVisibleCounters override, the total visible elements count, the total vertical scroll distance of elements in pixels and the total custom count of the visible elements must be calculated and set to CachedVisibleCount, CachedYamountCount and CachedVisibleCustomCount respectively. The OnEnsureInitialized override method must return false (i.e changes were detected and the object was not updated) to ensure that the object is up to data.
