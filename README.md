### Blockchain-based Land Registries System  ###

%%% We have observed around us a lot of cases where someone claims another’s land, transaction frauds occur, documents are lost, and many more such issues. Blockchain will help us in solving all these issues and also will maintain the records of the transactions leading to quick and safe retrieval of data. So blockchain-based system which resolves all the land issues will work in the following way:

^^ Citizen initiates a request
^^ After processing it, in the traditional system data is stored in the centralized system. In the case of Blockchain, it will be stored in the decentralized system and thus would reduce the data manipulation and will guarantee further immutability.
^^ In the traditional system, a paper certificate is issued after purchase which has the risk of loss, damage, or forgery. It can be replaced by electronic certificates where the data remains safe and reliable.

 Architecture were developed using the subsequent technologies:-


- Storage : MongoDB
- Network  Docker 
- code  written in Solidity
- deploy using the Truffle.


 For this project  the following essential softwares are :

$$ Truffle  
$$ Geth client  
$$ Docker   
$$ Metamask 
$$ Node JS  
$$ Yarn Package
$$ pm2
   
@@@ Setup Instructions


Run these docker commands:
    - Run: `docker-compose build`.
    - Once that's done, run: `docker-compose up -d`.
    - Verify that the network was setup correctly by running `docker ps` to see a list of containers created.
    - Further verify that the authority nodes are up and mining, by running: `docker logs --tail 15 auth1`.
    - Navigate back to the root directory.
    - then truffle migrations : `truffle migrate --network development --reset`
    - Run: `npm install` 
    - Run: `pm2 start`, 
    - Run: `pm2 logs client` 


