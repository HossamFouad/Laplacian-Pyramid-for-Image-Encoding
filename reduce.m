function g = reduce(I)

    % Input:
    % I: the input image
    % Output:
    % g: the image after Gaussian blurring and subsampling

    % Please follow the instructions to fill in the missing commands.
    
    % 1) Create a Gaussian kernel of size 5x5 and 
    % standard deviation equal to 1 (MATLAB command fspecial)
    h = fspecial('gaussian', [5 5], 1); 
    % 2) Convolve the input image with the filter kernel (MATLAB command imfilter)
    % Tip: Use the default settings of imfilter
    I= imfilter(I,h);
    % 3) Subsample the image by a factor of 2
    % i.e., keep only 1st, 3rd, 5th, .. rows and columns
     g=I(1:2:end,1:2:end,:);
end
