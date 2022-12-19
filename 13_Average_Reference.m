clear all;
myFolder = 'D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\1_38 ch Data with surrod AVG add and A1A2 minus\Post EO\';
Files_dir =dir(fullfile(myFolder,'*.set'));

for k = 1:(length(Files_dir))
    name = strcat(myFolder, Files_dir(k).name);
    EEG = pop_loadset(name);   
    
    mean_val = mean(EEG.data); %(1,data points)

    for ref = 1:EEG.nbchan
        
        EEG.data(ref,:) = EEG.data(ref,:) - mean_val(1,:);
        EEG.ref = 'average';
        
    end
    EEG_Data{k} = EEG;
    
    pop_saveset(EEG, EEG.filename, 'D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\1_38 Channels Average Reference in SET\Post EO');
end

