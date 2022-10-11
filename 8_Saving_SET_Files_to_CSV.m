
myFolder = 'D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\6_38 Channels Data in SET for processing after ICA\MindFoster\Post EO\';
Files_dir =dir(fullfile(myFolder,'*.set'));

EEG_Data = {};

save_location = 'C:\Users\Dell\Desktop\Post_EO\';

for k = 1:(length(Files_dir))
    name = strcat(myFolder, Files_dir(k).name);
    EEG = pop_loadset(name);
    fname = EEG.filename;
    fname = fname(1:length(fname)-4);
    fname = strcat(save_location, fname, '.csv');
    
    csvwrite(fname,transpose(EEG.data));
    EEG_Data{k} = EEG;
 
    %pop_saveset(EEG, EEG.filename, save_location)
end