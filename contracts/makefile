include .env

ADDRESS_PROVIDER=$$(npx ts-node offchain/addressManager.ts read AddressProvider)

snapshot:
	@forge snapshot --fork-url ${MAINNET_RPC} --fork-block-number ${MAINNET_BLOCK} --gas-report --diff .gas-snapshot-main

test_all:
	@forge test --fork-url "https://eth-mainnet.g.alchemy.com/v2/${ALCHEMY_API_KEY}" -vvv --ffi --no-match-path 'test/workflow/*'
	
test_all_chains:
	@echo Mainnet
	@forge test --fork-url eth -vvv --ffi --no-match-path 'test/workflow/*'
	@echo Opt
	@forge test --fork-url op -vvv --ffi --no-match-path 'test/workflow/*'
	@echo Base
	@forge test --fork-url base -vvv --ffi --no-match-path 'test/workflow/*'
	@echo Avax
	@forge test --fork-url avax_c -vvv --ffi --no-match-path 'test/workflow/*'
	@echo Polygon
	@forge test --fork-url polygon -vvv --ffi --no-match-path 'test/workflow/*'
	@echo Arb
	@forge test --fork-url arbitrum -vvv --ffi --no-match-path 'test/workflow/*'
	@echo zkevm
	@forge test --fork-url zkevm -vvv --ffi --no-match-path 'test/workflow/*'
	@echo bsc
	@forge test --fork-url bsc -vvv --ffi --no-match-path 'test/workflow/*'
	@echo fantom
	@forge test --fork-url fantom -vvv --ffi --no-match-path 'test/workflow/*'
	@make test_workflow_all

test_latest:
	@forge test --fork-url ${MAINNET_RPC} --fork-block-number ${MAINNET_BLOCK} -vvv --ffi --mc ${P}

test_workflow_all:
	@forge test --fork-url ${MAINNET_RPC} -vvv --ffi --match-path 'test/workflow/*'

test_workflow_script:
	@forge script test/workflow/ConsoleFactory.t.sol --fork-url ${MAINNET_RPC} --ffi --sig "testMultichainDeployment()" -vvvv

test_quick:
	@forge test --fork-url ${MAINNET_RPC} --fork-block-number ${MAINNET_BLOCK} -vv --ffi --mc ${P}

coverage:
	@forge coverage --fork-url ${MAINNET_RPC} --fork-block-number ${MAINNET_BLOCK} -vvvv --ffi --contracts src --report lcov
	@lcov --exclude '*.lib.sol' --remove ./lcov.info -o ./lcov.info 'script/*' 'test/*'

coverage_html:
	@make coverage
	@genhtml -o report lcov.info --branch-coverage

test_func:
	@forge test --fork-url ${MAINNET_RPC} --fork-block-number ${MAINNET_BLOCK} -vvvv --ffi --mt ${P}

test_func_quick:
	@forge test --fork-url ${MAINNET_RPC} --fork-block-number ${MAINNET_BLOCK} -vv --ffi --mt ${P}

slither:
	@slither . --exclude-dependencies --checklist --filter-paths "test|lib|script" --sarif slither.sarif> slither.md	




