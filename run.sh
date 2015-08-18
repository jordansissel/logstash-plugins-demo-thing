for i in *; do
  docker build -t demo:$i $i
  docker kill $i
  docker rm $i
done


docker run -d -p 80:80 --name web demo:web
docker run -d --name pager demo:pager
docker run -d --link pager:pager --name elasticsearch demo:elasticsearch
docker run -d --link elasticsearch:elasticsearch --name poller demo:poller



