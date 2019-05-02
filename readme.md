## DropDown
Implementation of drop-down controls in the UI with fixed and dynamic values.
### Description
This sample shows the usage of drop-down controls on a device page.
There are two possible options shown. The first is in setting fixed entries and values
via the control settings of the UI-Builder. The second option is using a parsed string
from the script to dynamically generate the entries and values. The configuration of the 
drop-down controls is shown in the 'DropDownSample' page in the DropDown.msdd.
The served functions must also be defined in the App Properties. After serving
functions or events, it is important to run the App once to make them selectable
in the binding dialog of the UI-Builder.
It must also be noted, that the dynamic entries defined in the script must be parsed
to a proper JSON string in order to work. This is done in the PreSet of the
getDynamic selection binding.  As a bonus the first drop-down control with the fixed values is connected to a viewstack.
Depending on the section different views are presented. This can be done in binding
to an internal variable (see binding properties of the fixed drop-down control)

### Topics
System, User-Interface, Sample, SICK-AppSpace