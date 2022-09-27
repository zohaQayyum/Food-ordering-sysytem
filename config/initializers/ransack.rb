def order_indicator
  return if @hide_indicator || no_sort_direction_specified?
  if @current_dir == 'desc'.freeze
    up_arrow
  else
    down_arrow
  end
end

