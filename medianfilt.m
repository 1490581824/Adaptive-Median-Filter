function [ y ] = medianfilt( imageWithNoise )

% ��ֵ�˲��㷨
% ָ��ģ��ߴ�
boxSize = 3;
template = zeros(boxSize);

y = imageWithNoise;
[rows, cols] = size(imageWithNoise);
for i = 1:rows-boxSize+1
    for j = 1:cols-boxSize+1
        % ȡģ��������
        template = imageWithNoise(i:i+(boxSize-1),j:j+(boxSize-1));
        % ����ֵ�滻ģ�����ĵ�����ֵ
        m = median(template(:));
        y(i+(boxSize-1)/2,j+(boxSize-1)/2) = m;
    end
end
end

