COMMIT_HASH=$(git log -1 --format=%h)
docker build -t $1:${COMMIT_HASH} -f Dockerfile . \
&& docker tag $1:${COMMIT_HASH} harbor.seacloud.garenanow.com/sail/$1:${COMMIT_HASH} \
    && docker push harbor.seacloud.garenanow.com/sail/$1:${COMMIT_HASH}
