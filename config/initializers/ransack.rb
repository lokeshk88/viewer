Ransack.configure do |c|
  # Change whitespace stripping behavior.
  # Default is true
  c.strip_whitespace = false

  c.custom_arrows = {
    up_arrow: '<i class="custom-up-arrow-icon"></i>',
    down_arrow: 'U+02193',
    default_arrow: '<i class="default-arrow-icon"></i>'
  }
  
end