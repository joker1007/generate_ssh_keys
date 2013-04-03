# generate\_ssh\_keys cookbook
This provides `generate_ssh_keys` and `authorized_keys` definitions.

# Install
Write Berksfile
```ruby
cookbook "generate_ssh_keys", git: "git://github.com/joker1007/generate_ssh_keys.git"
```

# Usage
```ruby
# Generate id_rsa and id_rsa.pub in /home/joker1007/.ssh
generate_ssh_keys "joker1007" do
  user "joker1007"
  home "/home/joker1007"
end

# Add id_rsa.pub to /home/joker1007/.ssh/authorized_keys
# if authorized_keys exists, nothing to do
authorized_keys "joker1007" do
  user "joker1007"
  group "joker1007"
  home "/home/joker1007"
end
```

# Attributes

# Recipes

# Author

Author:: joker1007
