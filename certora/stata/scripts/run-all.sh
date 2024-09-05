#CMN="--compilation_steps_only"

# https://prover.certora.com/output/44289/03aecb5276d24c98a553718f2d5fcd99/?anonymousKey=2c41fd72ffac1456252fff91f2cabbef1f00e781
echo "******** Running: 1  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626.conf --rule previewMintIndependentOfAllowance previewRedeemIndependentOfBalance  previewMintAmountCheck previewDepositIndependentOfAllowanceApprove previewWithdrawIndependentOfMaxWithdraw previewWithdrawAmountCheck previewWithdrawIndependentOfBalance2 previewWithdrawIndependentOfBalance1 previewRedeemIndependentOfMaxRedeem1 previewRedeemAmountCheck previewRedeemIndependentOfMaxRedeem2 amountConversionRoundedDown withdrawCheck redeemCheck redeemATokensCheck convertToAssetsCheck convertToSharesCheck toAssetsDoesNotRevert sharesConversionRoundedDown toSharesDoesNotRevert  previewDepositAmountCheck maxRedeemCompliance  maxWithdrawConversionCompliance \
            maxMintMustntRevert maxDepositMustntRevert maxRedeemMustntRevert maxWithdrawMustntRevert \
--msg "1: verifyERC4626.conf"

echo "******** Running: 2  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626MintDepositSummarization.conf --rule depositCheckIndexGRayAssert2 depositATokensCheckIndexGRayAssert2 depositWithPermitCheckIndexGRayAssert2 depositCheckIndexERayAssert2 depositATokensCheckIndexERayAssert2 depositWithPermitCheckIndexERayAssert2 mintCheckIndexGRayUpperBound mintCheckIndexGRayLowerBound mintCheckIndexEqualsRay \
--msg "2: verifyERC4626MintDepositSummarization.conf"

echo "******** Running: 3  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626DepositSummarization.conf --rule depositCheckIndexERayAssert1 depositATokensCheckIndexGRayAssert1 depositWithPermitCheckIndexGRayAssert1 depositATokensCheckIndexERayAssert1 depositWithPermitCheckIndexERayAssert1 \
--msg "3: "

echo "******** Running: 4  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626Extended.conf --rule previewWithdrawRoundingRange previewRedeemRoundingRange amountConversionPreserved sharesConversionPreserved accountsJoiningSplittingIsLimited convertSumOfAssetsPreserved previewDepositSameAsDeposit previewMintSameAsMint \
            maxDepositConstant \
--msg "4: "

echo "******** Running: 5  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626Extended.conf --rule redeemSum \
--msg "5: "

echo "******** Running: 6  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626Extended.conf --rule redeemATokensSum \
--msg "6: "

echo "******** Running: 7   ***************"
certoraRun $CMN certora/stata/conf/verifyAToken.conf --rule aTokenBalanceIsFixed_for_collectAndUpdateRewards aTokenBalanceIsFixed_for_claimRewards aTokenBalanceIsFixed_for_claimRewardsOnBehalf \
--msg "7: "

echo "******** Running: 8  ***************"
certoraRun $CMN certora/stata/conf/verifyAToken.conf --rule aTokenBalanceIsFixed_for_claimSingleRewardOnBehalf aTokenBalanceIsFixed_for_claimRewardsToSelf \
--msg "8: "

echo "******** Running: 9  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsConsistencyWhenSufficientRewardsExist \
--msg "9: "

echo "******** Running: 10  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsConsistencyWhenInsufficientRewards \
--msg "10: "

# https://prover.certora.com/output/44289/42fc0dfa73e447b58f0403b79666cde3/?anonymousKey=0514be8889be79131ee27f241bb940b91d1ef46f
# should filter out singleRewardClaim (we filter out most other claims), however for some reason doubleRewardClaim passes
# pending answer from BGD regarding emergencyTokenTransfer 
echo "******** Running: 11  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalClaimableRewards_stable \
--msg "11: "

echo "******** Running: 12  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_positive_total_supply_only_if_positive_asset \
--msg "12: "

# https://prover.certora.com/output/44289/68d7f37ee18b420e9c5a0f308571d923/?anonymousKey=7b8ef95fcbb877bc755b70900f2318595f3911cc
# this is due to emergency token transfer. Asked BGD about it
echo "******** Running: 13  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_total_asset_geq_total_supply \
--msg "13: "

echo "******** Running: 14  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule singleAssetAccruedRewards \
--msg "14: "

echo "******** Running: 15  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalAssets_stable \
--msg "15: "

echo "******** Running: 16  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable \
--msg "16: "

echo "******** Running: 17  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable_after_deposit \
--msg "17: "

echo "******** Running: 18  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable_after_refreshRewardTokens \
--msg "18: "

echo "******** Running: 19  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewardsBefore_leq_claimed_claimRewardsOnBehalf \
--msg "19: "

# https://prover.certora.com/output/44289/1def0879614d4785bdc08abaeb335461/?anonymousKey=701a7bc7af69a04020cca37d89aa442c39691875echo "******** Running: 20  ***************"
# this is due to emergency token transfer. Asked BGD about it
echo "******** Running: 20  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsTotalDeclinesOnlyByClaim \
--msg "20: "

echo "******** Running: 21  ***************"
certoraRun $CMN certora/stata/conf/verifyDoubleClaim.conf --rule prevent_duplicate_reward_claiming_single_reward_sufficient \
--msg "21: "

echo "******** Running: 22  ***************"
certoraRun $CMN certora/stata/conf/verifyDoubleClaim.conf --rule prevent_duplicate_reward_claiming_single_reward_insufficient \
--msg "22: "