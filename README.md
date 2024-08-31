# Fixing OpenSSL `.pod` File Issues in Versions 1.0.1 to 1.0.1g

## Overview

Certain versions of OpenSSL (specifically 1.0.1 through 1.0.1g) contain a known issue with `.pod` files. This problem can cause the configuration of NGINX to fail when using these specific versions of OpenSSL as a dependency.

Please note that this versions are very old and deprecated. Most of the time you should not be installing this versions in your webservers. Only use this OpenSSL version if you know what you are doing.

## Affected Versions

The issue affects the following OpenSSL versions:
- 1.0.1
- 1.0.1a
- 1.0.1b
- 1.0.1c
- 1.0.1d
- 1.0.1e
- 1.0.1f
- 1.0.1g

If you are using any of these versions, it is recommended to use this script to fix the `.pod` file issue before attempting to configure NGINX or other software that depends on OpenSSL.

## How to Use the Script

### Prerequisites

- Ensure that you have `git` installed on your system.
- Download or clone the OpenSSL source code for the affected version.
- Make sure you have the necessary permissions to modify files in the OpenSSL source directory.

### Steps to Run the Script

1. **Download the Script**  
   You can clone this repository with the following command:
    ```bash
   git clone https://github.com/a9sk/openssl-fixing
   ```
2. **Make the Script Executable**  
   If necessary, make the script executable by running:
   ```bash
   chmod +x openssl-fix.sh
   ```

3. **Run the Script**  
   Run the script in your terminal:
   ```bash
   ./openssl-fix.sh
   ```

4. **Provide the OpenSSL Source Directory**  
   When prompted, enter the path to your OpenSSL source directory. This is the directory where you have downloaded the OpenSSL source code.

5. **Script Execution**  
   The script will:
   - Check your OpenSSL version.
   - If the version is between 1.0.1 and 1.0.1h, it will copy the fixed `.pod` files from this repository.
   - Replace the problematic `.pod` files in your OpenSSL source directory.
   - Notify you when the process is complete.

6. **Proceed with Configuring NGINX**  
   After the `.pod` files are replaced, you can proceed with configuring and building NGINX as usual.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contacts

To report bugs, request new features, or ask questions, contact the project author:

- Email: 920a9sk42f76c765@proton.me
- GitHub: [@a9sk](https://github.com/a9sk)