require 'rails_helper'

RSpec.describe 'Likes', type: :system do
  describe 'いいね、いいね解除' do
    it 'ログインユーザーがいいね/いいね解除ができること', js: true do
      bob = create(:user,
                   email: 'bob@example.com',
                   password: 'password_bob')
      post = create(:micropost)

      visit '/sign_in'
      fill_in 'メールアドレス', with: bob.email
      fill_in 'パスワード', with: bob.password
      find('.signin-btn').click
      expect(current_path).to eq root_path

      # いいねする
      visit "microposts/#{post.id}"
      expect(page).to have_content '本当に美味しかった'

      find('.like-btn').click
      sleep 1
      expect(post.likes.count).to eq(1)

      # いいね解除する
      find('.liked-btn').click
      sleep 1
      expect(post.likes.count).to eq(0)
    end
  end
end
