import {SafeERC20, IERC20} from 'openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol';
import {ERC4626Upgradeable} from 'openzeppelin-contracts-upgradeable/contracts/token/ERC20/extensions/ERC4626Upgradeable.sol';

contract ERC4626Storage_Harness {
  IERC20 _asset;
  uint8 _underlyingDecimals;

  ERC4626Upgradeable.ERC4626Storage the_storage;
}
