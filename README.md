[![Python application test with Github Actions](https://github.com/YiLiang0821/coursera-cloud-computing/actions/workflows/main.yml/badge.svg)](https://github.com/YiLiang0821/coursera-cloud-computing/actions/workflows/main.yml)

# coursera-cloud-computing
## Deploy on GCP
1. Create a project and open cloud shell
2. Create virtual env for project 
```console
$ virtualenv ~/.coursera-cloud-computing
$ source ~/.coursera-cloud-computing/bin/activate
```
3. Connect to the Github, generate ssh key and paste it into Github
```console
$ ssh-keygen -t rsa
$ cat ~/.ssh/id_rsa.pub
```
4. git clone and use makefile and grant api call permission, then you can start your coding
```console
$ make install-gcp
$ gcloud auth list
```
5. Check flask code locally and open internal web interface
```console
$ python main.py
```
6. Run cloud native command 
Noted: You need to enable App Engine and Cloud Build API first. (You can disable it after practice)
```console
$ gcloud app deploy
$ <choose region>
```
7. Create trigger from Cloud Build (Continueous Delivery)
You will need to coneect to your Github, and go to setting to enable App Enginee Admin and Service Accounts!
Right now, the Cloud build will auto trigger when you push to the branch.
