#!/bin/bash

spec() {
    item=$1

    if [ "$SPEC_ALL" != "true" ]; then
        choose_spec "$item"
        if [ $? -eq 0 ]; then
            echo "Skip spec $item"
            return
        fi
    fi

    cat <<EOF
####################################################################################################
#                                          Spec $item
####################################################################################################
EOF
    ./spec/${item}.sh

    succ=$?

    result=""
    if [ $succ -eq 0 ]; then
        result="Succeeded"
        export SUCCEEDED="$SUCCEEDED $item"
    else
        result="Failed"
        export FAILED="$FAILED $item"
    fi

    cat <<EOF
####################################################################################################
#                                          $result $item
####################################################################################################
EOF
}

choose_interactive() {
    echo -n "Spec one by one (Y/n) >"
    read out
    if [ "$out" = "n" ]; then
        export SPEC_ALL="true"
    fi
}

choose_spec() {
    item=$1
    echo -n "Spec $item (Y/n) >"
    read out
    if [ "$out" = "n" ]; then
        return 0
    fi
    return 1
}

show_results() {
    echo "Succeeded:"
    echo $SUCCEEDED | xargs -n 1
    echo
    echo "Failed:"
    echo $FAILED | xargs -n 1
}

choose_interactive

spec docker

show_results
