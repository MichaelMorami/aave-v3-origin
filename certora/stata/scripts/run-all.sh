#CMN="--compilation_steps_only"



# timeouts and violations: https://prover.certora.com/output/3106/543ea4b224894f79abcb1f899839b1ff/?anonymousKey=42e99c1235c555931477fd8cac61a9c03991cd61
echo "******** Running: 1  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626.conf --rule previewMintIndependentOfAllowance previewRedeemIndependentOfBalance  previewMintAmountCheck previewDepositIndependentOfAllowanceApprove previewWithdrawIndependentOfMaxWithdraw previewWithdrawAmountCheck previewWithdrawIndependentOfBalance2 previewWithdrawIndependentOfBalance1 previewRedeemIndependentOfMaxRedeem1 previewRedeemAmountCheck previewRedeemIndependentOfMaxRedeem2 amountConversionRoundedDown withdrawCheck redeemCheck convertToAssetsCheck convertToSharesCheck toAssetsDoesNotRevert sharesConversionRoundedDown toSharesDoesNotRevert  previewDepositAmountCheck maxRedeemCompliance  maxWithdrawConversionCompliance \
#  maxMintMustntRevert maxDepositMustntRevert maxRedeemMustntRevert maxWithdrawMustntRevert
--msg "1: verifyERC4626.conf"

# echo "******** Running: 2  ***************"
# certoraRun $CMN certora/stata/conf/verifyERC4626MintDepositSummarization.conf --rule depositCheckIndexGRayAssert2 depositCheckIndexERayAssert2 mintCheckIndexGRayUpperBound mintCheckIndexGRayLowerBound mintCheckIndexEqualsRay \
# --msg "2: verifyERC4626MintDepositSummarization.conf"

# echo "******** Running: 3  ***************"
# certoraRun $CMN certora/stata/conf/verifyERC4626DepositSummarization.conf --rule depositCheckIndexERayAssert1 \
# --msg "3: "



# timeouts and violations: https://prover.certora.com/output/3106/614815483fe64754b0842ca246ed65e7/?anonymousKey=00f1dc259f71a65a83b997ce929093b4049e34b0
echo "******** Running: 4  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626Extended.conf --rule previewWithdrawRoundingRange previewRedeemRoundingRange amountConversionPreserved sharesConversionPreserved accountsJoiningSplittingIsLimited convertSumOfAssetsPreserved previewDepositSameAsDeposit previewMintSameAsMint \
           # maxDepositConstant \
--msg "4: "



# timeout: https://prover.certora.com/output/3106/b409f448a7324fd4a31cbfdb3f9577ce/?anonymousKey=007912c02c8c8d6cc52c3a997edcd7ffcf00a1ac
echo "******** Running: 5  ***************"
certoraRun $CMN certora/stata/conf/verifyERC4626Extended.conf --rule redeemSum \
--msg "5: "

# echo "******** Running: 6  ***************"
# certoraRun $CMN certora/stata/conf/verifyAToken.conf --rule aTokenBalanceIsFixed_for_collectAndUpdateRewards aTokenBalanceIsFixed_for_claimRewards aTokenBalanceIsFixed_for_claimRewardsOnBehalf \
# --msg "6: "

# echo "******** Running: 7   ***************"
# certoraRun $CMN certora/stata/conf/verifyAToken.conf --rule aTokenBalanceIsFixed_for_claimSingleRewardOnBehalf aTokenBalanceIsFixed_for_claimRewardsToSelf \
# --msg "7: "



# violation: https://prover.certora.com/output/3106/0f2d21cb1d734674bc76599941a51a0a/?anonymousKey=b9d8f64e0ad295fd3b347ab9634ab66c28c6d8ba
echo "******** Running: 8  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsConsistencyWhenSufficientRewardsExist \
--msg "8: "

# echo "******** Running: 9  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsConsistencyWhenInsufficientRewards \
# --msg "9: "



