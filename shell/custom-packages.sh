#!/bin/bash
# ============= imm仓库外的第三方插件==============
# ============= 若启用 则打开注释 ================
# ============= 但此文件也可以处理仓库内的软件去留 本质上是做了一个PACKAGES字符串的拼接 ================

# 各位注意 如果你构建的固件是硬路由 此文件的注释要酌情考虑是否打开 因为硬路由的闪存空间有限 若构建出来过大或者构建失败 记得调整本文件的注释
# 考虑到istore商店的集成与否 属于高频操作 故 目前已将集成store的操作放置在 工作流的UI 选项 用户自行勾选 则集成  不勾选则不集成 以减少修改此文件的次数

# 新增Run安装器 用于快速安装makeself打包的run文件 目前和quickfile的nginx配置冲突 请勿同时集成quickfile
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-run"
# CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-ppp xl2tpd ppp ppp-mod-pppol2tp kmod-l2tp kmod-l2tp-ip kmod-pppol2tp"
# 首页和网络向导
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-quickstart-zh-cn"
# 新增非常好用的文件管理器 sbwml/luci-app-quickfile （luci 23版本不支持 勿集成）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES bash quickfile luci-app-quickfile luci-i18n-quickfile-zh-cn"
# 高级卸载 by YT Vedio Talk
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-uninstall"
# 极光主题 by github eamonxg
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"
# 去广告adghome
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-adguardhome"
# 代理相关
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openvpn-server luci-i18n-openvpn-server-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openvpn-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dae-zh-cn"
# 已更新到daed 1.28.0 版本
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-daed-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria luci-i18n-passwall-zh-cn"
# passwall2 已更新到26.5.1
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria kmod-nft-socket kmod-nft-tproxy luci-app-passwall2 luci-i18n-passwall2-zh-cn"
# CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash luci-compat kmod-tun kmod-inet-diag kmod-nft-tproxy bash curl ip-full unzip"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-homeproxy-zh-cn"
# 新版ssrp 支持mihomo
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES kmod-nft-tproxy kmod-nft-socket xray-core naiveproxy luci-app-ssr-plus luci-i18n-ssr-plus-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nikki-zh-cn"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-nekobox"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES momo luci-app-momo luci-i18n-momo-zh-cn"
# 新增 clashoo by kenzok8 注意若集成clashoo 则不能集成nikki 目前它们俩配置冲突
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES clashoo luci-app-clashoo luci-i18n-clashoo-zh-cn"
# VPN
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-wireguard"
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-tailscale-community luci-i18n-tailscale-community-zh-cn"
# 分区扩容 by sirpdboy 
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"
# 看门狗watchdog by sirpdboy
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-watchdog luci-i18n-watchdog-zh-cn"
# 酷猫主题 by sirpdboy 
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-kucat"
# 进阶设置 by sirpdboy 
# 当luci-app-advancedplus插件开启时 需排除冲突项 luci-app-argon-config和luci-i18n-argon-config-zh-cn 减号代表排除
# 若要集成此插件请注意相关issue:https://github.com/wukongdaily/ImmortalWrt-ImageBuilder/issues/521
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-advancedplus luci-i18n-advancedplus-zh-cn -luci-app-argon-config -luci-i18n-argon-config-zh-cn"
# MosDNS
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-mosdns luci-i18n-mosdns-zh-cn"
# Turbo ACC 网络加速
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-turboacc"
# 应用过滤 openappfilter.com
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-appfilter luci-i18n-appfilter-zh-cn"
# Lucky大吉 
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-lucky lucky"
# 集客AC
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-gecoosac gecoosac"
# 任务设置
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-taskplan luci-i18n-taskplan-zh-cn"
# Easytier
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES easytier luci-app-easytier"
# 统一文件共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES webdav2 luci-app-unishare"
# IPSec VPN 服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ipsec-vpnd-zh-cn"
# Bandix流量监控 by timsaya
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-bandix luci-i18n-bandix-zh-cn"
# IPTV 流媒体转发服务器 - rtp2httpd by stackia
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-rtp2httpd luci-i18n-rtp2httpd-zh-cn"
# 静态文件服务器dufs
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dufs-zh-cn"

