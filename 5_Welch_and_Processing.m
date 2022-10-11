myFolder = 'D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\6_38 Channels Data in SET for processing after ICA\MindFoster\With Respect to Disease Condition\Stress\Healthy\Post EO\';
Files_dir =dir(fullfile(myFolder,'*.set'));
%save_location = 'D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\6_38 Channels Data in SET for processing after ICA\MindFoster\With Respect to Disease Condition\Depression\Depressed';

EEG_Data = {};
for k = 1:(length(Files_dir))
    name = strcat(myFolder, Files_dir(k).name);
    EEG = pop_loadset(name);
    EEG_Data{k} = EEG;
    %pop_saveset(EEG, EEG.filename, save_location)
end

% Welch, Topoplots and Relative Spectrum of all
fs = 500;
windowLength = fs*4; % for 4 sec window
noverlap = windowLength/2; % for 50% overlap
nfft = windowLength;

for i = 1:length (Files_dir);
    name = EEG_Data{i};
    sub_name{i} = name.filename;
    for j=1:38;
        name.data;
        [power(j,:),f] = pwelch(name.data(j,:),windowLength,noverlap,nfft,fs);
        p(i,j,:) = power(j,:);
        delta = find(f>=0 & f<4);
        theta = find(f>=4 & f<8);
        alpha = find(f>=8 & f<12);
        lower_alpha = find(f>=8 & f<10);
        upper_alpha = find(f>=10 & f<12);
        beta = find(f>=12 & f<30);
        lower_beta = find(f>=12 & f<18);
        mid_beta = find(f>=18 & f<21);
        upper_beta = find(f>=21 & f<30);
        gamma = find(f>=30 & f<200);
        meanallchan(i,j,:) = mean(p(i,j,:));
        relativepower(i,j,:) = p(i,j,:)/meanallchan(i,j,:);
               
        %Relative EEG Bands
        rp_delta (i,j,:) = relativepower (i,j,delta(:,:));
        rp_theta (i,j,:) = relativepower (i,j,theta(:,:));
        rp_alpha (i,j,:) = relativepower (i,j,alpha(:,:));
        rp_lower_alpha (i,j,:) = relativepower (i,j,lower_alpha(:,:));
        rp_upper_alpha (i,j,:) = relativepower (i,j,upper_alpha(:,:));
        rp_beta (i,j,:) = relativepower (i,j,beta(:,:));
        rp_lower_beta (i,j,:) = relativepower (i,j,lower_beta(:,:));
        rp_mid_beta (i,j,:) = relativepower (i,j,mid_beta(:,:));
        rp_upper_beta (i,j,:) = relativepower (i,j,upper_beta(:,:));
        rp_gamma (i,j,:) = relativepower (i,j,gamma(:,:));
        
        %Relative EEG Bands mean (subject wise)
        rp_delta_mean(i,j,:) = mean(relativepower (i,j,delta(:,:)));
        rp_theta_mean(i,j,:) = mean(relativepower (i,j,theta(:,:)));
        rp_alpha_mean(i,j,:) = mean(relativepower (i,j,alpha(:,:)));
        rp_lower_alpha_mean(i,j,:) = mean(relativepower (i,j,lower_alpha(:,:)));
        rp_upper_alpha_mean(i,j,:) = mean(relativepower (i,j,upper_alpha(:,:)));
        rp_beta_mean(i,j,:) = mean(relativepower (i,j,beta(:,:)));
        rp_lower_beta_mean(i,j,:) = mean(relativepower (i,j,lower_beta(:,:)));
        rp_mid_beta_mean(i,j,:) = mean(relativepower (i,j,mid_beta(:,:)));
        rp_upper_beta_mean(i,j,:) = mean(relativepower (i,j,upper_beta(:,:)));
        rp_gamma_mean(i,j,:) = mean(relativepower (i,j,gamma(:,:)));
        
        %Relative EEG Bands mean (all subject)
        rp_delta_mean_all_subj = mean(rp_delta_mean);
        rp_theta_mean_all_subj = mean(rp_theta_mean);
        rp_alpha_mean_all_subj = mean(rp_alpha_mean);
        rp_lower_alpha_mean_all_subj = mean(rp_lower_alpha_mean);
        rp_upper_alpha_mean_all_subj = mean(rp_upper_alpha_mean);
        rp_beta_mean_all_subj = mean(rp_beta_mean);
        rp_lower_beta_mean_all_subj = mean(rp_lower_beta_mean);
        rp_mid_beta_mean_all_subj = mean(rp_mid_beta_mean);
        rp_upper_beta_mean_all_subj = mean(rp_upper_beta_mean);
        rp_gamma_mean_all_subj = mean(rp_gamma_mean);
    end

end

Post_EO.name = sub_name; 
Post_EO.power = p;
Post_EO.meanallchan = meanallchan;
Post_EO.relativepower = relativepower;
Post_EO.rp_delta = rp_delta;
Post_EO.rp_theta = rp_theta;
Post_EO.rp_alpha = rp_alpha;
Post_EO.rp_lower_alpha = rp_lower_alpha;
Post_EO.rp_upper_alpha = rp_upper_alpha;
Post_EO.rp_beta = rp_beta;
Post_EO.rp_lower_beta = rp_lower_beta;
Post_EO.rp_mid_beta = rp_mid_beta;
Post_EO.rp_upper_beta = rp_upper_beta;
Post_EO.rp_gamma = rp_gamma;
Post_EO.rp_delta_mean = rp_delta_mean;
Post_EO.rp_theta_mean = rp_theta_mean;
Post_EO.rp_alpha_mean = rp_alpha_mean;
Post_EO.rp_lower_alpha_mean = rp_lower_alpha_mean;
Post_EO.rp_upper_alpha_mean = rp_upper_alpha_mean;
Post_EO.rp_beta_mean = rp_beta_mean;
Post_EO.rp_lower_beta_mean = rp_lower_beta_mean;
Post_EO.rp_mid_beta_mean = rp_mid_beta_mean;
Post_EO.rp_upper_beta_mean = rp_upper_beta_mean;
Post_EO.rp_gamma_mean = rp_gamma_mean;
Post_EO.rp_delta_mean_all_subj = rp_delta_mean_all_subj;
Post_EO.rp_theta_mean_all_subj = rp_theta_mean_all_subj;
Post_EO.rp_alpha_mean_all_subj = rp_alpha_mean_all_subj;
Post_EO.rp_lower_alpha_mean_all_subj = rp_lower_alpha_mean_all_subj;
Post_EO.rp_upper_alpha_mean_all_subj = rp_upper_alpha_mean_all_subj;
Post_EO.rp_beta_mean_all_subj = rp_beta_mean_all_subj;
Post_EO.rp_lower_beta_mean_all_subj = rp_lower_beta_mean_all_subj;
Post_EO.rp_mid_beta_mean_all_subj = rp_mid_beta_mean_all_subj;
Post_EO.rp_upper_beta_mean_all_subj = rp_upper_beta_mean_all_subj;
Post_EO.rp_gamma_mean_all_subj = rp_gamma_mean_all_subj;

save('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\6_38 Channels Data in SET for processing after ICA\MindFoster\With Respect to Disease Condition\Stress\Healthy\Post_EO_Features.mat', 'Post_EO')
