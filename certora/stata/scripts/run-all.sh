#CMN="--compilation_steps_only"


echo "******** Running: 1  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626.conf --rule previewMintIndependentOfAllowance previewRedeemIndependentOfBalance  previewMintAmountCheck previewDepositIndependentOfAllowanceApprove previewWithdrawIndependentOfMaxWithdraw previewWithdrawAmountCheck previewWithdrawIndependentOfBalance2 previewWithdrawIndependentOfBalance1 previewRedeemIndependentOfMaxRedeem1 previewRedeemAmountCheck previewRedeemIndependentOfMaxRedeem2 amountConversionRoundedDown withdrawCheck redeemCheck convertToAssetsCheck convertToSharesCheck toAssetsDoesNotRevert sharesConversionRoundedDown toSharesDoesNotRevert  previewDepositAmountCheck maxRedeemCompliance  maxWithdrawConversionCompliance \
            maxMintMustntRevert maxDepositMustntRevert maxRedeemMustntRevert maxWithdrawMustntRevert \
--msg "1: verifyERC4626.conf"

echo "******** Running: 2  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626MintDepositSummarization.conf --rule depositCheckIndexGRayAssert2 depositCheckIndexERayAssert2 mintCheckIndexGRayUpperBound mintCheckIndexGRayLowerBound mintCheckIndexEqualsRay \
--msg "2: verifyERC4626MintDepositSummarization.conf"

echo "******** Running: 3  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626DepositSummarization.conf --rule depositCheckIndexERayAssert1 \
--msg "3: "

echo "******** Running: 4  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626Extended.conf --rule previewWithdrawRoundingRange previewRedeemRoundingRange amountConversionPreserved sharesConversionPreserved accountsJoiningSplittingIsLimited convertSumOfAssetsPreserved previewDepositSameAsDeposit previewMintSameAsMint \
            maxDepositConstant \
--msg "4: "

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
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalClaimableRewards_stable
--msg "12: "

# violation: https://prover.certora.com/output/3106/6f7bf5f816ed4b658b1a42fcb3217d0f/?anonymousKey=4fcf56bf0ba2942b99b7285b71a20b35dde2ce4d
echo "******** Running: 13  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_positive_total_supply_only_if_positive_asset \
--msg "13: "

# violation: https://prover.certora.com/output/3106/ae6cc4786ecb4ba8a04970b879d169f0/?anonymousKey=307ce2e12568b9d3f425ab1b614381f12ac4998b
echo "******** Running: 14  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_total_asset_geq_total_supply \
--msg "14: "

echo "******** Running: 15  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule singleAssetAccruedRewards \
--msg "15: "

echo "******** Running: 16  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalAssets_stable \
--msg "16: "

echo "******** Running: 17  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalAssets_stable_after_collectAndUpdateRewards \
--msg "17: "

echo "******** Running: 18  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule reward_balance_stable_after_collectAndUpdateRewards \
--msg "18: "

echo "******** Running: 19  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable \
--msg "19: "

echo "******** Running: 20  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable_after_deposit \
--msg "20: "

echo "******** Running: 21  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable_after_refreshRewardTokens \
--msg "21: "

echo "******** Running: 22  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewardsBefore_leq_claimed_claimRewardsOnBehalf \
--msg "22: "

echo "******** Running: 23  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule prevent_duplicate_reward_claiming_single_reward_sufficient \
--msg "23: "

echo "******** Running: 24  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule prevent_duplicate_reward_claiming_single_reward_insufficient \
--msg "24: "
