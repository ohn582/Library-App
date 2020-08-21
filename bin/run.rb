require_relative '../config/environment'


cli = Layout.new
start_user = cli.greet

while start_user == nil
    start_user = cli.greet
end

cli.user = start_user

cli.main_menu(start_user)
