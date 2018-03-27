main()
{
if [ -z "$*" ]
then 
  echo "No argument provided. Please provide create or delete"
  exit 0
fi
execute_k8s $1 $2
}

execute_k8s()
{
if [ $1 = "create" ] 
then
  for f in $(find *.yaml);
  do 
    envsubst < $f | kubectl create -f - ; 
  done
elif [ $1 = "delete" ] 
  for f in $(find *.yaml);
  do 
    envsubst < $f | kubectl delete -f - ; 
  done
fi
}

main $*

