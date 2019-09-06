module MainHelper
  def class_for_flash(flash)
    case flash
    when "notice" then "success"
    when "alert" then "danger"
    else flash
    end
  end
end
