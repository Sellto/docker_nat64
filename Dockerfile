FROM alpine
ADD needed_files ./needed_files
RUN chmod -R +x /needed_files && needed_files/Install.sh
ENV \
TAYGA_POOL_ADDR="172.6.0.0" \
TAYGA_POOL_NET="/16"
CMD needed_files/OnBoot.sh
