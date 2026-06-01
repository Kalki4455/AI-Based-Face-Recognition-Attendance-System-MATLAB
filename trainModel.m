correct = 0;

for i = 1:numel(imds.Files)

    img = readimage(imds,i);

    img = imresize(img,[64 64]);

    img = rgb2gray(img);

    feature = double(img(:))';

    prediction = predict(Mdl,feature);

    actual = string(imds.Labels(i));

    if prediction == actual
        correct = correct + 1;
    end

end

accuracy = (correct/numel(imds.Files))*100;

fprintf('Accuracy = %.2f%%\n',accuracy);