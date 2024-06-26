zeek:
  zeekctl:
    MailTo: root@localhost
    MailConnectionSummary: 1
    MinDiskSpace: 5
    MailHostUpDown: 1
    LogRotationInterval: 3600
    LogExpireInterval: 0
    StatsLogEnable: 1
    StatsLogExpireInterval: 0
    StatusCmdShowAll: 0
    CrashExpireInterval: 0
    SitePolicyScripts: local.zeek
    LogDir: /nsm/zeek/logs
    SpoolDir: /nsm/zeek/spool
    CfgDir: /opt/zeek/etc
    CompressLogs: 1
    ZeekPort: 27760
  local:
    '@load':
      - misc/loaded-scripts
      - tuning/defaults
      - misc/capture-loss
      - misc/stats
      - frameworks/software/vulnerable
      - frameworks/software/version-changes
      - protocols/ftp/software
      - protocols/smtp/software
      - protocols/ssh/software
      - protocols/http/software
      - protocols/dns/detect-external-names
      - protocols/ftp/detect
      - protocols/conn/known-hosts
      - protocols/conn/known-services
      - protocols/ssl/known-certs
      - protocols/ssl/validate-certs
      - protocols/ssl/log-hostcerts-only
      - protocols/ssh/geo-data
      - protocols/ssh/detect-bruteforcing
      - protocols/ssh/interesting-hostnames
      - protocols/http/detect-sqli
      - frameworks/files/hash-all-files
      - frameworks/files/detect-MHR
      - policy/frameworks/notice/extend-email/hostnames
      - policy/frameworks/notice/community-id
      - policy/protocols/conn/community-id-logging
      - ja3
      - hassh
      - intel
      - cve-2020-0601
      - securityonion/bpfconf
      - securityonion/file-extraction
      - oui-logging
      - icsnpp-modbus
      - icsnpp-dnp3
      - icsnpp-bacnet
      - icsnpp-ethercat
      - icsnpp-enip
      - icsnpp-opcua-binary
      - icsnpp-bsap
      - icsnpp-s7comm
      - zeek-plugin-tds
      - zeek-plugin-profinet
      - zeek-spicy-wireguard
      - zeek-spicy-stun
    '@load-sigs':
      - frameworks/signatures/detect-windows-shells
    redef:
      - LogAscii::use_json = T;
      - CaptureLoss::watch_interval = 5 mins;
