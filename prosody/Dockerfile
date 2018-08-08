FROM prosody/prosody



USER root
RUN mkdir -p /var/run/prosody
RUN chown prosody:prosody /var/run/prosody

RUN mkdir -p /etc/prosody/conf.d
ADD ./localhost.cfg.lua /etc/prosody/conf.d/localhost.cfg.lua
RUN echo 'Include "/etc/prosody/conf.d/*.lua"' >> /etc/prosody/prosody.cfg.lua

USER prosody
EXPOSE 5222 5280 5347

