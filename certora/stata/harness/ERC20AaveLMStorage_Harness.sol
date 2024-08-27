import {SafeERC20, IERC20} from 'openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol';
import {RewardIndexCache, UserRewardsData} from 'aave-v3-periphery/contracts/static-a-token/interfaces/IERC20AaveLM.sol';


contract ERC20AaveLMStorage_Harness {
    address _referenceAsset; // a/v token to track rewards on INCENTIVES_CONTROLLER
    address[] _rewardTokens;
    mapping(address user => IERC20AaveLM.RewardIndexCache cache) _startIndex;
    mapping(address user => mapping(address reward => IERC20AaveLM.UserRewardsData cache)) _userRewardsData;
}
