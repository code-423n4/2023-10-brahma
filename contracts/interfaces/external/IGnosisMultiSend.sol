// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.7.0 <0.9.0;

interface IGnosisMultiSend {
    function multiSend(bytes memory transactions) external payable;
}
