# data-architecture-integration-and-ingestion

1. Primeiro, certifique-se de que você tem o Docker instalado em sua máquina. Se não tiver, você pode baixá-lo e instalá-lo a partir do site oficial do Docker. 


2. Baixe a imagem do Cassandra: Abra um terminal e execute o seguinte comando:

```docker
docker pull cassandra:latest
```

3. Crie e execute o container Cassandra: 
```docker
docker run --name sapataria -d -p 9042:9042 cassandra:latest
```
Este comando cria um container chamado "sapataria", executa-o em modo detached (-d), e mapeia a porta 9042 do container para a porta 9042 do host.


4. Verifique se o container está rodando: 
```docker
docker ps
```

5. Aguarde o Cassandra iniciar completamente: O Cassandra pode levar alguns segundos para iniciar. Você pode verificar os logs do container com:
```docker
docker logs -f sapataria
```
Aguarde até ver mensagens indicando que o Cassandra está pronto para aceitar conexões.

6. Acesse o shell CQL do Cassandra: 
```docker
docker exec -it sapataria cqlsh
```
Isso abrirá o shell CQL dentro do container.


7. Execute os scripts: Agora você pode copiar e colar os scripts disponíveis neste repositório diretamente no shell CQL. Comece com o script de criação do schema (squema.cql)


8. Depois de criar o schema, você pode executar o script de inserção em BATCH (batch_insertion.cql)

Motivo de optarmos por inserção em BATCH: Atomicidade, pois garante que uma transação seja tratada como uma única unidade de operação. Isso significa que todas as operações em uma transação devem ser concluídas com sucesso, ou nenhuma delas será aplicada ao banco de dados.


9. Verifique se os dados foram inseridos corretamente: Você pode executar algumas consultas para verificar se os dados foram inseridos corretamente. Por exemplo:

```cql
SELECT * FROM clientes LIMIT 5;
SELECT * FROM pedidos LIMIT 5;
SELECT * FROM produtos LIMIT 5;
```

10. Saia do shell CQL: Quando terminar, você pode sair do shell CQL digitando exit.

11. Para parar o container (quando não precisar mais dele):
```docker
docker stop sapataria
```
12. Para remover o container (se não precisar mais dele):
```docker
docker rm sapataria
```
	
