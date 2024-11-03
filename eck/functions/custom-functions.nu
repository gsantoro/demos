# custom_functions.nu

def pods [] {
    kubectl -n elastic-system get pods -o json 
    | from json 
    | get items 
    | flatten 
    | select namespace kind name phase creationTimestamp
    | into datetime creationTimestamp
    | sort-by creationTimestamp
    | reverse
}

def svcs [] {
    kubectl -n elastic-system get svc -o json
    | from json
    | get items
    | flatten
    | select kind name clusterIP ports.0.port ports.0.protocol type creationTimestamp
    | rename kind name clusterIP port protocol type creationTimestamp
    | into datetime creationTimestamp
    | sort-by creationTimestamp
    | reverse
}

# pods | where name =~ "^elastic-agent"
# 

# svcs | where port > 5000
# svcs |  where { |it| ($it.creationTimestamp) > ((date now) - 3hr) }
# svcs | where clusterIP == "None"


# Print a message to indicate the custom functions are loaded
echo "Custom functions loaded"