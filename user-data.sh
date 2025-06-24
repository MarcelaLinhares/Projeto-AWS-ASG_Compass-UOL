#!/bin/bash

# Atualiza o sistema
yum update -y

# Instala o Apache
yum install -y httpd

# Cria a página principal
echo "Hello World" > /var/www/html/index.html

# Cria o script CGI que simula carga
cat <<EOL > /var/www/html/teste.sh
#!/bin/bash
echo "Content-type: text/plain"
echo ""
echo "Requisição recebida em \$(hostname)"
sleep 5
EOL

# Dá permissão de execução
chmod +x /var/www/html/teste.sh

# Habilita execução de CGI no Apache
echo '
<Directory "/var/www/html">
    Options +ExecCGI
    AddHandler cgi-script .cgi .pl .sh
</Directory>
' > /etc/httpd/conf.d/enable-cgi.conf

# Inicia e habilita Apache no boot
systemctl start httpd
systemctl enable httpd