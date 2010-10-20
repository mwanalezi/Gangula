# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  FLASH_NOTICE_KEYS = [:error, :notice, :warning]

  def flash_message
    messages = ""
    FLASH_NOTICE_KEYS.each {|type|
  		if flash[type]
        messages += "<div class=\"flash_messages\">"
        messages += "<p class=\"#{type}\">#{flash[type]}</p>"
        messages += "</div>"
  		end
    }
    messages
  end

  def javascript(*files)
    content_for(:head) { javascript_include_tag(*files) }
  end

  def stylesheet(*files)
    content_for(:head) { stylesheet_link_tag(*files) }
  end

end
