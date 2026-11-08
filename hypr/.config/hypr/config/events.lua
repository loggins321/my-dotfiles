hl.on("workspace.created", function(w)
	if w.id == 4 then
		hl.exec_cmd("kitty")
	end
end)
