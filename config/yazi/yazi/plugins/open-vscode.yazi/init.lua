local function open_in_vscode(file)
  os.execute("code " .. file)
end

return {
  entry = function()
      local file = cx.active.current.hovered
      if file then
          open_in_vscode(file.url)
      end
  end
}
