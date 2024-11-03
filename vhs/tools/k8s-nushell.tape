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

# Where should we write the GIF?
Output tools/k8s-nushell.gif

Hide
Type "nu"
Enter
Type "source /home/gsantoro/workspace/demos/eck/functions/custom-functions.nu"
Enter
Type "clear"
Enter
Sleep 200ms
Show

# Type a command in the terminal.
Type "pods"
Enter
Sleep 700ms

Type "svcs"
Enter
Sleep 700ms

Type "svcs | where port > 5000"
Enter
Sleep 500ms

Type "svcs |  where { |it| ($it.creationTimestamp) > ((date now) - 3hr) }"
Enter
Sleep 500ms

Type "svcs | where clusterIP == 'None'"
Enter
Sleep 500ms