#===========================以下imm仓库内的软件==============================↓
# ========== 1. 内网穿透与远程访问 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cloudflared-zh-cn"
#  Cloudflare Tunnel 客户端，无公网IP也能把内网服务暴露到外网
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frpc-zh-cn"
#  frp 内网穿透客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frps-zh-cn"
#  frp 内网穿透服务端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-n2n-zh-cn"
#  n2n 二层 P2P VPN 组网
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-natmap-zh-cn"
#  NAT 打洞/端口映射，无公网IP时映射 TCP/UDP 端口
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ngrokc-zh-cn"
#  ngrok 内网穿透客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nps-zh-cn"
#  NPS 内网穿透（带 Web 管理面板）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pagekitec-zh-cn"
#  PageKite 客户端，把本地端口公开到公网域名
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rustdesk-server-zh-cn"
#  自建 RustDesk 远程桌面的中继/注册服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sshtunnel-zh-cn"
#  基于 SSH 的端口转发隧道
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ttyd-zh-cn"
#  浏览器里的 Web 终端（网页执行命令行）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xfrpc-zh-cn"
#  frp 的 C 语言精简版客户端（占用低）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-zerotier-zh-cn"
#  ZeroTier 虚拟局域网（SD-WAN 组网）

# ========== 2. 代理 / VPN / 加速 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eoip-zh-cn"
#  EoIP 以太网 over IP 隧道（类 MikroTik 二层隧道）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-gost-zh-cn"
#  多协议代理与端口转发工具
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ipsec-vpnd-zh-cn"
#  IPsec/IKEv2 VPN 服务端（strongSwan）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-microsocks-zh-cn"
#  超轻量 SOCKS5 代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ocserv-zh-cn"
#  OpenConnect VPN 服务端（兼容 Cisco AnyConnect）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-privoxy-zh-cn"
#  带过滤/去广告功能的 HTTP 代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-softethervpn-zh-cn"
#  SoftEther VPN 服务端（多协议 VPN）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-squid-zh-cn"
#  企业级 HTTP 缓存代理（可做透明代理）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tinyproxy-zh-cn"
#  轻量 HTTP 代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tor-zh-cn"
#  Tor 匿名网络客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-v2raya-zh-cn"
#  V2Ray/Xray 的 Web 图形化管理面板
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xlnetacc-zh-cn"
#  迅雷快鸟，宽带提速（部分运营商有效）

# ========== 3. DNS 与域名 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-zh-cn"
#  经典动态域名解析客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-go-zh-cn"
#  DDNS 客户端（Go 版，支持众多 DNS 服务商）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-https-dns-proxy-zh-cn"
#  DoH 加密 DNS 代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nextdns-zh-cn"
#  NextDNS 客户端（加密 DNS + 云端过滤）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-smartdns-zh-cn"
#  智能 DNS：多上游并发、CDN 优选、广告过滤
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-unbound-zh-cn"
#  递归 DNS 解析器，支持 DNS over TLS

# ========== 4. 安全防护与证书 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acme-zh-cn"
#  Let's Encrypt 证书自动申请与续期
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-zh-cn"
#  经典 DNS 广告拦截（旧版）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-fast-zh-cn"
#  广告拦截快速新版（推荐替代 adblock）
# CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-arpbind-zh-cn"
#  IP-MAC 绑定，防 ARP 欺骗/掉线
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-banip-zh-cn"
#  批量 IP 黑名单/地理封锁（威胁情报、国家/ASN 屏蔽）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bcp38-zh-cn"
#  BCP38 反地址欺骗（过滤伪造源地址、bogon）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-clamav-zh-cn"
#  ClamAV 杀毒引擎（扫描共享文件）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-crowdsec-firewall-bouncer-zh-cn"
#  CrowdSec 防火墙联动，按社区情报自动封禁
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dynapoint-zh-cn"
#  动态防火墙规则/端口按需放行（客户端联动）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-fwknopd-zh-cn"
#  单包授权 SPA（端口敲门，隐藏服务端口）

