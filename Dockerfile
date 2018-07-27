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

#rpc and mn port
EXPOSE 7857 7867

ENV HOME /data

COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh /data/.Kodcoin Kodcoin.conf KOD Kodcoind