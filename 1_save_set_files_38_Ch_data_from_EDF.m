myFolder = 'D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\Hira tDCS EEG Data\1_31_Channels_Data_in_edf\';
Files_dir =dir(myFolder);
EEG.etc.eeglabvers = '2020.0'; % this tracks which version of EEGLAB is being used, you may ignore it
save_location = 'D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\Hira tDCS EEG Data\2_31_Channels_Data_in_SET';

matdata = {};
for k = 1:(length(Files_dir)-2)
    name = strcat(myFolder, Files_dir(k+2).name);
    EEG = pop_biosig(name,'channels',[1:31]);
    EEG.setname = Files_dir(k+2).name;
    EEG = pop_chanedit(EEG , 'lookup' , 'E:\\eeglab_current\\eeglab2020_0\\plugins\\dipfit\\standard_BESA\\standard-10-5-cap385.elp' , 'load',{'C:\Users\Dell\Desktop\Standard-10-10-Cap31.ced' , 'filetype' , 'autodetect'});
    %EEG_Data{k} = EEG;
    new_name = Files_dir(k+2).name;    
    pop_saveset(EEG, new_name(1: length(new_name)-4), save_location);
end
