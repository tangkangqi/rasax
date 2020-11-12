FROM sys_base:1.0
RUN pip3 install --upgrade pip==20.2.4 -i https://pypi.douban.com/simple
COPY requirements.txt /data/
WORKDIR "/data"
RUN pip install -r requirements.txt --extra-index-url https://pypi.rasa.com/simple -i https://pypi.doubanio.com/simple
#RUN pip3 install --upgrade pip -i https://pypi.douban.com/simple
#RUN pip3 install rasa -i https://pypi.douban.com/simple
#RUN pip3 install rasa-x --extra-index-url https://pypi.rasa.com/simple -i https://pypi.doubanio.com/simple
COPY app /data/app
WORKDIR "/data/app"
#CMD ["rasa", "x"]
EXPOSE 5002
#CMD ["python3", "main.py"]
