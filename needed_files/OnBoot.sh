echo "ipv6 interface : $(netinfo --ipv6name) - $(netinfo --ipv6addr)"
echo "ipv4 interface : $(netinfo --ipv4name) - $(netinfo --ipv4addr)"
netinfo --taygaconf $TAYGA_POOL_ADDR $TAYGA_POOL_NET
