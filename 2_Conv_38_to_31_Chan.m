myFolder = 'D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\EEG\True data post\EO_all_data\';
Files_dir =dir(myFolder);
EEG.etc.eeglabvers = '2020.0'; % this tracks which version of EEGLAB is being used, you may ignore it

matdata = {}
for k = 1:(length(Files_dir)-2)
    data = [];
    name = strcat(myFolder, Files_dir(k+2).name);
    EEG = pop_biosig(name);
    EEG.setname = Files_dir(k+2).name;
    EEG.data([25,29,31:35],:) = [];
    data(1,:) = EEG.data(1,:) - EEG.data(32,:);
    data(2,:) = EEG.data(2,:) - EEG.data(32,:);
    data(3,:) = EEG.data(3,:) - EEG.data(33,:);
    data(4,:) = EEG.data(4,:) - EEG.data(32,:);
    data(5,:) = EEG.data(5,:) - EEG.data(32,:);
    data(6,:) = EEG.data(6,:) - EEG.data(32,:);
    data(7,:) = EEG.data(7,:) - EEG.data(33,:);
    data(8,:) = EEG.data(8,:) - EEG.data(33,:);
    data(9,:) = EEG.data(9,:) - EEG.data(32,:);
    data(10,:) = EEG.data(10,:) - EEG.data(32,:);
    data(11,:) = EEG.data(11,:) - EEG.data(32,:);
    data(12,:) = EEG.data(12,:) - EEG.data(33,:);
    data(13,:) = EEG.data(13,:) - EEG.data(33,:);
    data(14,:) = EEG.data(14,:) - EEG.data(32,:);
    data(15,:) = EEG.data(15,:) - EEG.data(32,:);
    data(16,:) = EEG.data(16,:) - EEG.data(33,:);
    data(17,:) = EEG.data(17,:) - EEG.data(33,:);
    data(18,:) = EEG.data(18,:) - EEG.data(33,:);
    data(19,:) = EEG.data(19,:) - EEG.data(32,:);
    data(20,:) = EEG.data(20,:) - EEG.data(32,:);
    data(21,:) = EEG.data(21,:) - EEG.data(33,:);
    data(22,:) = EEG.data(22,:) - EEG.data(33,:);
    data(23,:) = EEG.data(23,:) - EEG.data(33,:);
    data(24,:) = EEG.data(24,:) - EEG.data(32,:);
    data(25,:) = EEG.data(25,:) - EEG.data(32,:);
    data(26,:) = EEG.data(26,:) - EEG.data(33,:);
    data(27,:) = EEG.data(27,:) - EEG.data(33,:);
    data(28,:) = EEG.data(28,:) - EEG.data(33,:);
    data(29,:) = EEG.data(29,:) - EEG.data(32,:);
    data(30,:) = EEG.data(30,:) - EEG.data(33,:);
    data(31,:) = EEG.data(31,:) - EEG.data(33,:);
    
    EEG.data = data;
    EEG.nbchan = 31;
    EEG = pop_chanedit(EEG , 'lookup' , 'E:\\eeglab_current\\eeglab2020_0\\plugins\\dipfit\\standard_BESA\\standard-10-5-cap385.elp' , 'load',{'C:\Users\Dell\Desktop\Standard-10-10-Cap31.ced' , 'filetype' , 'autodetect'});
    EEG_Data{k} = EEG;
    new_name = Files_dir(k+2).name;    
    pop_saveset(EEG, new_name(1: length(new_name)-4), 'D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\31 Channels Data in SET\Post EO');
end

