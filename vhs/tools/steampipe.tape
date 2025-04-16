Set Shell zsh
# Set Shell nu

# WindowBar
Set WindowBar Colorful

# You'll likely want to add a Margin + MarginFill if you use BorderRadius.
Set Margin 20
Set MarginFill "#674EFF"
Set BorderRadius 10

# Set up a 1200x600 terminal with 46px font.
# Set FontFamily "Monoflow"
Set FontSize 14
Set Width 1200
Set Height 627

Hide
Type "cd ~/workspace/demos/steampipe_demo"
Enter
Sleep 200ms
Type "pwd"
Enter
Sleep 400ms
Type "clear"
Enter
Sleep 200ms
Show

# Type a command in the terminal.
Type "steampipe plugin install hackernews"
Enter
Sleep 300ms

# Type "steampipe query"
# Enter
# Sleep 700ms

# Type """select
#   score,
#   descendants as comments,
#   title
# from
#   hackernews_top
# where
#   type = 'story'
#   and lower(title) like '%sql%'
# order by
#   score desc;"""
# Enter
# Sleep 500ms