module Admin::CategoriesHelper
  def button_text
    if action_name == "index"
      "新規登録"
    elsif action_name == "edit"
      "変更を更新"
    end
  end
end
