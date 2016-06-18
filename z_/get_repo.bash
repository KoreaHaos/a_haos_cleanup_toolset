function cache_git_creds() {
    echo "Caching creds."
    
}

function get_repo_n_put_in_folder() {
    
    if [ -z "$1" ]
    then
    {
        echo "No arg passed = no action done..."
        return;
    }
    else
    {
        github_username="$1"    
    }
    fi
    
    if [ -z "$2" ]
    then
    {
        echo "No arg passed = no action done..."
        return;
    }
    else
    {
        repo_name="$2"    
    }
    fi
    
    if [ -z "$3" ]
    then
    {
        echo "No arg passed = no action done..."
        return;
    }
    else
    {
        repo_host_url="$3"    
    }
    fi

    if [ -z "$4" ]
    then
    {
        folder_to_put_repo_in="$repo_name"
    }
    else
    {
        folder_to_put_repo_in="$3"
    }
    fi
    
    echo ""
    echo "Call to : get_repo_n_put_in_folder()"
    echo ""
    echo "GitHub User  = : $git_username"
    echo "Repo's host URL = : $repo_host_url"
    echo "Repo cloned  = : $repo_name"
    echo "Clone folder = : $folder_to_put_repo_in"
    echo ""
    
    #git clone "https://$git_username@$repo_host_url/$git_username/$repo_name.git" "$folder_to_put_repo_in"
    git clone "https://$git_username@$repo_host_url/$repo_name.git" "$folder_to_put_repo_in"
}

