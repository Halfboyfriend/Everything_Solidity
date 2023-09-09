require("dotenv").config();
const { ethers } = require("ethers");
//ETHERS PROVIDER LIKE ALCHEMY

const contractAddress = "0x7B730582124FB1e03FEaF76D7c7529ec36657028";
const ABI = [
  {
    inputs: [],
    name: "decr",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [],
    name: "incr",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [],
    name: "count",
    outputs: [
      {
        internalType: "uint256",
        name: "",
        type: "uint256",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [],
    name: "get",
    outputs: [
      {
        internalType: "uint256",
        name: "",
        type: "uint256",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
];

const privateKey = ''


const provider = new ethers.AlchemyProvider("goerli", process.env.API_KEY);
const wallet = new ethers.Wallet(privateKey, provider)

async function main() {
  console.log("HEY MAN");
  const counterCountract = new ethers.Contract(contractAddress, ABI, wallet);
  await counterCountract.incr();
  const currentcounterValue = await counterCountract.count();

  console.log(currentcounterValue.toString());
}
main();
