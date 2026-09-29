
-- https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/#rules

hl.workspace_rule({
    workspace = "4",
    on_created_empty = "kitty nchat"
})
hl.workspace_rule({
    workspace = "2",
    layout = "master"
})