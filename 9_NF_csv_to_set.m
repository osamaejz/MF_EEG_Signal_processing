read_folder = 'C:\Users\Dell\Desktop\NF Data_CSV\';
Files_dir =dir(read_folder);
save_location = 'C:\Users\Dell\Desktop\NF Data_SET';

eeglab
load NF_loc_22.mat
close all


matdata = {};
for k = 1:(length(Files_dir)-2)
    filename = strcat(read_folder, Files_dir(k+2).name);
    data = csvread(filename,1,1);
    data = data(:,2:23);
    EEG.data = data;
    EEG.nbchan = 22;

    EEG = pop_chanedit(EEG , 'lookup' , 'E:\\eeglab_current\\eeglab2020_0\\plugins\\dipfit\\standard_BESA\\standard-10-5-cap385.elp' , 'load',{'E:\eeglab_current\eeglab2020_0\NF_Cap22.ced' , 'filetype' , 'autodetect'});
    new_name = Files_dir(k+2).name;    
    new_name = new_name(1: length(new_name)-4);
    EEG.setname = new_name;
    pop_saveset(EEG, new_name, save_location);

end
