i=0

while [[ ${i} -lt 200 ]]
do 
    curl localhost:5000/devops
    sleep 3
    echo ""
    ((i++))
done
