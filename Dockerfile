FROM chainmapper/walletbase-xenial-build

ENV GIT_COIN_URL    https://github.com/kech1004/kodcoin.git
ENV GIT_COIN_NAME   kodcoin 

RUN	git clone $GIT_COIN_URL $GIT_COIN_NAME \
	&& cd $GIT_COIN_NAME \
	&& chmod +x autogen.sh \
	&& chmod +x share/genbuild.sh \
	&& chmod +x src/leveldb/build_detect_platform \
	&& ./autogen.sh && ./configure \
	&& make \
	&& make install \
	&& mkdir /data \
	&& mkdir /data/.Kodcoin
	
#Add a config so you can run without providing a bitnodes.conf through a volume
COPY Kodcoin.conf /data/.Kodcoin/Kodcoin.conf

#rpc and mn port
EXPOSE 7857 7867

ENV HOME /data

COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh