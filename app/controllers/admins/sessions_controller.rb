class Admins::SessionsController < Devise::SessionsController
  def guest_sign_in
    admin = Admin.find_or_create_by!(email: 'guest@example.com') do |admin|
      admin.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
    end
    sign_in admin
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
