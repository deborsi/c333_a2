iptables -N LOG_AND_DROP
iptables -A LOG_AND_DROP -j LOG --log-prefix "Source host denied "
iptables -A LOG_AND_DROP -j DROP

iptables -A INPUT -p tcp --dport 21 -s 10.229.96.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 21 -s 10.229.100.96 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 21 -s 10.229.13.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 21 -s 10.229.100.13 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 21 -s 10.229.0.0/16 -j ACCEPT

iptables -A INPUT -p tcp --dport 69 -s 10.229.96.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 69 -s 10.229.100.96 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 69 -s 10.229.1.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 69 -s 10.229.100.1 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 69 -s 10.229.0.0/16 -j ACCEPT

iptables -A INPUT -p tcp --dport 80 -s 10.229.97.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 80 -s 10.229.100.97 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 80 -s 10.229.11.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 80 -s 10.229.100.11 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 80 -s 10.229.0.0/16 -j ACCEPT

iptables -A INPUT -p tcp --dport 8080 -s 10.229.97.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 8080 -s 10.229.100.97 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 8080 -s 10.229.11.0/24 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 8080 -s 10.229.100.11 -j LOG_AND_DROP
iptables -A INPUT -p tcp --dport 8080 -s 10.229.0.0/16 -j ACCEPT

iptables -A INPUT -p tcp --dport 22 -j ACCEPT

iptables -A OUTPUT -p tcp --sport 8080 -s 10.229.96.0/24 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 8080 -s 10.229.100.96 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 8080 -s 10.229.13.0/24 -j LOG_AND_DROP
iptables -A OUTPUT -p tcp --sport 8080 -s 10.229.100.13 -j LOG_AND_DROP

iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to 10.229.12.2:8080
iptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT --to 10.229.12.2:8080

iptables -P INPUT DROP
