# Set Shell zsh
Set Shell nu

# WindowBar
Set WindowBar Colorful

# You'll likely want to add a Margin + MarginFill if you use BorderRadius.
Set Margin 20
Set MarginFill "#674EFF"
Set BorderRadius 10

# Set up a 1200x600 terminal with 46px font.
# Set FontFamily "Monoflow"
Set FontSize 15
Set Width 1200
Set Height 627

# Where should we write the GIF?
Output tools/nu-example.gif

Hide
Type "cd ~ | clear"
Enter
Sleep 200ms
Show

# Type a command in the terminal.
Type "ls | where size > 4kb"

# Pause for dramatic effect...
Sleep 500ms

# Run the command by pressing enter.
Enter

# Admire the output for a bit.
Sleep 2s