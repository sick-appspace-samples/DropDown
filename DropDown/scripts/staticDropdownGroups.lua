Log.setLevel("INFO")

local selection = "o1g1"

--@setSelection(sel:string):
local function setSelection(sel)
  Log.info('Static data dropdown with groups: Switching selection to '.. sel)
  selection = sel
end
Script.serveFunction("DropDown.setSelectionGroups", setSelection)

--@getSelection():string
local function getSelection()
  Log.info('Static data dropdown with groups: UI is getting selection: '.. selection)
  return selection
end
Script.serveFunction("DropDown.getSelectionGroups", getSelection)
