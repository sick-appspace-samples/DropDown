Log.setLevel("INFO")

local selection = "1"

---@param sel string
local function setSelection(sel)
  Log.info('Static data dropdown without groups: Switching selection to ' .. sel)
  selection = sel
end
Script.serveFunction("DropDown.setSelection", setSelection)

---@return string selection
local function getSelection()
  Log.info('Static data dropdown without groups: UI is getting selection: ' .. selection)
  return selection
end
Script.serveFunction("DropDown.getSelection", getSelection)


