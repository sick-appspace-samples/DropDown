--[[----------------------------------------------------------------------------

  Application Name: DropDown

  Description:
  Implementation of drop-down controls in the UI with fixed and dynamic values.

  This sample shows the usage of drop-down controls on a device page.
  There are two possible options shown. The first is in setting fixed entries and values
  via the control settings of the UI-Builder. The second option is using a parsed string
  from the script to dynamically generate the entries and values.

  The configuration of the drop-down controls is shown in the 'DropDownSample' page
  in the DropDown.msdd.
  The served functions must also be defined in the app Properties. After serving
  functions or events, it is important to run the app once to make them selectable
  in the binding dialog of the UI-Builder.
  It must also be noted, that the dynamic entries defined in the script must be parsed
  to a proper JSON string in order to work. This is done in the PreSet of the
  getDynamic selection binding.

  As a bonus the first drop-down control with the fixed values is connected to a viewstack.
  Depending on the section different views are presented. This can be done in binding
  to an internal variable (see binding properties of the fixed drop-down control).

------------------------------------------------------------------------------]]
--Start of Global Scope---------------------------------------------------------

-- luacheck: globals gSetFixedSelection gGetDynamicSelection gSetDynamicSelection

Script.serveFunction( 'DropDown.setFixedSelection', 'gSetFixedSelection', 'string' )
Script.serveFunction( 'DropDown.getDynamicSelection', 'gGetDynamicSelection', '', 'string' )
Script.serveFunction( 'DropDown.setDynamicSelection', 'gSetDynamicSelection', 'string' )

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

-- function is called when an entry of the fixed drop-down control is selected
--@gSetFixedSelection(item:string)
function gSetFixedSelection(item)
  print(item)
end

-- function is called to get the entries for the dynamic drop-down control
--@gGetDynamicSelection():string
function gGetDynamicSelection()
  -- Defining the label entries
  local l1 = 'Choice 1'
  local l2 = 'Choice 2'
  local l3 = 'Choice 3'
  -- Defining the entry values
  local c1 = 'This is the first dynamic choice'
  local c2 = 'This is the second dynamic choice'
  local c3 = 'This is the third dynamic choice'

  -- Creation and returning of a string including the labels and values which are parsed
  -- using a function in the 'PreSet' field of the advanced binding properties.
  local dynParam = '[{"label":"' .. l1 .. '", "value":"' .. c1 .. '"},'..
                   ' {"label":"' .. l2 .. '", "value":"' .. c2 .. '"},'..
                   ' {"label":"' .. l3 .. '", "value":"' .. c3 .. '"}]'
  return dynParam
end

-- function is called when an entry of the dynamic drop-down control selected
--@gSetDynamicSelection(item:string)
function gSetDynamicSelection(item)
  print(item)
end

--End of Function and Event Scope------------------------------------------------
