# Domain Name System
* Distribui nomes de forma hierárquico;
* Servidores de DNS normalmente utilizam a porta 53
* Possui tamanho ilimitado e com desempenho não degradante;
* O primeiro local na hierarquia que o DNS consulta é o arquivo HOSTS;
		![[Pasted image 20240327205319.png]]
* *Root server:* são treze servidores distribuídos ao redor do mundo que possuem a principal função de resolução de nomes
* *Servidores Autoritativos X Recursivos: autoritativo* é o principal resolvedor de nomes de um dominio, já o recursivo é utilizado para buscar dados de outros 
* *Master X Slave:* Para evitar duplicidade de informações o DNS pode operar em forma de SLAVE respondendo sempre ao MASTER
* *TTL:* Determina o tempo de vida de cada registro no domínio*

# principais registros de dns
* Registro SOa guarda o cabeçalho da zona de DNS
* Registro A associa o hostname ao endereço
* AAAA associa o hostname ao endereço IPV6


























































