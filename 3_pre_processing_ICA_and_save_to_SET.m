
% location to read data
myFolder = 'D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\Hira tDCS EEG Data\2_31_Channels_Data_in_SET\test\';
Files_dir =dir(fullfile(myFolder,'*.set'));
%location t0 save set file
save_location = 'D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\Hira tDCS EEG Data\3_31_channels_Data_after_ICA_Applied\test';

EEG_Data = {}
for k = 1:(length(Files_dir))
    name = strcat(myFolder, Files_dir(k).name);
    EEG = pop_loadset(name);
        
    EEG = pop_runica(EEG, 'icatype', 'runica', 'extended',1,'interrupt','on');
    EEG  = iclabel(EEG);
    EEG.etc.ic_classification.ICLabel.classes
    EEG.etc.ic_classification.ICLabel.classifications
    
    EEG_Data{k} = EEG;
    
    pop_saveset(EEG, EEG.filename, save_location)
end
