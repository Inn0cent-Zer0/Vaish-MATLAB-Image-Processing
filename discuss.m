maida = zeros(20, 20); % Initialize maida as a 20x20 matrix of zeros
for i = 1:20
    for j = 1:20
        maida(i, j) = i * j; % Assign values to maida
    end
end

% Create the final image by combining maida and its transformations
maida_combined = [maida, fliplr(maida); flipud(maida), flipud(fliplr(maida))];

% Display the combined image
imagesc(maida_combined);
axis square;
colorbar;

% Generate random data xer
xer = rand(100, 100);

% Display xer using a grayscale colormap
figure; % Open a new figure window
imagesc(xer);
axis square;
colormap gray;
colorbar;
