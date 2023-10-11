// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import {SafeHelper} from "src/libraries/SafeHelper.sol";
import {Enum} from "interfaces/external/IGnosisSafe.sol";
import {Types} from "interfaces/Types.sol";

contract SafeHelperLib {
    function packMultisendTxns(Types.Executable[] memory _txns) external pure returns (bytes memory packedTxns) {
        return SafeHelper._packMultisendTxns(_txns);
    }

    function executeOnSafe(address safe, address target, Enum.Operation op, bytes memory data) external {
        return SafeHelper._executeOnSafe(safe, target, op, data);
    }

    function parseOperationEnum(Types.CallType callType) external pure returns (Enum.Operation operation) {
        return SafeHelper._parseOperationEnum(callType);
    }
}
