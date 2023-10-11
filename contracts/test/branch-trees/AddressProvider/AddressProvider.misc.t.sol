// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "src/core/AddressProvider.sol";
import "test/mocks/MockAddressProviderService.sol";
import {ConsoleFactory} from "script/utils/ConsoleFactory.s.sol";

contract AddressProvider_ServiceTest is Test, ConsoleFactory("offchain/addressManager.ts") {
    address public notGov = makeAddr("NotGovernance");
    MockAddressProviderService apService;

    function setUp() public {
        ConsoleFactory.deployConsole(address(this), false);
        //
        apService = new MockAddressProviderService(address(addressProvider));
    }

    function testDeploy() public {
        assertEq(addressProvider.governance(), address(this));
        assertEq(apService.addressProviderTarget(), address(addressProvider));
    }

    function testDeploy_KeccakHashes() public {
        assertEq(apService.SAFE_DEPLOYER_HASH(), keccak256("SafeDeployer"));
        assertEq(apService.EXECUTOR_PLUGIN_HASH(), keccak256("ExecutorPlugin"));
        assertEq(apService.POLICY_VALIDATOR_HASH(), keccak256("PolicyValidator"));
        assertEq(apService.SAFE_MODERATOR_OVERRIDABLE_HASH(), keccak256("SafeModeratorOverridable"));
        assertEq(apService.SAFE_MODERATOR_HASH(), keccak256("SafeModerator"));
        assertEq(apService.WALLET_REGISTRY_HASH(), keccak256("WalletRegistry"));
        assertEq(apService.EXECUTOR_REGISTRY_HASH(), keccak256("ExecutorRegistry"));
        assertEq(apService.POLICY_REGISTRY_HASH(), keccak256("PolicyRegistry"));
        assertEq(apService.GUARDIAN_HASH(), keccak256("Guardian"));
        assertEq(apService.TRUSTED_VALIDATOR_HASH(), keccak256("TrustedValidator"));
        assertEq(apService.GNOSIS_PROXY_FACTORY_HASH(), keccak256("GnosisProxyFactory"));
        assertEq(apService.GNOSIS_SINGLETON_HASH(), keccak256("GnosisSafeSingleton"));
        assertEq(apService.GNOSIS_MULTI_SEND_HASH(), keccak256("GnosisMultiSend"));
        assertEq(apService.GNOSIS_FALLBACK_HANDLER_HASH(), keccak256("GnosisFallbackHandler"));
        assertEq(apService.CONSOLE_FALLBACK_HANDLER_HASH(), keccak256("ConsoleFallbackHandler"));
        assertEq(apService.TRANSACTION_VALIDATOR_HASH(), keccak256("TransactionValidator"));
    }

    function testGetExternalAddress() public {
        addressProvider.setAuthorizedAddress(apService.GNOSIS_PROXY_FACTORY_HASH(), proxyDeployer, true);
        assertEq(apService.getAuthorizedAddress(apService.GNOSIS_PROXY_FACTORY_HASH()), proxyDeployer);
    }

    function testGetRegistry() public {
        addressProvider.setRegistry(keccak256("VALID_AP"), address(apService));
        assertEq(apService.getRegistry(keccak256("VALID_AP")), address(apService));
    }

    function testOnlyGov() public view {
        apService.onlyGov();
    }

    function testNotNull_ShouldRevertNotGovernance() public {
        vm.prank(notGov);
        vm.expectRevert(abi.encodeWithSelector(AddressProviderService.NotGovernance.selector, notGov));
        apService.onlyGov();
    }

    function testNotNull() public view {
        apService.notNull(address(12));
    }

    function testNotNull_ShouldRevertNullAddress() public {
        vm.expectRevert(abi.encodeWithSelector(AddressProviderService.InvalidAddress.selector));
        apService.notNull(address(0));
    }
}
