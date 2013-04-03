# generate\_ssh\_keys cookbook
This provides `generate_ssh_keys` and `authorized_keys` definitions.

# Install
Write Berksfile
```ruby
cookbook "generate_ssh_keys", git: ""
```

# Usage
```ruby
generate_ssh_keys "joker1007" do
  user joker1007
  home /home/joker1007
end

authorized_keys "joker1007" do
  user joker1007
  group joker1007
  home /home/joker1007
end
```

# Attributes

# Recipes

# Author

Author:: joker1007
