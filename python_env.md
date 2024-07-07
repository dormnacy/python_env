# install pyenv

	curl https://pyenv.run | bash
## setting pyenv 

	echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc 
 	echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
  	echo 'eval "$(pyenv init -)"' >> ~/.bashrc
## 换源

	 export PYTHON_BUILD_MIRROR_URL=https://jedore.netlify.app/tools/python-mirrors/
  	 pyenv update

    要是你的源是内部搭建的，你可能需要设置下面的变量 

	
 	export PYTHON_BUILD_MIRROR_URL_SKIP_CHECKSUM=1 

## 安装你需要的Python 版本

	pyenv install --list  #查看可以安装的python 版本
 	pyenv install 3.9.16 -vvv # 安装3.9.16 的python 
  	pyenv virtualenv 3.9.16 test #创建一个 Python 3.9.16 的虚拟环境，并将其命名为 test
        pyenv activate test # 激活刚刚创建的虚拟环境
	pyenv versions #可以使用以下命令来验证虚拟环境是否正确激活
        pyenv deactivate #退出虚拟环境
