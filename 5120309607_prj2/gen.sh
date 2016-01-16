# !bin/bash
#set -evx

if [[ $# = 0 ]];then
     echo "usage ./run.sh path/to/scc"
     exit 1
fi

scc="$1"

testcase=`find ./testcase -name *.sc`
for test in ${testcase}
do
    # echo $test
    echo $test 
    target=$(echo "${test}" | sed "s@.sc@_test.ll@" )
    $scc "${test}"  "${target}"
done


