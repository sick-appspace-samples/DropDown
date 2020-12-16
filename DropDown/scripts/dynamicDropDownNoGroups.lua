-- Importing third party json module
local json = require("json")

Script.serveEvent("DropDown.OnNewValues", "OnNewValues")

local selection = 'value1'
local counter = 5

local entryList = {}
table.insert(entryList, "value1")
table.insert(entryList, "value2")
table.insert(entryList, "value3")

--@getBlockIDs():string
local function getBlockIDs()
  return json.encode(entryList)
end
Script.serveFunction("DropDown.getBlockIDs", getBlockIDs)


--@getSelection_dynamic():string
local function getSelection_dynamic()
  print("Got selection = " .. selection)
  return selection
end
Script.serveFunction("DropDown.getSelection_dynamic", getSelection_dynamic)

--@setSelection_dynamic(value:string):
local function setSelection_dynamic(value)
  print("set selection to = " .. value)
  selection = value
end
Script.serveFunction("DropDown.setSelection_dynamic", setSelection_dynamic)


--@extendTable():
local function extendTable()
  table.insert(entryList, "value" .. tostring(counter))
  counter = counter + 1
  local res = getBlockIDs()
  print("table extended:", res)
  Script.notifyEvent("OnNewValues", res)
end
Script.serveFunction("DropDown.extendTable", extendTable)