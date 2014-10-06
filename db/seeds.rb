admin = User.new first_name: 'INSOWigs', last_name: 'Admin', email: 'admin@insowigs.com', password: 'Success1!', password_confirmation: 'Success1!', admin: true
admin.skip_confirmation!
admin.save!