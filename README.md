# UrlChecker

A simple bash-based URL checker that tests URL availability by sending multiple HTTP requests and reporting the HTTP status codes.

## Description

UrlChecker is a lightweight tool that allows you to test the availability and response of URLs by sending multiple concurrent HTTP requests. It validates the URL format, performs the specified number of tests, and provides a summary of HTTP status codes received.

## Prerequisites

- Bash shell
- `curl` command-line tool
- Unix-like operating system (Linux, macOS, etc.)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/alireza-haeri/UrlChecker.git
   cd UrlChecker
   ```

2. Make sure the urlchecker script is executable:
   ```bash
   chmod +x bin/urlchecker
   ```

## Usage

You can run the URL checker in two ways:

### Option 1: With Command-Line Arguments

```bash
./bin/urlchecker <URL> <COUNT>
```

- `<URL>`: The URL to test (must start with `http://` or `https://`)
- `<COUNT>`: Number of requests to send (must be between 1 and 1000)

**Example:**
```bash
./bin/urlchecker https://www.google.com 10
```

### Option 2: Interactive Mode

If you don't provide arguments, the script will prompt you for input:

```bash
./bin/urlchecker
```

The script will ask for:
1. The URL to test
2. The number of tests to run

## Output

The tool will display:
1. Validation message confirming the URL is valid
2. Test start message
3. Summary of HTTP status codes and their counts
4. Test completion message

**Example output:**
```
[info] valid url: https://www.google.com
[info] Starting test...
10 => 200
[info] Ending test...
```

This shows that 10 requests were sent, and all received HTTP status code 200 (OK).

## HTTP Status Codes

Common status codes you might see:
- `200`: OK - The request was successful
- `301`/`302`: Redirect - The URL redirects to another location
- `404`: Not Found - The URL doesn't exist
- `500`: Internal Server Error - Server-side error
- `000`: Connection failed or timeout

## Limitations

- The count of tests must be between 1 and 1000
- URLs must start with `http://` or `https://`
- Requires an active internet connection

## Project Structure

```
UrlChecker/
├── bin/
│   └── urlchecker       # Main executable script
├── core/
│   ├── logger.sh        # Logging utilities
│   ├── tester.sh        # HTTP request testing logic
│   ├── valid-url.sh     # URL validation
│   ├── valid-count.sh   # Count validation
│   └── writer.sh        # Result processing
└── data/                # Temporary data directory (created at runtime)
```

## License

This project is open source and available for use and modification.
