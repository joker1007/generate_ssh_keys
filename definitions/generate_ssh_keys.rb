define :generate_ssh_keys, :user => nil, :home => nil, :passphrase => nil do
  username = params[:user]
  home = params[:home] || "/home/#{username}"
  passphrase = params[:passphrase]

  raise ":user be provided." if username.nil?

  Chef::Log.debug("generate ssh keys for #{username}.")

  execute "generate_ssh_keys_for_#{username}" do
    user username
    creates "#{home}/.ssh/id_rsa.pub"
    command "ssh-keygen -t rsa -q -f #{home}/.ssh/id_rsa -P \"#{passphrase}\""
  end
end
