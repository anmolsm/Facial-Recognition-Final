function V = orl_data(I)

    
% Reduces the size of the images (by a factor 0.5) 
% Set to 0 to avoid reducing. Set to 1 to reduce.
reducesize = 1; 
    
% thepath = '../data/orl-faces/';

% Create the data matrix
if reducesize, V = zeros(46*56,400); 
else V = zeros(92*112,400); 
end

% Step through each subject and each image
fprintf('Reading in the images...\n');
i = 1;

	
	if reducesize,
	    V(:,i) = reshape(imresize(I,0.5,'bilinear'),[46*56, 1]);
	else
	    V(:,i) = reshape(I,[92*112, 1]);
	end

fprintf('\n');

% Same preprocessing 
minval = min(V);
V = V - ones(size(V,1),1)*minval;
maxval = max(V);
V = (V*255) ./ (ones(size(V,1),1)*maxval);

% Additionally, this is required to avoid having any exact zeros:
% (divergence objective cannot handle them!)
V = max(V,1e-4);

V = V/10000;


% Done!
