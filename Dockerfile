FROM centos:centos7.9.2009
RUN rm  /etc/yum.repos.d/CentOS-Base.repo
COPY CentOS-Base.repo epel.repo /etc/yum.repos.d/
RUN yum makecache && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7-aarch64 && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
# 安装常用的开发工具和库
RUN yum groupinstall "Development Tools" -y
# 安装常用开发库
RUN yum install -y openssl-devel xz-devel libffi-devel  sqlite-devel readline-devel  bzip2-devel  gcc-c++  curl-devel expat-devel gettext-devel openssl-devel zlib-devel openssl11 openssl11-devel
RUN yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel libffi-devel xz-devel
# 安装python 需要的常见的库
#RUN  yum install -y gdbm-devel db4-devel libpcap-devel xz-devel expat-devel

