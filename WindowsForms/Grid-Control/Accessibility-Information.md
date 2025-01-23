---
layout: post
title: Accessibility Information in Windows Forms Grid Control | Syncfusion®
description: Learn about Accessibility Information support in Syncfusion® Windows Forms Grid Control, its elements and more details.
platform: windowsforms
control: GridControl
documentation: ug
---
# Accessibility Information in Windows Forms Grid Control

## Technical standards

### Software applications and operating systems – detailed voluntary product accessibility template

<table>
<tr>
<th>
CRITERIA<br/><br/></th><th>
SUPPORTING FEATURES<br/><br/></th><th>
REMARKS<br/><br/></th><th>
EXPLANATIONS<br/><br/></th></tr>
<tr>
<td>
(a) When software is designed to run on a system that has a keyboard, product functions shall be executable from a keyboard, where the function itself or the result of performing a function can be discerned textually.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Essential<sup>®</sup> Grid supports keyboard navigation and the editing of text.<br/><br/></td><td>
Events can be handled in order to suppress and simulate all the keys. The events could be made to be dependent on the cell or over the grid.<br/><br/></td></tr>
<tr>
<td>
(b) Applications shall not disrupt or disable activated features of other products identified as accessibility features, where those features are developed and documented according to industry standards. Applications also shall not disrupt or disable activated features of any operating system that is identified as accessibility feature where the application programming interface for those accessibility features has been documented by the manufacturer of the operating system and is available to the product developer.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Essential<sup>®</sup> Grid component can be placed independent of other controls, so that no other product or item on the operating system would be disrupted or disabled.<br/><br/></td><td>
Unless the grid is bound to the shared data source with external control, the grid does not affect the attributes over the other. Refreshing the form can also be specified within the bounds of the grid object.<br/><br/></td></tr>
<tr>
<td>
(c) A well-defined on-screen indication of the current focus shall be provided to move among interactive interface elements as the input focus changes. The focus shall be programmatically exposed so that Assistive Technology can track focus and focus changes.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
The focusing indication is applied to the individual cells.<br/><br/></td><td>
The border of the current cell can be highlighted if the grid has the focus on the specific cell.<br/><br/></td></tr>
<tr>
<td>
(d) Sufficient information about user interface element including identity, operation and state of the element shall be available to Assistive Technology. When an image represents a program element, the information conveyed by the image must also be available in text.<br/><br/></td><td>
Not Applicable<br/><br/></td><td>
It is application-oriented, where the information to be provided on an individual component depends on the event of the grid.<br/><br/></td><td>
<br/><br/></td></tr>
<tr>
<td>
(e) When bitmap images are used to identify controls, status indicators, or other programmatic elements, the meaning assigned to those images shall be consistent throughout an application's performance.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Supports on design time to identify the control.<br/><br/></td><td>
The dependent property has been provided, where the property window will identify the control and specify its own attributes.<br/><br/></td></tr>
<tr>
<td>
(f) Textual information shall be provided through operating system functions for displaying text. The minimum information that shall be made available is text content, text input caret location and text attributes.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Runtime support is also provided in order to change the text and its style. Format could be modified with the settings.<br/><br/></td><td>
Validation on the text with runtime is fully supported. Format dialog can be wired to the cell in order to change the settings. From the caret position, the nearest character can be obtained from the underlying text.<br/><br/></td></tr>
<tr>
<td>
(g) Applications shall not override user selected contrast, color selections and other individual display attributes.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
The settings handled in the grid will not be affected by the application.<br/><br/></td><td>
Supports with the DPI setting, also the contrast does not affect with the variations.<br/><br/></td></tr>
<tr>
<td>
(h) When animation is displayed, the information shall be displayable in at least one non-animated presentation mode at the option of the user.<br/><br/></td><td>
Not Applicable<br/><br/></td><td>
This behavior is application oriented, where the animation provided in the cells will be in specific bounds and the rest of the area can be used to provide non-animated content.<br/><br/></td><td>
<br/><br/></td></tr>
<tr>
<td>
(i) Color coding shall not be used as the only means of conveying information, indicating an action, prompting a response or distinguishing visual element.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Essential<sup>®</sup> Grid controls provide complete functionality that conforms to the criteria.<br/><br/></td><td>
Essential<sup>®</sup> Grid abides by the default validation rules and constraints such that while entering invalid values in cells along with red color being highlighted, it prompts the respective system error message, which requires the user to rectify the invalid value to proceed further.<br/><br/></td></tr>
<tr>
<td>
(j) When a product permits a user to adjust color and contrast settings, a variety of color selections capable of producing a range of contrast levels shall be provided.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Fully supported for Essential<sup>®</sup> Grid controls internally.<br/><br/></td><td>
Depends on the component base of elements with default setting with the operating system. The window control acts to the specification and provides solid display with various contrasts.<br/><br/></td></tr>
<tr>
<td>
(k) Software shall not use flashing or blinking text, objects, or other elements having a flash or blink frequency greater than 2 Hz and lower than 55 Hz.<br/><br/></td><td>
Not Applicable<br/><br/></td><td>
The blinking support is provided in the Essential<sup>®</sup> Grid, but the frequency on data update has to be provided by the user at their end based on the need.<br/><br/></td><td>
<br/><br/></td></tr>
<tr>
<td>
(l) When electronic forms are used, the form shall allow people using Assistive Technology to access the information, field elements, and functionality required for completion and submission of the form, including all directions and cues.<br/><br/></td><td>
Not Applicable<br/><br/></td><td>
This criterion does not apply to Essential<sup>®</sup> Grid controls.<br/><br/></td><td>
<br/><br/></td></tr>
<tr>
<td>
(m) At least one mode of operation and information retrieval that does not require user vision shall be provided or support for Assistive Technology used by people who are blind or visually impaired shall be provided.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
<br/><br/></td><td>
Narrator support Essential<sup>®</sup> Grid satisfies this compliance in all scenarios except when we navigate the cells using arrow keys in the keyboard. The cell information cannot be detected through the ‘Narrator’. However, we can rectify this by exposing information through handling tooltip for the cells in the grid.<br/><br/></td></tr>
<tr>
<td>
(n) Where audio information is important for the use of a product, at least one mode of operation and information retrieval shall be provided in an enhanced auditory fashion or support for assistive hearing devices shall be provided.<br/><br/></td><td>
Not applicable<br/><br/></td><td>
Not applicable<br/><br/></td><td>
<br/><br/></td></tr>
<tr>
<td>
(o) At least one mode of operation and information retrieval that does not require user speech shall be provided or support for Assistive Technology used by people with disabilities shall be provided.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Can be achieved through existing cell-related APIs without requiring user speech.<br/><br/></td></tr>
<tr>
<td>
(p) At least one mode of operation and information retrieval that does not require fine motor control or simultaneous actions, and that is operable with limited reach and strength shall be provided.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Essential<sup>®</sup> Grid controls provide functionality that conform to the criteria.<br/><br/></td><td>
Can be achieved through existing cell-related APIs.<br/><br/></td></tr>
</table>

