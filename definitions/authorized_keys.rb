define :authorized_keys, :user => nil, :group => nil, :home => nil do
  username = params[:user]
  groupname = params[:group]
  home = params[:home] || "/home/#{username}"

  raise ":user_account should be provided." if username.nil?

  Chef::Log.debug("generate authorized_keys for #{username}.")

  execute "authorized_keys_for_#{username}" do
    user username
    group groupname if groupname
    creates "#{home}/.ssh/authorized_keys"
    command "cat #{home}/.ssh/id_rsa.pub >> #{home}/.ssh/authorized_keys"
  end
end
