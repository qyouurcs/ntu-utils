function shrink_batch(directory)
fns = dir([directory '\\*.txt']);
save_d = [directory '_shrink'];
mkdir(save_d);
for fn = 1:numel(fns)
    ffn = fullfile(directory, fns(fn).name);
    data = importdata(ffn);
    ndata = zeros(size(data,1), 15 * 3);
    for i = 1:size(data,1)
        idata = data(i,:);
        idata = reshape(idata, 3, numel(idata)/3);
        idatan = shrink_skeletons(idata);
        idatan = reshape(idatan, [size(idatan,1) * size(idatan,2),1]);
        ndata(i,:) = idatan(:);
    end
    save_fn = fullfile(save_d, fns(fn).name);
    dlmwrite(save_fn, ndata, ' ');
end
end