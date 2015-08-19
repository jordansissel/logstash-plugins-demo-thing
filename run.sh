for i in *; do
  docker build -t demo:$i $i
  docker kill $i
  docker rm $i
done

[ ! -d $HOME/data ] && mkdir $HOME/data

docker run -d -p 80:80 --name web demo:web
docker run -d --env-file ./docker.env --name pager demo:pager
docker run -d -v $HOME/data:/opt/elasticsearch/data --link pager:pager --name elasticsearch demo:elasticsearch
docker run -d --link elasticsearch:elasticsearch --name poller demo:poller
docker run -d -p 5601:5601 --link elasticsearch:elasticsearch --name kibana demo:kibana