# ========== 5. 文件共享与存储 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cifs-mount-zh-cn"
#  挂载远程 SMB/CIFS 共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-diskman-zh-cn"
#  磁盘管理：分区、格式化、挂载
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-zh-cn"
#  Web 文件管理器（旧版）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-go-zh-cn"
#  Web 文件管理器（Go 重写，推荐）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filemanager-zh-cn"
#  LuCI 内置文件管理（浏览/编辑/上传）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-hd-idle-zh-cn"
#  硬盘空闲自动休眠（省电、延长寿命）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ksmbd-zh-cn"
#  内核态 SMB 文件共享（省资源、性能好）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mosquitto-zh-cn"
#  MQTT 消息服务器（IoT 通信中枢）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nfs-zh-cn"
#  NFS 网络文件共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openlist-zh-cn"
#  OpenList（AList 分支）网盘聚合与 WebDAV 挂载
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-radicale-zh-cn"
#  CalDAV/CardDAV 服务器（日历、通讯录同步）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rclone-zh-cn"
#  云盘同步/挂载（支持数十种网盘）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-samba4-zh-cn"
#  SMB/CIFS 共享服务端（Samba4）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-syncthing-zh-cn"
#  P2P 文件同步
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vsftpd-zh-cn"
#  FTP 服务器

# ========== 6. 下载工具 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-amule-zh-cn"
#  aMule 电驴（eD2k/Kad）下载
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-aria2-zh-cn"
#  多协议下载器（HTTP/FTP/BT/磁力）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qbittorrent-zh-cn"
#  qBittorrent BT/PT 下载客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-transmission-zh-cn"
#  Transmission BT 客户端（轻量）

# ========== 7. 流量控制 / 多线 / 上网管控 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-appfilter-zh-cn"
#  应用/协议过滤，限制指定应用联网
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eqos-zh-cn"
#  基于 IP 的简单限速
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-haproxy-tcp-zh-cn"
#  HAProxy TCP 负载均衡/转发
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-keepalived-zh-cn"
#  VRRP 高可用，双机热备虚拟 IP
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mwan3-zh-cn"
#  多 WAN 负载均衡与故障切换
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nft-qos-zh-cn"
#  基于 nftables 的 QoS/限速
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pbr-zh-cn"
#  策略路由（按域名/IP 分流走不同出口）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qos-zh-cn"
#  传统 QoS 流量分类限速（较老，建议用 sqm）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sqm-zh-cn"
#  智能队列管理，治缓冲膨胀、降延迟（推荐）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-upnp-zh-cn"
#  UPnP IGD / NAT-PMP 自动端口映射

# ========== 8. IPTV / 组播 / 媒体娱乐 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3cat-zh-cn"
#  3Cat（加泰罗尼亚电视台）视频源插件
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-airplay2-zh-cn"
#  AirPlay2 音频接收端（路由器当无线音箱）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dump1090-zh-cn"
#  ADS-B 航班信号接收（配合 RTL-SDR）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-minidlna-zh-cn"
#  DLNA/UPnP 媒体服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-msd_lite-zh-cn"
#  组播转单播（IPTV，udpxy 的轻量替代，推荐）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-music-remote-center-zh-cn"
#  音乐远程控制中心（手机控制路由器播放）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-omcproxy-zh-cn"
#  IGMP/MLD 组播代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oscam-zh-cn"
#  智能卡读卡服务（卫星/DVB 加密卡共享）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ps3netsrv-zh-cn"
#  向 PS3 提供游戏镜像共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-spotifyd-zh-cn"
#  Spotify Connect 接收端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-udpxy-zh-cn"
#  组播转单播（IPTV 经典方案）

# ========== 9. 无线 / Mesh / 漫游 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bmx7-zh-cn"
#  BMX7 无线 Mesh 路由协议
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dawn-zh-cn"
#  802.11k/v/r 无线漫游与 AP 间负载均衡
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dcwapd-zh-cn"
#  动态信道宽度/功率调整守护进程
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-zh-cn"
#  OLSR Mesh 路由主程序
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-services-zh-cn"
#  OLSR 附加网络服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-viz-zh-cn"
#  OLSR 拓扑可视化
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-travelmate-zh-cn"
#  旅行模式：自动连接已知 WiFi 并转发热点
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usteer-zh-cn"
#  客户端漫游引导（802.11k/v）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wifischedule-zh-cn"
#  定时开关 WiFi

