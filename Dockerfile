FROM mongodb_base:latest
MAINTAINER DangerGuy "13331432720@163.com"
LABEL version="1.0.0"

RUN mkdir /usr/local/mongodb/conf
ADD mongodb.conf /usr/local/mongodb/conf/

ENTRYPOINT [ "mongod" ]
CMD [ "-f", "/usr/local/mongodb/conf/mongodb.conf" ]

#创建管理员
#use admin
#db.createUser({user:"root",pwd:"123456",roles:[ { role: "root", db: "admin" } ]})

#登录
#db.auth("root","123456");
