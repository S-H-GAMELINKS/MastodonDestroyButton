require 'net/ssh'

opt = {
    :keys => 'your key', 
    :passphrase => 'your passphrase',
    :port => 'your port'
}

Net::SSH.start('your domain', 'your username', opt) do |ssh|
    puts ssh.exec! 'cd .. && cd home/mastodon && sudo rm -rf live'
end