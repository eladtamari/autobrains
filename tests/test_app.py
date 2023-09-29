import main
import requests

def test_message():
    message = main.hello('Another message')
    assert 'Another message' in message
    
