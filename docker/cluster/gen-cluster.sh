INSTANCE_COUNT=$1

FILE="docker-compose.yml"
rm -rf $FILE

cat <<EOF >> $FILE
version: '2'
services:
EOF

for i in $(seq 1 $INSTANCE_COUNT); do
cat <<EOF >> $FILE
  app$i:
    container_name: App$i
    image: appprod
    ports: 
    - "5000"
EOF
done

cat <<EOF >> $FILE
  lb:
    container_name: LB
    image: lb-ng
    ports: 
    - "5000:80"
    links:
EOF

for i in $(seq 1 $INSTANCE_COUNT); do
cat <<EOF >> $FILE
    - "app$i"
EOF
done

#version: '2'
#services:
#  app1:
#    container_name: App1
#    image: appprod
#    ports:
#    - "5000"
#  app2:
#    container_name: App2
#    image: appprod
#    ports:
#    - "5000"
#    
#  lb:
#    container_name: LB
#    image: lb-ng
#    ports: 
#    - "5000:80"
#    links: 
#    - "app1"
#    - "app2"