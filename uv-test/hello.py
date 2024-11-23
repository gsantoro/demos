import requests

def main():
    # Test endpoint URL
    url = "https://httpbin.org/get"

    try:
        # Send a GET request to the endpoint
        response = requests.get(url)

        # Check if the request was successful
        if response.status_code == 200:
            print("Request successful!")
            print("Response content:")
            print(response.json())
        else:
            print(f"Request failed with status code: {response.status_code}")

    except requests.RequestException as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    main()