FROM cheggwpt/alpine:3.5

# install ruby basic packages
# clean up the apk cache (no-cache still caches the indexes)
# Make the app directory
# install the fake sqs gem without docs
RUN	apk --update --no-cache add \
	--virtual .basic_ruby ruby ruby-bundler && \
	rm -rf /var/cache/apk/* && \
	update-ca-certificates
