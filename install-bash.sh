#!/bin/bash

echo "Installing bash script..."

# Create symbolic link for dev script in /usr/local/bin
echo "Creating dev script symlink..."
if sudo ln -sf "$PWD/bash/dev" "/usr/local/bin/dev"; then
    echo "Dev script installed to /usr/local/bin/dev"
else
    echo "Warning: Could not create symlink in /usr/local/bin (requires sudo)"
fi


echo "Bash script installation complete!"
