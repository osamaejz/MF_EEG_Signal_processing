myFolder = 'D:\\NCAI-Neurocomputation Lab\\Custom tDCS Experiments\\MindFoster_tDCS_Paper\\Data\\2_38 Channels with ICA_Applied in SET\\Pre EO\\';
Files_dir =dir(fullfile(myFolder,'*.set'));
save_location = 'D:\\NCAI-Neurocomputation Lab\\Custom tDCS Experiments\\MindFoster_tDCS_Paper\\Data\\6_38 Channels Data in SET for processing after ICA\\MindFoster\\Post EO';

EEG_Data = {};
%fname = {};
comp_rej = {};
for k = 1:(length(Files_dir))
    name = strcat(myFolder, Files_dir(k).name);
    EEG = pop_loadset(name);
    EEG.filename
    EEG = pop_icflag(EEG,[0 0.25;0 0;0 0;0 0;0 0;0 0;0 0]); 
    EEG.filename
    
    comp_rej{1,k} = EEG.filename;
    comp_rej{2,k} = length(find(EEG.reject.gcompreject));
        
    length(EEG.reject)
    EEG1 = pop_subcomp(EEG, find(EEG.reject.gcompreject), 0);
    EEG_Data{k} = EEG1;
        
    %pop_saveset(EEG, EEG.filename, save_location)
end