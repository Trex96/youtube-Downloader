import sys
import os

# Add src to the path so we can import modules from it
src_path = os.path.join(os.path.dirname(__file__), 'src')
sys.path.insert(0, src_path)

from app import main

if __name__ == "__main__":
    sys.exit(main())
