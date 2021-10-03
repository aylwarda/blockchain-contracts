# blockchain-contracts
This project consists of an Ethereum contract or two.
The contract, once created, is tested on an Ethereum Test Network and I walk through what the contract is doing by way of some screenshots and explanatory text.

---
## Introduction

This project is all about creating a contract (or two) and interacting with it.
For the purposes of development, the contract was developed in [Remix](https://remix.ethereum.org/) (a web-based IDE (Integrated Development Environment)) and Ganache.  [Ganache](https://www.trufflesuite.com/ganache) is not an IDE, but simulates an Ethereum blockchain for development purposes.  Ganache is fantastic!!! Just saying.

## AssociateProfitSplitter - Contract 1
In this project, I create a contract, named `AssociateProfitSplitter`.  What it does is fairly simple in that,  it takes in some Ether (ETH) and then splits it up equally between 3 employees, i.e. employees one to three.  

In essence then, `AssociateProfitSplitter` distributes whatever is deposited into the contract evenly.

### Validations
There are some validations within the contract and these are implemented in a number of ways: -
- Contract constructor
  - The constructor both sets the owner of the contract, storing it in the `owner` address, as well as reads in the 3 "employee" addresses.
- The `onlyOwner` modifier
  - This modifier ensures that whenever a function is called with the modifier, the `require()` is called which ensures that the caller is the owner of the contract, i.e. no "employee" can deposit funds for distribution.
-  dfdfd

### Interaction with "Splitter"
These images/screenshots show the interaction with the contract on the "Kovan" Ethereum Test Net.  Note the amounts distributed to the 3 addresses.

> Preparing for the deployment of the contract onto the Kovan Test Network.  Address, amount in ETH and network match.  

![Oops, image not available](./Screenshots/kovan_splitter_test_1.png "Blah")  

> Note ... blah  

![Oops, image not available](./Screenshots/kovan_splitter_test_2.png "Blah")  



# Acknowledgements and References
- Remix
- Ganache
- Ethereum Foundation
- Thanks to Trinity College, an organisation that has provided the training which has allowed for the accomplishment of this demo (as part of a Monash University Bootcamp).

