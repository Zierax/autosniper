# Sniper URL Scanner Script

This Bash script reads a file of URLs (both `http://` and `https://`), loops through each target, and runs the `sniper` command on each. It provides an interactive option to skip to the next target or stop the script when pressing `CTRL+C`. At the end of the scan, it outputs a list of all successfully scanned domains.

## About Sniper

This script is designed to work with the tool [Sn1per](https://github.com/1N3/sn1per), an automated penetration testing and reconnaissance tool. Ensure that Sn1per is installed and accessible with `sudo` privileges before running this script.

## Features

- **CTRL+C Interrupt Handling**: When `CTRL+C` is pressed during scanning, the script prompts whether to skip the current target or stop the script.
- **Validation**: Checks the URL format (must start with `http://` or `https://`), verifies file readability, and ensures each `sudo sniper` command executes successfully.
- **Color-coded Feedback**: Outputs messages in different colors for easier readability (errors, warnings, and successful scans).
- **Summary Output**: Displays a list of all scanned domains after completing the scan.

## Prerequisites

- **sniper**: Install and set up [Sn1per](https://github.com/1N3/sn1per) for use with `sudo`.

## Usage

1. **Clone or Download**: Save the script as `sniper_script.sh`.

2. **Make the Script Executable**:
    ```bash
    chmod +x sniper_script.sh
    ```

3. **Prepare a File of URLs**:
   - Create a text file (e.g., `urls.txt`) with one URL per line:
     ```plaintext
     https://example.com
     http://test.com
     ```

4. **Run the Script**:
    ```bash
    ./sniper_script.sh urls.txt
    ```

### Example Execution

```plaintext
[*] Scanning https://example.com with sniper...
[*] Scanning http://test.com with sniper...

[!] Detected CTRL+C
Do you want to skip to the next target? (y/n): y
[*] Skipping to the next target...

[*] All scanned domains:
https://example.com
http://test.com
```

## Error Handling

- **File Check**: If the specified file is missing or not readable, the script exits with an error message.
- **URL Validation**: Only URLs starting with `http://` or `https://` are processed; others are skipped, and an error message is displayed.
- **Sniper Command**: If `sniper` encounters an issue during scanning, an error message displays, and the script moves to the next target.

## License

This project is open source and available under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.en.html).
