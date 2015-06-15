Model.find(:all, :conditions => ['first_name LIKE ?', "%#{search_term}%"], ['last_name LIKE ?', "%#{search_term}"], ['email LIKE?', "%#{search_term}"])