### Functional performance criteria

<table>
<tr>
<th>
CRITERIA<br/><br/></th><th>
SUPPORTING FEATURES<br/><br/></th><th>
REMARKS AND EXPLANATIONS<br/><br/></th></tr>
<tr>
<td>
(a) At least one mode of operation and information retrieval that does not require user vision shall be provided or support for Assistive Technology used by people who are blind or visually impaired shall be provided.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Syncfusion<sup>®</sup> Essential<sup>®</sup> Windows Grid satisfies the requirements for the blind or visually-impaired in several operations.<br/><br/></td></tr>
<tr>
<td>
(b) At least one mode of operation and information retrieval that does not require visual acuity greater than 20/70 shall be provided in audio and enlarged print output working together or independently, or support for Assistive Technology used by people who are visually impaired shall be provided.<br/><br/></td><td>
Not Applicable<br/><br/></td><td>
This criterion does not apply to Essential<sup>®</sup> Grid controls.<br/><br/></td></tr>
<tr>
<td>
(c) At least one mode of operation and information retrieval that does not require user-hearing shall be provided or support for Assistive Technology used by people who are deaf or hard of hearing shall be provided.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Essential<sup>®</sup> Grid controls have the support for retrieving information, which does not require user hearing.<br/><br/></td></tr>
<tr>
<td>
(d) Where audio information is important for the use of a product, at least one mode of operation and information retrieval shall be provided in an enhanced auditory fashion or support for assistive hearing devices shall be provided.<br/><br/></td><td>
Not Applicable<br/><br/></td><td>
Audio related functionality does not apply to Essential<sup>®</sup> Grid controls.<br/><br/></td></tr>
<tr>
<td>
(e) At least one mode of operation and information retrieval that does not require user-speech shall be provided or support for Assistive Technology used by people with disabilities shall be provided.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Existing grid specific APIs can be used to retrieve enough information without user speech.<br/><br/></td></tr>
<tr>
<td>
(f) At least one mode of operation and information retrieval that does not require fine motor control or simultaneous actions and that is operable with limited reach and strength shall be provided.<br/><br/></td><td>
Fully Supported<br/><br/></td><td>
Essential<sup>®</sup> Grid controls provide functionality that conforms to these criteria.<br/><br/></td></tr>
</table>
For more information on accessibility features of Syncfusion<sup>®</sup> products, visit Syncfusion’s accessibility web site at <http://www.syncfusion.com/accessibility>.

