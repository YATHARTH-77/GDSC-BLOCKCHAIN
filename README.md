# Counter Token (CTR)

A simple ERC20 token implementation built with Solidity and OpenZeppelin.

## Overview

Counter Token (CTR) is an ERC20-compliant token built on the Ethereum blockchain. The token includes basic ERC20 functionality with an initial supply of 1,000 CTR tokens minted to the deployer's address.

## Features

- ERC20 compliant token
- Fixed initial supply of 1,000 tokens
- Built using OpenZeppelin contracts for security and standardization
- Comprehensive test coverage
- Foundry-based deployment scripts

## Technical Details

### Contract Specifications

- Token Name: CounterToken
- Token Symbol: CTR
- Decimals: 18 (standard ERC20)
- Initial Supply: 1,000 tokens
- Solidity Version: ^0.8.28
- Framework: Foundry
- License: MIT

## Project Structure

```
├── src/
│   └── Counter.sol        # Main token contract
├── script/
│   └── Counter.s.sol # Deployment script
└── test/
    └── Counter.t.sol      # Test suite
```

## Smart Contracts

### Counter.sol

The main token contract inherits from OpenZeppelin's ERC20 implementation:

```solidity
contract Counter is ERC20 {
    constructor() ERC20("CounterToken", "CTR") {
        _mint(msg.sender, 1000 * 10**decimals());
    }
}
```

## Testing

The project includes a comprehensive test suite using Foundry's testing framework. Tests verify:

- Initial token supply
- Token decimals
- Basic ERC20 functionality

To run tests:

```bash
forge test
```

## Deployment

The deployment script (`Counter.s.sol`) handles the deployment process using Foundry's scripting capabilities.

To deploy:

```bash
forge script script/DeployMyToken.s.sol --rpc-url <your-rpc-url> --broadcast
```

## Development Setup

1. Install Foundry:
```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

2. Clone the repository:
```bash
git clone <repository-url>
cd counter-token
```

3. Install dependencies:
```bash
forge install
```

4. Build the project:
```bash
forge build
```

## Security

- Built using OpenZeppelin's battle-tested contracts
- Follows ERC20 standard implementation
- Minimal attack surface due to simple implementation
- No custom functions beyond standard ERC20

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request



## Acknowledgments

- OpenZeppelin for providing secure, standard contract implementations
- Foundry team for the development framework

  # Common Issues and Challenges

During the development of the Counter Token project, several challenges and issues were encountered. This document outlines these problems and their solutions for future reference.

## Development Environment Setup

### Foundry Installation Issues
1. **Foundry Installation Failures**
   - Common error: Permission denied when running the installation script
   - Solution: Run with sudo or ensure proper permissions
   - Alternative: Manual installation through GitHub releases

2. **Version Compatibility**
   - Foundry updates frequently causing version mismatches
   - Some older dependencies may not work with newest Foundry versions
   - Solution: Specify exact versions in project configuration

## Dependencies and Libraries

### OpenZeppelin Integration
1. **Version Conflicts**
   - Error: Incompatible solidity versions between OpenZeppelin and project
   - Solution: Align project's solidity version (^0.8.28) with OpenZeppelin requirements
   - Required updating compiler settings in foundry.toml

2. **Import Path Issues**
   - Error: Cannot find @openzeppelin/contracts
   - Solution: Proper installation using `forge install OpenZeppelin/openzeppelin-contracts`
   - Ensure remappings.txt is correctly configured

## Contract Development

### Compilation Errors
1. **Pragma Version Conflicts**
   - Multiple files with different pragma versions
   - Solution: Standardized to ^0.8.28 across all contracts
   - Required updating test files to match

2. **Constructor Parameters**
   - Initial implementation had incorrect decimals calculation
   - Error: Overflow in decimal calculations
   - Solution: Proper use of `10**decimals()` instead of hardcoded values

## Testing Challenges

### Test Environment Setup
1. **Test Framework Issues**
   - Initial difficulty with Foundry's test assertions
   - Error: Undefined symbols in test files
   - Solution: Proper import of `forge-std/Test.sol`

2. **Gas Estimation Problems**
   - Tests failing due to gas estimation issues
   - Solution: Adjusted gas limits in foundry.toml
   - Added proper gas optimization in contract

## Deployment Challenges

### Script Execution
1. **RPC Connection Issues**
   - Error: Unable to connect to specified RPC URL
   - Solution: Ensure proper network configuration
   - Added retry mechanism in deployment scripts

2. **Private Key Management**
   - Challenge: Secure handling of private keys
   - Solution: Implementation of .env file for sensitive data
   - Added documentation for proper key management

## IDE and Tooling

### VS Code Integration
1. **Solidity Extension Conflicts**
   - Multiple Solidity extensions causing conflicts
   - Solution: Standardized on specific extension versions
   - Documented recommended extensions

2. **Format and Linting**
   - Inconsistent code formatting across team
   - Solution: Implemented .prettierrc configuration
   - Added solhint for consistent style enforcement

## Documentation

### README Maintenance
1. **Installation Steps**
   - Initial documentation missed crucial setup steps
   - Solution: Comprehensive step-by-step guide
   - Added troubleshooting section

2. **API Documentation**
   - Challenge: Keeping documentation in sync with code
   - Solution: Implemented NatSpec comments
   - Added automated documentation generation

These issues and their solutions have been documented to help future developers avoid similar problems and streamline the development process.
