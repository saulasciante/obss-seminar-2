function sampleEntropy = main(record, signal)
    m = 3;
    r = 0.15;
    Fs = 20;

    filename = sprintf('term-preterm-ehg-database-1.0.1/tpehgdb/%sm.mat', record);
    load(filename);
    sig = val(signal,:);
    sigLen = length(sig);

    % ignore first and last 180 s
    sig = sig(181*Fs:sigLen-181*Fs);
    
    sampleEntropy = sampEn(sig, m, r);
end