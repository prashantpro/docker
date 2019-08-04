sudo certbot certonly --standalone -d dev.incept.infypedia.org


sudo cp /etc/letsencrypt/live/dev.incept.infypedia.org/* /opt/infibeam/docker-volumes/gitlab-ce/config/ssl/

