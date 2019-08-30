module MainHelper
  def class_for_flash(flash)
    flash == "notice" ? "success" : flash == "alert" ? "danger" : flash
  end
end
