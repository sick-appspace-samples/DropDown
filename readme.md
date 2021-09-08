## DropDown
Using DropDown element in the UI with fixed values.

### Description
This sample shows the usage of DropDown element on a device page. There are two options shown with static entries and values and one option with dynamic entries.
1. Options without group. DropDown entries are shown as a list and displayed on the same level. 
2. Options in OptionGroups. DropDown entries are shown grouped in different categories.
3. Options without group from a lua list which can change dynamically. The entries are all on the same level in this case. The entries can be changed by pressing the "Add options" button.

### How to Run
This sample can be run on the Emulator or on a device. After starting, the user interface can be seen at the DevicePage in AppStudio or by using a web browser.

### Implementation
The App consists of two pages. One for both static cases and one for the dynamic case. Additionally, there is a lua script for each case.

#### Static case
In the static case, the data is set directly in the UI, but the selection is stored with the help of a lua script, so that it is kept on reload. See "staticDropDownGroups.lua" or "staticDropDownNoGroups.lua" for the explicit implementation and consider the bindings of the elements for the information flow. (The stored value is only shown in the case of no groups after reload)

#### Dynamic case
In the dynamic case, all information handling, including setting up the data, is done with the help of the lua script "dynamicDropDownNoGroups.lua".

The function "getBlockIDs" encodes the data into a json format. The dropDown element in the UI is bound to this function and decodes the data with the help of a converter function.
Note that an external json module is needed for this case. This module was copied from https://github.com/rxi/json.lua/blob/master/json.lua into the script folder of the app and is included at the beginning of the script by
`local json = require("json")`.

### Topics
System, User-Interface, Sample, SICK-AppSpace
