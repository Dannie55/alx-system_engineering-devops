#!/bin/bash

# Server details
server=100.26.250.128
user="ubuntu"

# SSH public key
ssh_public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC7Wm9MnazuSL24/Ok9C3QKLcxlQb75EPAFEbDt7jFbYj8zzNLYkkcDAevlHeKRnXQfJZVLP8VFZWxP9DtQV8e0hyG71ZBrYjCFSn1kIMwJtHO9TvMZSis6Cb/2D94zfBWGZBCF5v+2c49kAzgOW9xH/RXZQAcNP4GQkYoxq3hKAVPx2m4ymCwZ8XAY6i4fO/6kSJtg+Ax8+TXgTV0NwET0wykv0TfnCg4dUx6l1HHF4HEDosQk5XbF/lT9YIIfCla4z1wTOmf4mz2ZjbYZoNvCerJpyJL080x2X3a0OCq4E2CKZicIwWTyLxQQHUHurWbgV4ede31Gd7VGuL6Kd3gy8pTA1eZa+X/6R6oS13AOJYDUj+IYLOtMShYsUFzvzJ3xsZlwSenAFhXSFQcHqYvT2x1uIIPp4SpeLvxgAd//PtVz8yZdsjr37/rV/YcQV9BNSxLfHO/JYyniAp+4JW7MtSSpsiTglEXFXd7n4msQDfuktwJHVWNHtMRN1jkUVxDjbV1YPGII9r8OMu5BEqIXTeA/fQ83XaTw3RLcrwz6oD+mbv055LaXWzcHJTPKxUNtvEllxyyLgP+siHXTvDUjVMK7URdG/idWuRDHXVqY9lwGB+cuWCZUajnNCU5hjT9Wy1Ybk0833WwHUNXoV/vMk0loVuKrdx4MC8AZ2CReMw== u0_a247@localhost"

# Connect to the server and add the SSH public key to authorized_keys
ssh ubuntu@100.26.250.128 "mkdir -p ~/.ssh && echo \"$ssh_public_key\" >> ~/.ssh/authorized_keys && chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys"

echo "SSH public key added to the server for user '$user'."
