#!/bin/bash
sudo groupadd p1c1_2024_Todos 2>/dev/null || true
sudo useradd -m -g p1c1_2024_Todos p1c1_2024_u2
echo "p1c1_2024_u2:clave1" | sudo chpasswd

sudo usermod -aG p1c1_2024_Todos p1c1_2024_u1

sudo chgrp -R p1c1_2024_Todos /datos

sudo find /datos -type d -exec sudo chmod 775 {} \;
sudo find /datos -type f -exec sudo chmod 660 {} \;

sudo chmod 775 /datos
sudo su -c "id >> /datos/validar1.txt" p1c1_2024_u2
