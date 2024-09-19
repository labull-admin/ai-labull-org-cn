<<<<<<< Updated upstream
# midjourney-front2
=======


# How to run
export PUB_HOSTED_URL=https://pub.flutter-io.cn;
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
## install flutter environment
assume you have **fvm**, **Android Studio**, **Xcode** installed
```
fvm install 3.16.0
fvm use 3.16.0
export PATH="/Users/<your host>/fvm/versions/3.16.0/bin:$PATH"
fvm flutter --version
fvm flutter doctor

```
## flutter run
```
# install dependency
fvm flutter pub get
# build mappable files
dart run build_runner build
# run 
fvm flutter run -d <your device> --dart-define-from-file=env/common.json --dart-define-from-file=env/<env file>.json --web-port=5211

fvm flutter run -d chrome --dart-define-from-file=env/common.json --dart-define-from-file=env/dev.json --web-port=5211

you will need to run ngnix to server https://localhost -> http://localhost:5211

```

# How to build 
```
fvm flutter build <apk/web/windows/ios/linux> --dart-define-from-file=env/common.json --dart-define-from-file=env/<env file>.json
```


# Dockerize for Web(just a example, it cannot run, you can read the docker file and modify it)
## install docker
If in centOS like linux
```
sudo yum install -y docker
sudo service docker start
sudo chkconfig docker on
```
If in Ubuntu like linux

```
apt-get install docker
```
## install docker compose
```
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```
## build docker image
```
docker build -t ai-labull-org-cn:latest .
```
## run with docker compose
```
docker-compose up
```



>>>>>>> Stashed changes
