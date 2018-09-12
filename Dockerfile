# 基础镜像信息
FROM ubuntu:16.04
# 创建目录
RUN mkdir -p /usr/local/ph
# 拷贝文件
ADD ./ /usr/local/ph
# 设置工作目录
WORKDIR /usr/local/ph
RUN apt-get update
RUN apt-get install -y python2.7
RUN apt-get install -y python-setuptools
RUN apt-get install -y python-pip
# 安装requirements
RUN pip install flask
CMD ["python", "./main.py"]
EXPOSE 5000

