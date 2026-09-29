config.load_autoconfig()

# Adblock
c.content.blocking.enabled = True
c.content.blocking.method = "both"

# Key Binding
config.bind("cs", "config-source")
config.bind("ta", "open https://otakudesu.blog")
config.bind("gm", "open https://igg-games.com")
config.bind(";;", "open https://wiki.hypr.land")
config.bind("wb", "open https://github.com/Alexays/Waybar/wiki")
config.bind("1", "open https://man.archlinux.org/man/mako.5.en")
config.bind("cc", "open https://www.nerdfonts.com/cheat-sheet")
config.bind("ad", "adblock-update")
config.bind("ss", "open https://quickshell.org")
config.bind("bc", "open https://batchmanga.in")

# hint char
c.hints.chars = "asdjklhf"

# Default halaman web
c.url.default_page = "https://duckduckgo.com"
c.url.start_pages = "https://duckduckgo.com"

# Shortcut URL
config.set(
    "url.searchengines",
    {
        "DEFAULT": "https://www.google.com/search?q={}",
        "wa": "https://archlinux.org/packages/?q={}",
        "iggs": "https://igg-games.com/?s={}",
        "yt": "https://www.youtube.com/results?search_query={}",
        "otas": "https://otakudesu.blog/?s={}",
    },
)

# Scroll Bar
c.scrolling.bar = "never"

# Status Bar
c.statusbar.show = "never"
c.tabs.show = "never"
c.tabs.show_switching_delay = 400
c.window.transparent = True

# Color
c.colors.tabs.bar.bg = "transparent"
c.colors.tabs.even.bg = "transparent"
c.colors.tabs.even.fg = "white"
c.colors.tabs.odd.bg = "transparent"
c.colors.tabs.odd.fg = "white"
c.colors.tabs.selected.odd.bg = "transparent"
c.colors.tabs.selected.odd.fg = "cyan"
c.colors.tabs.selected.even.fg = "cyan"
c.colors.statusbar.normal.bg = "transparent"
c.colors.statusbar.progress.bg = "#371900"
c.colors.statusbar.command.bg = "#3B3B3B"
c.colors.statusbar.normal.fg = "white"
c.colors.webpage.bg = "#0a0e05"

# Dark mode
c.colors.webpage.darkmode.enabled = True

# Font
c.fonts.default_family = "JetBrainsMono Nerd Font"
c.fonts.default_size = "10pt"
c.fonts.contextmenu = "white"
