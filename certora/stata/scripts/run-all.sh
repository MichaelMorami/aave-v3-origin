#CMN="--compilation_steps_only"



echo "******** Running: 1  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626.conf --rule previewMintIndependentOfAllowance previewRedeemIndependentOfBalance  previewMintAmountCheck previewDepositIndependentOfAllowanceApprove previewWithdrawIndependentOfMaxWithdraw previewWithdrawAmountCheck previewWithdrawIndependentOfBalance2 previewWithdrawIndependentOfBalance1 previewRedeemIndependentOfMaxRedeem1 previewRedeemAmountCheck previewRedeemIndependentOfMaxRedeem2 amountConversionRoundedDown withdrawCheck redeemCheck convertToAssetsCheck convertToSharesCheck toAssetsDoesNotRevert sharesConversionRoundedDown toSharesDoesNotRevert  previewDepositAmountCheck maxRedeemCompliance  maxWithdrawConversionCompliance \
--msg "1: verifyERC4626.conf"
#  maxMintMustntRevert maxDepositMustntRevert maxRedeemMustntRevert maxWithdrawMustntRevert

echo "******** Running: 2  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626MintDepositSummarization.conf --rule depositCheckIndexGRayAssert2 depositCheckIndexERayAssert2 mintCheckIndexGRayUpperBound mintCheckIndexGRayLowerBound mintCheckIndexEqualsRay \
--msg "2: verifyERC4626MintDepositSummarization.conf"

echo "******** Running: 3  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626DepositSummarization.conf --rule depositCheckIndexERayAssert1 \
--msg "3: "

echo "******** Running: 4  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626Extended.conf --rule previewWithdrawRoundingRange previewRedeemRoundingRange amountConversionPreserved sharesConversionPreserved accountsJoiningSplittingIsLimited convertSumOfAssetsPreserved previewDepositSameAsDeposit previewMintSameAsMint \
--msg "4: "
           # maxDepositConstant \

echo "******** Running: 5  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626Extended.conf --rule redeemSum \
--msg "5: "

echo "******** Running: 6  ***************"
certoraRun $CMN certora/stata/conf/verifyAToken.conf --rule aTokenBalanceIsFixed_for_collectAndUpdateRewards aTokenBalanceIsFixed_for_claimRewards aTokenBalanceIsFixed_for_claimRewardsOnBehalf \
--msg "6: "

echo "******** Running: 7   ***************"
certoraRun $CMN certora/stata/conf/verifyAToken.conf --rule aTokenBalanceIsFixed_for_claimSingleRewardOnBehalf aTokenBalanceIsFixed_for_claimRewardsToSelf \
--msg "7: "

echo "******** Running: 8  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsConsistencyWhenSufficientRewardsExist \
--msg "8: "

echo "******** Running: 9  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsConsistencyWhenInsufficientRewards \
--msg "9: "

echo "******** Running: 10  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsTotalDeclinesOnlyByClaim \
--msg "10: "

echo "******** Running: 11  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsTotalDeclinesOnlyByClaim_timedout_methods \
--msg "11: "

echo "******** Running: 12  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsTotalDeclinesOnlyByClaim_redeem_methods \
--msg "12: "

echo "******** Running: 13  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_positive_total_supply_only_if_positive_asset \
--msg "13: "

echo "******** Running: 14  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_total_asset_geq_total_supply \
--msg "14: "

echo "******** Running: 15  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_total_asset_geq_total_supply_CASE_SPLIT_redeem \
--msg "15: "

echo "******** Running: 16  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule singleAssetAccruedRewards \
--msg "16: "

echo "******** Running: 17  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalAssets_stable \
--msg "17: "
  
echo "******** Running: 18  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalAssets_stable_after_collectAndUpdateRewards \
--msg "18: "

echo "******** Running: 19  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule reward_balance_stable_after_collectAndUpdateRewards \
--msg "19: "

echo "******** Running: 20  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalClaimableRewards_stable_CASE_SPLIT \
--msg "20: "

echo "******** Running: 21  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable \
--msg "21: "

echo "******** Running: 22  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable_after_deposit \
--msg "22: "

echo "******** Running: 23  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable_after_redeem \
--msg "23: "

echo "******** Running: 24  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalClaimableRewards_stable_CASE_SPLIT_deposit \
--msg "24: "

echo "******** Running: 25  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable_after_refreshRewardTokens \
--msg "25: "

echo "******** Running: 26  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewardsBefore_leq_claimed_claimRewardsOnBehalf \
--msg "26: "

echo "******** Running: 27  ***************"
certoraRun $CMN certora/stata/conf/verifyDoubleClaim.conf --rule prevent_duplicate_reward_claiming_single_reward_sufficient \
--msg "27: "

echo "******** Running: 28  ***************"
certoraRun $CMN certora/stata/conf/verifyDoubleClaim.conf --rule prevent_duplicate_reward_claiming_single_reward_insufficient \
--msg "28: "
          
