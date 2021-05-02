# frozen_string_literal

class ChangeAllowPasswordChangeDefaultValueInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :allow_password_change, from: false, to: true
  end
end