# violation: https://prover.certora.com/output/3106/c2e95eae8f894b44948269988d6efb95/?anonymousKey=b72526a50bc21e9e2646b6df66f1099ba9b79370
echo "******** Running: 10  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsTotalDeclinesOnlyByClaim \
--msg "10: "

# echo "******** Running: 11  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsTotalDeclinesOnlyByClaim_timedout_methods \
# --msg "11: "

# echo "******** Running: 12  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule rewardsTotalDeclinesOnlyByClaim_redeem_methods \
# --msg "12: "



# violation: https://prover.certora.com/output/3106/42796ea4e76f4bf2808749d0eb7b3953/?anonymousKey=077509a170938b82c0ea5f810b2106a66c2fe356
echo "******** Running: 13  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_positive_total_supply_only_if_positive_asset \
--msg "13: "



# violation: https://prover.certora.com/output/3106/ddfc3c8d79294a299055aea38fcfc41a/?anonymousKey=1f4bb2318151db2eb82a4bdc76eaff76f16c59b0
echo "******** Running: 14  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_total_asset_geq_total_supply \
--msg "14: "



# timeout: https://prover.certora.com/output/3106/ebe21976125f48a381e02bd9d0b8e658/?anonymousKey=15c3dbcc5be0eb4c64f6c4ecc5a291f6d439b9cb
echo "******** Running: 15  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule solvency_total_asset_geq_total_supply_CASE_SPLIT_redeem \
--msg "15: "



# violation: https://prover.certora.com/output/3106/73107dca3c63493c815975d77e13c82a/?anonymousKey=c8c13194e45f411264578502258266e1491a2113
echo "******** Running: 16  ***************"
certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule singleAssetAccruedRewards \
--msg "16: "

# echo "******** Running: 17  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalAssets_stable \
# --msg "17: "
  
# echo "******** Running: 18  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalAssets_stable_after_collectAndUpdateRewards \
# --msg "18: "

# echo "******** Running: 19  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule reward_balance_stable_after_collectAndUpdateRewards \
# --msg "19: "

# echo "******** Running: 20  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalClaimableRewards_stable_CASE_SPLIT \
# --msg "20: "



# violation: https://prover.certora.com/output/3106/09a08b84c2be4dc09eacefb6e9af4596/?anonymousKey=544d133767361da1b8abece9aa73e899a960f101
# echo "******** Running: 21  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable \
# --msg "21: "

# echo "******** Running: 22  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable_after_deposit \
# --msg "22: "

# echo "******** Running: 23  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable_after_redeem \
# --msg "23: "

# echo "******** Running: 24  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule totalClaimableRewards_stable_CASE_SPLIT_deposit \
# --msg "24: "

# echo "******** Running: 25  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewards_stable_after_refreshRewardTokens \
# --msg "25: "

# echo "******** Running: 26  ***************"
# certoraRun $CMN certora/stata/conf/verifyStaticATokenLM.conf --rule getClaimableRewardsBefore_leq_claimed_claimRewardsOnBehalf \
# --msg "26: "



# violation: https://prover.certora.com/output/3106/9bf4d44e7f684150b36bca070f7119f7/?anonymousKey=7d52bd63155a6411f27ad69e92c204c6e0e3c122
# echo "******** Running: 27  ***************"
# certoraRun $CMN certora/stata/conf/verifyDoubleClaim.conf --rule prevent_duplicate_reward_claiming_single_reward_sufficient \
# --msg "27: "



# violation: https://prover.certora.com/output/3106/fd0ddf1f2bd14b658480bd2aa3b00f57/?anonymousKey=4e8346d9dde93b0fcf2851ddc6ebf826d249e3a0
# echo "******** Running: 28  ***************"
# certoraRun $CMN certora/stata/conf/verifyDoubleClaim.conf --rule prevent_duplicate_reward_claiming_single_reward_insufficient \
# --msg "28: "
          
