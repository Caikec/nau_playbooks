# Import Tracking Logs Script

This script is designed to download tracking log files from an AWS S3 bucket, process and send them to a specified endpoint.

## Prerequisites

- Python 3.6 or above
- Required Python packages (install using `pip install -r requirements.txt`):
  - `requests`
  - `boto3`
  - `python-decouple`

## Configuration

The script uses environment variables for configuration. Ensure the following environment variables are set before running the script:

- `ACCESS_KEY`: AWS S3 access key.
- `SECRET_KEY`: AWS S3 secret key.
- `ENDPOINT_URL`: AWS S3 endpoint URL.
- `BUCKET_NAME`: AWS S3 bucket name.
- `RALPH_ENDPOINT_URL`: URL for the Ralph endpoint where the processed data will be sent.
- `PATH_S3_TO_TRACKINGLOG`: Path in the S3 bucket where the tracking log files are stored (ensure it ends with a `/`).
- `SHOW_PRINTS`: Set to `True` to enable printing of log messages, or set to `False` to disable.


## Functionality

The script performs the following operations:

1. Connects to the specified AWS S3 bucket using the provided credentials.
2. Lists all tracking log files in the specified path within the S3 bucket.
3. Downloads and decompresses the new tracking log files.
4. Sends each processed log file to the specified Ralph endpoint.
5. Removes the downloaded and decompressed log files from the local system.

Note: The script maintains a list of downloaded and error files in separate text files to track the processing status.

Please ensure that the necessary permissions are granted to the AWS IAM user and that the Ralph endpoint is configured correctly.

For more information, please refer to the script's source code and the provided configuration files.



