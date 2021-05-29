i=0
ret=()
for v in $@
do
  if [ $[i % $[CI_NODE_TOTAL]] = $[CI_NODE_INDEX] ] ; then
    ret+=($v)
  fi
  let i++
done

echo ${ret[@]}