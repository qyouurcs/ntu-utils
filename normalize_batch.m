function normalize_batch(directory)
fns = dir([directory '\\*.txt']);
save_d = [directory '_norm'];
mkdir(save_d);
for fn = 1:numel(fns)
    ffn = fullfile(directory, fns(fn).name);
    data = importdata(ffn);
    ndata = zeros(size(data,1), size(data,2));
    for i = 1:size(data,1)
        idata = data(i,:);
        idata = reshape(idata, 3, numel(idata)/3);
        idatan = normalize_skeleton(idata);
        idatan = reshape(idatan, [size(idata,1) * size(idata,2),1]);
        ndata(i,:) = idatan(:);
    end
    save_fn = fullfile(save_d, fns(fn).name);
    dlmwrite(save_fn, ndata, ' ');
end
end