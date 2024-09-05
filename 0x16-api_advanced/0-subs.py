import requests

def number_of_subscribers(subreddit):
    """Queries the Reddit API and returns the number of subscribers for a given subreddit.
    
    Args:
        subreddit (str): The name of the subreddit.
        
    Returns:
        int: The number of subscribers or 0 if the subreddit is invalid.
    """
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {'User-Agent': 'myRedditApp/0.1'}
    
    try:
        response = requests.get(url, headers=headers, timeout=10)
        response.raise_for_status()  # Will raise an HTTPError for bad responses
        data = response.json()
        
        # Check if the 'data' key exists in the JSON response
        if 'data' in data:
            return data['data']['subscribers']
        else:
            return 0
    except requests.RequestException:
        # Handle exceptions such as network errors or invalid subreddit
        return 0
