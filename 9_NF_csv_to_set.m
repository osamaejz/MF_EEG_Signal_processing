filename = 'C:\Users\Dell\Desktop\NF7_Ses4_saadeo.csv';
data = csvread(filename,1,1);
data = data(:,2:23);
save_location = 'C:\Users\Dell\Desktop';

eeglab
load NF_loc_22.mat

EEG.data = data;
EEG.nbchan = 22;
EEG.chanlocs = NF_loc_22;
EEG.setname = filename(1: length(filename)-4);
EEG.filename = filename(1: length(filename)-4);

pop_saveset(EEG, filename(1: length(filename)-4), save_location);
