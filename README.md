# Fixing OpenSSL `.pod` File Issues in Versions 1.0.1 to 1.0.1g

## Overview

Certain versions of OpenSSL (specifically 1.0.1 through 1.0.1g) contain a known issue with `.pod` files. This problem can cause the configuration of NGINX to fail when using these specific versions of OpenSSL as a dependency.

Please note that this versions are very old and deprecated. Most of the time you should not be installing this versions in your webservers. Only use this OpenSSL version if you know what you are doing.

The script will:
- Check your OpenSSL version.
- If the version is between 1.0.1 and 1.0.1h, it will copy the fixed `.pod` files from this repository.
- Replace the problematic `.pod` files in your OpenSSL source directory.
- Notify you when the process is complete.

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

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