# ========== 10. 认证 / 校园网 / 热点门户 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bitsrunlogin-go-zh-cn"
#  北京理工大学校园网自动登录
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cd8021x-zh-cn"
#  802.1X 认证客户端（校园/企业网）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-coovachilli-zh-cn"
#  强制门户（Captive Portal）认证与计费
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-minieap-zh-cn"
#  锐捷等 802.1X 校园网客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pppoe-relay-zh-cn"
#  PPPoE 中继，把 PPPoE 会话透传给下级设备
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pppoe-server-zh-cn"
#  PPPoE 服务端（当宽带接入服务器）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rp-pppoe-server-zh-cn"
#  RP-PPPoE 服务端（另一种 PPPoE 服务实现）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-splash-zh-cn"
#  热点登录页（NoDogSplash）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sysuh3c-zh-cn"
#  中山大学 H3C 校园网认证
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ua2f-zh-cn"
#  修改 UA 防检测（绕过校园网多设备限制）

# ========== 11. 硬件外设 / 通信模块 / 状态采集 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3ginfo-lite-zh-cn"
#  3G/4G 模块信息（信号、运营商、速率）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-battstatus-zh-cn"
#  电池/UPS 供电状态监控
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dsl-zh-cn"
#  DSL/PPPoE 线路状态查看
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-irqbalance-zh-cn"
#  多核中断负载均衡
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lldpd-zh-cn"
#  LLDP 邻居发现（拓扑识别）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mjpg-streamer-zh-cn"
#  USB 摄像头 MJPEG 视频流
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-modemband-zh-cn"
#  4G/5G 模块锁频段
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-netdata-zh-cn"
#  实时系统监控面板（丰富图表）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nlbwmon-zh-cn"
#  按客户端 IP 统计流量
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nut-zh-cn"
#  NUT 不间断电源（UPS）监控
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oled-zh-cn"
#  OLED 小屏（SSD1306 等）显示系统状态
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openwisp-zh-cn"
#  OpenWISP 集中网络管理客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-p910nd-zh-cn"
#  USB 打印服务器（共享打印机）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ser2net-zh-cn"
#  串口转网络（串口服务器/Telnet）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sms-tool-js-zh-cn"
#  短信收发（4G 模块短信，JS 版）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-snmpd-zh-cn"
#  SNMP 代理，供网管系统采集
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-statistics-zh-cn"
#  collectd 流量与系统统计图表
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usb-printer-zh-cn"
#  USB 打印机管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vnstat2-zh-cn"
#  vnStat2 流量统计（按日/月）

# ========== 12. 系统工具与维护 ==========
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acl-zh-cn"
#  访问控制列表（多用户权限管理）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-advanced-reboot-zh-cn"
#  高级重启（切换分区/引导器，刷机回滚用）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-attendedsysupgrade-zh-cn"
#  ASU 在线升级固件（可保留已装软件包）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-autoreboot-zh-cn"
#  定时自动重启（防假死）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-commands-zh-cn"
#  自定义命令与计划任务执行
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cpulimit-zh-cn"
#  限制指定进程的 CPU 占用
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cshark-zh-cn"
#  抓包工具（tcpdump 前端）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dashboard-zh-cn"
#  LuCI 首页概览面板自定义
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-email-zh-cn"
#  邮件通知发送
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-example-zh-cn"
#  LuCI 示例插件（开发模板）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lxc-zh-cn"
#  LXC 容器管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ramfree-zh-cn"
#  手动释放内存缓存
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-timewol-zh-cn"
#  定时唤醒指定设备
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-uhttpd-zh-cn"
#  轻量 Web 服务器（LuCI 默认）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vlmcsd-zh-cn"
#  KMS 服务器，激活 Windows/Office
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-watchcat-zh-cn"
#  网络看门狗，断网自动重启接口/设备
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wechatpush-zh-cn"
#  微信推送通知（Server酱等）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn"
#  网络唤醒（Wake-on-LAN）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xinetd-zh-cn"
#  超级服务器，按需启动服务/端口转发
