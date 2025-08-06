function fish_prompt
    set -l current_dir
    if test $PWD = $HOME
        set current_dir "~"
    else
        set current_dir (basename $PWD)
    end
    # printf '\033[38;2;220;215;186m%s - %s %% \033[0m' $USER $current_dir
    printf '%s - %s %% \033[0m' $USER $current_dir
end

