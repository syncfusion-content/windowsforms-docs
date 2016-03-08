---
layout: post
title: Serialization | Windows Forms | Syncfusion
description: serialization
platform: windowsforms
control: TabControlAdv 
documentation: ug
---

# Serialization

The `PersistTabState` property specifies the value which determines whether the TabState (ActivePage, TabOrder and Text) should be automatically persisted or not. The default value is set to False.


<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
PersistTabState</td><td>
Gets / sets the value which determines whether the TabState should be automatically persisted or not.</td></tr>
</table>


<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
TabControlAdv.SaveState()</td><td>
Persists the TabState (ActivePage, TabOrder and Text).</td></tr>
<tr>
<td>
TabControlAdv.LoadState()</td><td>
Gets / sets the previously serialized TabState using the 'AppStateSerializer' object. </td></tr>
</table>