module Widget
  def banner_widget pos
    src = get_src( pos )
    content = render_template( pos, src )
    wrap_content( pos, content )
  end

  def get_src pos
    case pos
    when :top
      { type: :banner, src: '/img/banner-leaderboard-1.png' }
    when :right
      { type: :banner, src: '/img/banner-vertical-1.gif' }
    when :bottom
      { type: :banner, src: '/img/banner-leaderboard-1.jpg' }
    when :middle
      { type: :banner, src: '/img/banner-middle-1.gif' }            
    end
  end

  def render_template pos, src
    case pos
    when :top
      top_banner_template( src )
    when :right
      right_banner_template( src )
    when :bottom
      bottom_banner_template( src )      
    when :middle
      middle_banner_template( src )      
    end
  end

  def top_banner_template src
    case src[:type]
    when :banner
      content = link_to image_tag(src[:src], size: '728x90', alt: 'top-banner'), 'http://www.example-top.com/', target: '_blank'
    end
  end

  def right_banner_template src
    case src[:type]
    when :banner
      content = link_to image_tag(src[:src], size: '120x240', alt: 'right-banner'), 'http://www.example-right.com/', target: '_blank'    
    end
  end

  def bottom_banner_template src
    case src[:type]
    when :banner
      content = link_to image_tag(src[:src], size: '728x90', alt: 'botttom-banner'), 'http://www.example-bottom.com/', target: '_blank'    
    end
  end

  def middle_banner_template src
    case src[:type]
    when :banner
      content = link_to image_tag(src[:src], size: '300x300', alt: 'middle-banner'), 'http://www.example-middle.com/', target: '_blank'    
    end
  end

  def wrap_content pos, content
    case pos
    when :top
      "<div class=\"banner top-banner\">#{content}</div>".html_safe      
    when :right
      "<div class=\"banner right-banner\">#{content}</div>".html_safe      
    when :bottom
      "<div class=\"banner bottom-banner\">#{content}</div>".html_safe
    when :middle
      "<div class=\"banner middle-banner\">#{content}</div>".html_safe      
    end
  end
end


#   content = widget_content( position )
#   def widget_content position
#     get
#     case type
#     when :banner
#       content = link_to image_tag('/img/banner-leaderboard-1.png', size: '728x90', alt: 'top-banner'), 'http://www.example-top.com/', target: '_blank'
#     when :flash
#       flash = "<object type='application/x-shockwave-flash' data='/swf/banner-flash-1.swf' width='728' height='90'></object>"
#       content = link_to 'http://www.example-top.com/', target: '_blank' do
#         flash.html_safe
#       end
#     when :html
#       content = "<h1>Hello world banner</h1>"
#     end
#   end

#   def widget_template position, content
#     case position
#     when :top
#       "#{content}".html_safe      
#     when :right
#       "#{content}".html_safe      
#     end
#   end
# end
