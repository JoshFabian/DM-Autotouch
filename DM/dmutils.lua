function hasPixel(pixel)
  if getColor(pixel.x, pixel.y) == pixel.color then
    return true
  end
end

function hasPixels(pixels, count)
  local result = findColors(pixels.table, count, pixels.region)
  if next(result) ~= nil then
    return true
  end
end

function tapButton(pixel)
  if getColor(pixel.x, pixel.y) == pixel.color then
    ttap(1, pixel.x, pixel.y)
    usleep(Delay.animation)
  end
end
