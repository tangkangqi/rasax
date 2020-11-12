FROM ubuntu:18.04
MAINTAINER tangkangqi
RUN apt-get update && apt-get install -y tmux vim git 
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak && echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse\n\
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse\n\
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse\n\
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse\n\
# 预发布软件源，不建议启用\n\
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse\n\
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse\n\
" > /etc/apt/sources.list
RUN apt-get update && apt-get install -y curl tree zsh 
RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && sed -ie 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/g' ~/.zshrc && echo "set -g default-shell /bin/zsh" > ~/.tmux.conf
#RUN echo "set -g default-shell /bin/zsh" > ~/.tmux.conf
#RUN apt-get update && apt-get install -y python3.6 python3-pip
RUN apt-get update && apt-get install -y python3.7 python3-pip
RUN pip3 install virtualenv
RUN git config --global user.email "darcy_tang@foxmail.com" && git config --global user.name "tangkangqi"
 
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone  
ENV LANG C.UTF-8
EXPOSE 8080
#ENV CONFIG_SERVER 10.21.63.4:14080
#ENV INTENT_SERVER ai-intent-detect-pre:8080
#ENV SEARCH_SERVER ha-es-pre:80
#ENV API_SERVER api-server-pre:8080
#ENV PERF_SERVER falcon-agent-hub.ai.svc.cluster.local:1988
#ENV FLUME_SERVER flume-agent-hub.ai.svc.cluster.local:1222
#ENV CACHE_SERVER ai-redis-public:6380
 
#CMD ["python3.6", "app.py", "--port=8080"]
