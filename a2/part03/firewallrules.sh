iptables -N LOG_AND_DROP
iptables -A LOG_AND_DROP -j LOG --log-prefix "Source host denied "
iptables -A LOG_AND_DROP -j DROP

iptables -A FORWARD -p tcp --dport 80 -s 10.229.97.0/24 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --dport 80 -s 10.229.100.97 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --dport 80 -s 10.229.11.0/24 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --dport 80 -s 10.229.100.11 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --dport 80 -s 10.229.0.0/16 -j ACCEPT

iptables -A FORWARD -p tcp --dport 8080 -s 10.229.97.0/24 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --dport 8080 -s 10.229.100.97 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --dport 8080 -s 10.229.11.0/24 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --dport 8080 -s 10.229.100.11 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --dport 8080 -s 10.229.0.0/16 -j ACCEPT

iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to 10.229.12.2:8080
iptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT --to 10.229.12.2:8080

iptables -A INPUT -p tcp --dport 21 -s 10.229.96.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 21 -s 10.229.100.96 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 21 -s 10.229.13.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 21 -s 10.229.100.13 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 21 -s 10.229.0.0/16 -j ACCEPT

iptables -A OUTPUT -p tcp --sport 21 -d 10.229.96.0/24 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 21 -d 10.229.100.96 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 21 -d 10.229.13.0/24 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 21 -d 10.229.100.13 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 21 -d 10.229.0.0/16 -j ACCEPT

iptables -A INPUT -p tcp --dport 20 -s 10.229.96.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 20 -s 10.229.100.96 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 20 -s 10.229.13.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 20 -s 10.229.100.13 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 20 -s 10.229.0.0/16 -j ACCEPT

iptables -A OUTPUT -p tcp --sport 20 -d 10.229.96.0/24 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 20 -d 10.229.100.96 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 20 -d 10.229.13.0/24 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 20 -d 10.229.100.13 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 20 -d 10.229.0.0/16 -j ACCEPT

iptables -A INPUT -p tcp --sport 1024: --dport 1024: -s 10.229.96.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --sport 1024: --dport 1024: -s 10.229.100.96 -j LOG_AND_DROP
iptables -A INPUT -p tcp --sport 1024: --dport 1024: -s 10.229.13.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --sport 1024: --dport 1024: -s 10.229.100.13 -j LOG_AND_DROP
iptables -A INPUT -p tcp --sport 1024: --dport 1024: -s 10.229.0.0/16 -j ACCEPT

iptables -A OUTPUT -p tcp --sport 1024: --dport 1024: -d 10.229.96.0/24 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 1024: --dport 1024: -d 10.229.100.96 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 1024: --dport 1024: -d 10.229.13.0/24 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 1024: --dport 1024: -d 10.229.100.13 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 1024: --dport 1024: -d 10.229.0.0/16 -j ACCEPT

iptables -A INPUT -p udp --dport 69 -s 10.229.96.0/24 -j LOG_AND_DROP
iptables -A INPUT -p udp --dport 69 -s 10.229.100.96 -j LOG_AND_DROP
iptables -A INPUT -p udp --dport 69 -s 10.229.1.0/24 -j LOG_AND_DROP
iptables -A INPUT -p udp --dport 69 -s 10.229.100.1 -j LOG_AND_DROP
iptables -A INPUT -p udp --dport 69 -s 10.229.0.0/16 -j ACCEPT

iptables -A OUTPUT -p udp --sport 69 -d 10.229.96.0/24 -j LOG_AND_DROP
iptables -A OUTPUT -p udp --sport 69 -d 10.229.100.96 -j LOG_AND_DROP
iptables -A OUTPUT -p udp --sport 69 -d 10.229.1.0/24 -j LOG_AND_DROP
iptables -A OUTPUT -p udp --sport 69 -d 10.229.100.1 -j LOG_AND_DROP
iptables -A OUTPUT -p udp --sport 69 -d 10.229.0.0/16 -j ACCEPT

iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 2221 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 2221 -j ACCEPT
iptables -A INPUT -p tcp --dport 2222 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 2222 -j ACCEPT

iptables -A INPUT -p icmp --icmp-type 8 -j ACCEPT
iptables -A OUTPUT -p icmp --icmp-type 8 -j ACCEPT
iptables -A INPUT -p icmp --icmp-type 0 -j ACCEPT
iptables -A OUTPUT -p icmp --icmp-type 0 -j ACCEPT

iptables -A FORWARD -p tcp --sport 8080 -d 10.229.96.0/24 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --sport 8080 -d 10.229.100.96 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --sport 8080 -d 10.229.13.0/24 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --sport 8080 -d 10.229.100.13 -j LOG_AND_DROP
iptables -A FORWARD -p tcp --sport 8080 -j ACCEPT

iptables -t nat -A PREROUTING -p tcp --sport 8080 -j DNAT

iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT DROP
