#CMN="--compilation_steps_only"

# https://prover.certora.com/output/44289/2a33f924eef64ab69b25ad0d3576f966/?anonymousKey=6c15f614cb0916bc07bb51a0ee7f4dc0188e7761
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

# https://prover.certora.com/output/44289/4da67b12aebb4c39945f19c3c18b0e25/?anonymousKey=6effae278a24458c23cef43299b164d25c77d517
# pending answer from BGD regarding emergencyTokenTransfer 
echo "******** Running: 11  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalClaimableRewards_stable \
--msg "11: "

echo "******** Running: 12  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_positive_total_supply_only_if_positive_asset \
--msg "12: "

# https://prover.certora.com/output/44289/fbb16bff54cf4bcc8269ceae3703bbaa/?anonymousKey=12a675804ed08564bee5ed4433df78791cd94e78
# this is due to emergency token transfer. Asked BGD about it
echo "******** Running: 13  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_total_asset_geq_total_supply \
--msg "13: "

echo "******** Running: 14  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule singleAssetAccruedRewards \
--msg "14: "

# https://prover.certora.com/output/44289/4b8a580965114188b4408f97579dd837/?anonymousKey=a97e9fa9b4960bd92d33e6bed3b2f3b00d1901e5
# Should be fixed once totalAsset is patched. it did work with a harness that refers to atoken.balOf(stata):
# https://prover.certora.com/output/44289/7781603b5a7e4316a8ea7ada980a2980/?anonymousKey=05779c8f324a901f4a7373ae85d66d56f6299d59
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

# https://prover.certora.com/output/44289/45773cd292734e4398fb701c49a97796/?anonymousKey=1dbc68381f0bbd88a7a71df92e5214d82223638b
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