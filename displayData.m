function [h, display_array] = displayData(Images, start)
%Отображает 2D данные сохраненые в Images в виде сетки 10х10
%
  colormap(gray);
  row_count = 10;
  column_count = 10;
  display_array = zeros(28 * row_count, 28 * column_count);
  cur_ex = start;
  
  for row = 1:row_count
    for col = 1:column_count
      if cur_ex > size(Images, 2)
        break;
      end
      display_array((row - 1) * 28 + 1:(row) * 28,(col - 1) * 28 + 1:(col) * 28) = reshape(Images(:, cur_ex), 28, 28);
      cur_ex = cur_ex + 1;
    end
  end
  
  h = imagesc(display_array, [-1 1]);
  
  axis image off;
  drawnow;
end