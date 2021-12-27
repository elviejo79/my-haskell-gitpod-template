FROM gitpod/workspace-base

RUN sudo apt-get update && sudo apt-get install -y haskell-platform
RUN sudo curl -sSL https://get.haskellstack.org/ | sh
RUN sudo apt-get install -y nodejs npm
RUN wget https://github.com/jgm/pandoc/releases/download/2.9.2.1/pandoc-2.9.2.1-1-amd64.deb && sudo dpkg -i pandoc-2.9.2.1-1-amd64.deb
RUN sudo apt-get install inotify-tools
RUN sudo apt-intsall tmux
RUN sudo apt-install python3-pip
RUN pip install --user entangled-filters
RUN pip install --user cookiecuter
RUN npm install -g browser-sync
RUN wget https://github.com/dhall-lang/dhall-haskell/releases/download/1.40.2/dhall-1.40.2-x86_64-linux.tar.bz2 && tar --extract --bzip2 --file dhall-json-*-x86_64-linux.tar.bz2 && sudo cp ./bin/dhall-to-json /usr/local/bin
RUN wget https://github.com/entangled/entangled/releases/download/v1.2.4/entangled-1.2.4-x86_64-GNU-Linux.tar.xz && tar --extract --file entangled-1.2.4-x86_64-GNU-Linux.tar.xz && sudo cp ./entangled-1.2.4-x86_64-GNU-Linux/* /usr/local/
