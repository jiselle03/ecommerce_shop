# frozen_string_literal: true

module Auth
  def current_user
    context[:current_user]
  end

  def error!(code, message, type)
    { error: { code:, message:, type: } }
  end

  def current_shop_id
    context[:current_user].shops.first&.id
  end

  def shop_admin?
    context[:current_user].role&.level == Role::SHOP_ADMIN_LEVEL
  end

  def super_admin?
    context[:current_user].role&.level == Role::SUPER_ADMIN_LEVEL
  end
end
