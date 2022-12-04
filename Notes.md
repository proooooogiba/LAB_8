mailcatcher - port 1080

Confirm email/reset password:

https://stackoverflow.com/questions/8186584/how-do-i-set-up-email-confirmation-with-devise

if something doesn't work, try to add:

data: {turbo: false} at the submit.

There are som pathes to login, logout and etc:

destroy_user_session_path, new_user_session_path, new_user_registartion



Small tutorial:

1. add devise in gemfile
2. rails g devise User
3. rails db:migrate
4. rails g devise:views
5.
