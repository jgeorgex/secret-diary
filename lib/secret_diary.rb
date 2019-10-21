class SecretDiary

  def diary_status
    false
  end

  def add_entry
    if diary_status == false
      "error"
    end
  end

  def get_entries
    if diary_status == false
      "error"
    end
  end

end
