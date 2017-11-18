function remove_center(directory)
fns = dir([directory '\\*.txt']);
save_d = [directory '_rm_center'];
mkdir(save_d);
for fn = 1:numel(fns)
    ffn = fullfile(directory, fns(fn).name);
    data = importdata(ffn);
    ndata = zeros(size(data,1), size(data,2));
    for i = 1:size(data,1)
        idata = data(i,:);
        idata = reshape(idata, 3, numel(idata)/3);
        %idatan = normalize_skeleton(idata);
        idata = idata - repmat(idata(:,1), 1, size(idata,2));
        idata = reshape(idata, [size(idata,1) * size(idata,2),1]);
        ndata(i,:) = idata(:);
    end
    save_fn = fullfile(save_d, fns(fn).name);
    dlmwrite(save_fn, ndata, ' ');
end
end