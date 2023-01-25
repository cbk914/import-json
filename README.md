# import-json

Script to parse a JSON file, with a list of endpoints, over a given URL, send a request via curl, and save the output to a text file, sorted by HTTP response code. Optional send requests to Burp Suite. BASH and PYTHON versions

# Usage: 

./import-json.sh -f file -u url [-o output] [-p proxy] [-h]

Retrieves URLs from a JSON file and sends a request to each URL using curl

* -f file         path to the JSON file
* -u url          base URL to append the URI to
* -o output       specify the output file name
* -p proxy        send URL requests to proxy
* -h              display this help and exit

With clean-output.sh you can clean the output files, generating a new output file with only the full URLs.
