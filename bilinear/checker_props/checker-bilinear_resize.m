%!test
%! img = imread("../tests/in/sample1.png");
%! x = dlmread("../tests/in/factorx1.txt");
%! y = dlmread("../tests/in/factory1.txt");
%! resized = bilinear_resize(img, x, y);
%! resized_ref = dlmread("../tests/ref/bilinear/resized1.txt");
%! assert(max(max(abs(int32(resized) - resized_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample2.png");
%! x = dlmread("../tests/in/factorx2.txt");
%! y = dlmread("../tests/in/factory2.txt");
%! resized = bilinear_resize(img, x, y);
%! resized_ref = dlmread("../tests/ref/bilinear/resized2.txt");
%! assert(max(max(abs(int32(resized) - resized_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample2.png");
%! x = dlmread("../tests/in/factorx3.txt");
%! y = dlmread("../tests/in/factory3.txt");
%! resized = bilinear_resize(img, x, y);
%! resized_ref = dlmread("../tests/ref/bilinear/resized3.txt");
%! assert(max(max(abs(int32(resized) - resized_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample3.png");
%! x = dlmread("../tests/in/factorx4.txt");
%! y = dlmread("../tests/in/factory4.txt");
%! resized = bilinear_resize(img, x, y);
%! resized_ref = dlmread("../tests/ref/bilinear/resized4.txt");
%! assert(max(max(abs(int32(resized) - resized_ref))) <= 5);

%!test
%! img = imread("../tests/in/sample3.png");
%! x = dlmread("../tests/in/factorx5.txt");
%! y = dlmread("../tests/in/factory5.txt");
%! resized = bilinear_resize(img, x, y);
%! resized_ref = dlmread("../tests/ref/bilinear/resized5.txt");
%! assert(max(max(abs(resized - resized_ref))) <= 5);
