module ApplicationHelper
  def fix_url(str)
    str.starts_with?('http://') ? str : "http://#{str}"
  end

  def format_date(d)
    d.strftime("%m/%d/%Y %I:%M%P %Z")
  end
end

# 05/20/2014 2:44pm EDT

# 2017-01-06 17:05:09 UTC

# 2017-01-06 17:05:09.537324