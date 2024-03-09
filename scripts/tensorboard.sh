LOG_PATH=$1
echo "Attaching Tensorboard to ./notebooks/$LOG_PATH/"
docker compose exec -e CHAPTER=$CHAPTER -e EXAMPLE=$EXAMPLE app bash -c 'tensorboard --logdir "./logs/$LOG_PATH/" --host 0.0.0.0 --port $TENSORBOARD_PORT'