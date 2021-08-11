pragma solidity ^0.7.6;

import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";

interface IMonoXPool is IERC1155 {
    function mint (address account, uint256 id, uint256 amount, uint256 _createdAt, bool _isOfficial) external;

    function burn (address account, uint256 id, uint256 amount) external;

    function totalSupplyOf(uint256 pid) external view returns (uint256);

    function depositWETH(uint256 amount) external;

    function withdrawWETH(uint256 amount) external;

    function safeTransferETH(address to, uint amount) external;

    function safeTransferERC20Token(address token, address to, uint256 amount) external;

    function getWETHAddr() external view returns (address);

    function liquidityLastAddedOf(uint256 pid, address account) external view returns(uint256);

    function topLPHolderOf(uint256 pid) external view returns (address);
}