clear all;
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Pre_EC_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Pre_EO_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Post_EC_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Post_EO_Features.mat');

%For PreEO, PreEC, and PostEC
%MF_Depressed Subj: S3,S4,S5,S6,S7,S10,S16,S23,S25
%MF_Depressed Subj's Index: 19,20,21,22,23,1,7,15,17
%MF_Healthy Subj: S1,S2,S8,S9,S11,S12,S13,S14,S15,S17,S18,S19,S20,S21,S22,S24
%MF_Healthy Subj's index: %MF_Healthy Subj's index: 11,18,24,25,2,3,4,5,6,8,9,10,12,13,14,16

%For PostEO
%MF_Depressed Subj: S3,S4,S5,S6,S7,S10,S16,S23,S25
%MF_Depressed Subj's Index: 3,4,5,6,7,10,16,23,25
%MF_Healthy Subj: S1,S2,S8,S9,S11,S12,S13,S14,S15,S17,S18,S19,S20,S21,S22,S24
%MF_Healthy Subj's index: %MF_Healthy Subj's index: %1,2,8,9,11,12,13,14,15,17,18,19,20,21,22,24

%For Healthy
a =1;
for i = [1,7,15,17,19:23];
    D_name{a} = Pre_EO_Features.name(:,i);
    D_power(a,:,:) = Pre_EO_Features.power(i,:,:);
    D_meanallchan(a,:) = Pre_EO_Features.meanallchan(i,:);
    D_relativepower(a,:,:) = Pre_EO_Features.relativepower(i,:,:);
    D_rp_delta(a,:,:) = Pre_EO_Features.rp_delta(i,:,:);
    D_rp_theta(a,:,:) = Pre_EO_Features.rp_theta(i,:,:);
    D_rp_alpha(a,:,:) = Pre_EO_Features.rp_alpha(i,:,:);
    D_rp_lower_alpha(a,:,:) = Pre_EO_Features.rp_lower_alpha(i,:,:);
    D_rp_upper_alpha(a,:,:) = Pre_EO_Features.rp_upper_alpha(i,:,:);
    D_rp_beta(a,:,:) = Pre_EO_Features.rp_beta(i,:,:);
    D_rp_lower_beta(a,:,:) = Pre_EO_Features.rp_lower_beta(i,:,:);
    D_rp_mid_beta(a,:,:) = Pre_EO_Features.rp_mid_beta(i,:,:);
    D_rp_upper_beta(a,:,:) = Pre_EO_Features.rp_upper_beta(i,:,:);
    D_rp_gamma(a,:,:) = Pre_EO_Features.rp_gamma(i,:,:);
    D_rp_delta_mean(a,:) = Pre_EO_Features.rp_delta_mean(i,:);
    D_rp_theta_mean(a,:) = Pre_EO_Features.rp_theta_mean(i,:);
    D_rp_alpha_mean(a,:) = Pre_EO_Features.rp_alpha_mean(i,:);
    D_rp_lower_alpha_mean(a,:) = Pre_EO_Features.rp_lower_alpha_mean(i,:);
    D_rp_upper_alpha_mean(a,:) = Pre_EO_Features.rp_upper_alpha_mean(i,:);
    D_rp_beta_mean(a,:) = Pre_EO_Features.rp_beta_mean(i,:);
    D_rp_lower_beta_mean(a,:) = Pre_EO_Features.rp_lower_beta_mean(i,:);
    D_rp_mid_beta_mean(a,:) = Pre_EO_Features.rp_mid_beta_mean(i,:);
    D_rp_upper_beta_mean(a,:) = Pre_EO_Features.rp_upper_beta_mean(i,:);
    D_rp_gamma_mean(a,:) = Pre_EO_Features.rp_gamma_mean(i,:);
    a = a+1;
end    
    D_rp_delta_mean_all_subj = mean(D_rp_delta_mean);
    D_rp_theta_mean_all_subj = mean(D_rp_theta_mean);
    D_rp_alpha_mean_all_subj = mean(D_rp_alpha_mean);
    D_rp_lower_alpha_mean_all_subj = mean(D_rp_lower_alpha_mean);
    D_rp_upper_alpha_mean_all_subj = mean(D_rp_upper_alpha_mean);
    D_rp_beta_mean_all_subj = mean(D_rp_beta_mean);
    D_rp_lower_beta_mean_all_subj = mean(D_rp_lower_beta_mean);
    D_rp_mid_beta_mean_all_subj = mean(D_rp_mid_beta_mean);
    D_rp_upper_beta_mean_all_subj = mean(D_rp_upper_beta_mean);    

Depressed_Features.D_name = D_name;
Depressed_Features.D_power = D_power;
Depressed_Features.D_meanallchan = D_meanallchan;
Depressed_Features.D_relativepower = D_relativepower;
Depressed_Features.D_rp_delta = D_rp_delta;
Depressed_Features.D_rp_theta = D_rp_theta;
Depressed_Features.D_rp_alpha = D_rp_alpha;
Depressed_Features.D_rp_lower_alpha = D_rp_lower_alpha;
Depressed_Features.D_rp_upper_alpha = D_rp_upper_alpha;
Depressed_Features.D_rp_beta = D_rp_beta;
Depressed_Features.D_rp_lower_beta = D_rp_lower_beta;
Depressed_Features.D_rp_mid_beta = D_rp_mid_beta;
Depressed_Features.D_rp_upper_beta = D_rp_upper_beta;
Depressed_Features.D_rp_gamma = D_rp_gamma;
Depressed_Features.D_rp_delta_mean = D_rp_delta_mean;
Depressed_Features.D_rp_theta_mean = D_rp_theta_mean;
Depressed_Features.D_rp_alpha_mean = D_rp_alpha_mean;
Depressed_Features.D_rp_lower_alpha_mean = D_rp_lower_alpha_mean;
Depressed_Features.D_rp_upper_alpha_mean = D_rp_upper_alpha_mean;
Depressed_Features.D_rp_beta_mean = D_rp_beta_mean;
Depressed_Features.D_rp_lower_beta_mean = D_rp_lower_beta_mean;
Depressed_Features.D_rp_mid_beta_mean = D_rp_mid_beta_mean;
Depressed_Features.D_rp_upper_beta_mean = D_rp_upper_beta_mean;
Depressed_Features.D_rp_gamma_mean = D_rp_gamma_mean;
Depressed_Features.D_rp_delta_mean_all_subj = D_rp_delta_mean_all_subj;
Depressed_Features.D_rp_theta_mean_all_subj = D_rp_theta_mean_all_subj;
Depressed_Features.D_rp_alpha_mean_all_subj = D_rp_alpha_mean_all_subj;
Depressed_Features.D_rp_lower_alpha_mean_all_subj = D_rp_lower_alpha_mean_all_subj;
Depressed_Features.D_rp_upper_alpha_mean_all_subj = D_rp_upper_alpha_mean_all_subj;
Depressed_Features.D_rp_beta_mean_all_subj = D_rp_beta_mean_all_subj;
Depressed_Features.D_rp_lower_beta_mean_all_subj = D_rp_lower_beta_mean_all_subj;
Depressed_Features.D_rp_mid_beta_mean_all_subj = D_rp_mid_beta_mean_all_subj;
Depressed_Features.D_rp_upper_beta_mean_all_subj = D_rp_upper_beta_mean_all_subj;  

Pre_EO_Features.Depressed_Features = Depressed_Features;

%For Healthy
b =1;
for j = [2:6,8:14,16,18,24:25];
    H_name{b} = Pre_EO_Features.name(:,j);
    H_power(b,:,:) = Pre_EO_Features.power(j,:,:);
    H_meanallchan(b,:) = Pre_EO_Features.meanallchan(j,:);
    H_relativepower(b,:,:) = Pre_EO_Features.relativepower(j,:,:);
    H_rp_delta(b,:,:) = Pre_EO_Features.rp_delta(j,:,:);
    H_rp_theta(b,:,:) = Pre_EO_Features.rp_theta(j,:,:);
    H_rp_alpha(b,:,:) = Pre_EO_Features.rp_alpha(j,:,:);
    H_rp_lower_alpha(b,:,:) = Pre_EO_Features.rp_lower_alpha(j,:,:);
    H_rp_upper_alpha(b,:,:) = Pre_EO_Features.rp_upper_alpha(j,:,:);
    H_rp_beta(b,:,:) = Pre_EO_Features.rp_beta(j,:,:);
    H_rp_lower_beta(b,:,:) = Pre_EO_Features.rp_lower_beta(j,:,:);
    H_rp_mid_beta(b,:,:) = Pre_EO_Features.rp_mid_beta(j,:,:);
    H_rp_upper_beta(b,:,:) = Pre_EO_Features.rp_upper_beta(j,:,:);
    H_rp_gamma(b,:,:) = Pre_EO_Features.rp_gamma(j,:,:);
    H_rp_delta_mean(b,:) = Pre_EO_Features.rp_delta_mean(j,:);
    H_rp_theta_mean(b,:) = Pre_EO_Features.rp_theta_mean(j,:);
    H_rp_alpha_mean(b,:) = Pre_EO_Features.rp_alpha_mean(j,:);
    H_rp_lower_alpha_mean(b,:) = Pre_EO_Features.rp_lower_alpha_mean(j,:);
    H_rp_upper_alpha_mean(b,:) = Pre_EO_Features.rp_upper_alpha_mean(j,:);
    H_rp_beta_mean(b,:) = Pre_EO_Features.rp_beta_mean(j,:);
    H_rp_lower_beta_mean(b,:) = Pre_EO_Features.rp_lower_beta_mean(j,:);
    H_rp_mid_beta_mean(b,:) = Pre_EO_Features.rp_mid_beta_mean(j,:);
    H_rp_upper_beta_mean(b,:) = Pre_EO_Features.rp_upper_beta_mean(j,:);
    H_rp_gamma_mean(b,:) = Pre_EO_Features.rp_gamma_mean(j,:);
    b = b+1;
end    
    H_rp_delta_mean_all_subj = mean(H_rp_delta_mean);
    H_rp_theta_mean_all_subj = mean(H_rp_theta_mean);
    H_rp_alpha_mean_all_subj = mean(H_rp_alpha_mean);
    H_rp_lower_alpha_mean_all_subj = mean(H_rp_lower_alpha_mean);
    H_rp_upper_alpha_mean_all_subj = mean(H_rp_upper_alpha_mean);
    H_rp_beta_mean_all_subj = mean(H_rp_beta_mean);
    H_rp_lower_beta_mean_all_subj = mean(H_rp_lower_beta_mean);
    H_rp_mid_beta_mean_all_subj = mean(H_rp_mid_beta_mean);
    H_rp_upper_beta_mean_all_subj = mean(H_rp_upper_beta_mean);    

Healthy_Features.H_name = H_name;
Healthy_Features.H_power = H_power;
Healthy_Features.H_meanallchan = H_meanallchan;
Healthy_Features.H_relativepower = H_relativepower;
Healthy_Features.H_rp_delta = H_rp_delta;
Healthy_Features.H_rp_theta = H_rp_theta;
Healthy_Features.H_rp_alpha = H_rp_alpha;
Healthy_Features.H_rp_lower_alpha = H_rp_lower_alpha;
Healthy_Features.H_rp_upper_alpha = H_rp_upper_alpha;
Healthy_Features.H_rp_beta = H_rp_beta;
Healthy_Features.H_rp_lower_beta = H_rp_lower_beta;
Healthy_Features.H_rp_mid_beta = H_rp_mid_beta;
Healthy_Features.H_rp_upper_beta = H_rp_upper_beta;
Healthy_Features.H_rp_gamma = H_rp_gamma;
Healthy_Features.H_rp_delta_mean = H_rp_delta_mean;
Healthy_Features.H_rp_theta_mean = H_rp_theta_mean;
Healthy_Features.H_rp_alpha_mean = H_rp_alpha_mean;
Healthy_Features.H_rp_lower_alpha_mean = H_rp_lower_alpha_mean;
Healthy_Features.H_rp_upper_alpha_mean = H_rp_upper_alpha_mean;
Healthy_Features.H_rp_beta_mean = H_rp_beta_mean;
Healthy_Features.H_rp_lower_beta_mean = H_rp_lower_beta_mean;
Healthy_Features.H_rp_mid_beta_mean = H_rp_mid_beta_mean;
Healthy_Features.H_rp_upper_beta_mean = H_rp_upper_beta_mean;
Healthy_Features.H_rp_gamma_mean = H_rp_gamma_mean;
Healthy_Features.H_rp_delta_mean_all_subj = H_rp_delta_mean_all_subj;
Healthy_Features.H_rp_theta_mean_all_subj = H_rp_theta_mean_all_subj;
Healthy_Features.H_rp_alpha_mean_all_subj = H_rp_alpha_mean_all_subj;
Healthy_Features.H_rp_lower_alpha_mean_all_subj = H_rp_lower_alpha_mean_all_subj;
Healthy_Features.H_rp_upper_alpha_mean_all_subj = H_rp_upper_alpha_mean_all_subj;
Healthy_Features.H_rp_beta_mean_all_subj = H_rp_beta_mean_all_subj;
Healthy_Features.H_rp_lower_beta_mean_all_subj = H_rp_lower_beta_mean_all_subj;
Healthy_Features.H_rp_mid_beta_mean_all_subj = H_rp_mid_beta_mean_all_subj;
Healthy_Features.H_rp_upper_beta_mean_all_subj = H_rp_upper_beta_mean_all_subj;  

Pre_EO_Features.Healthy_Features = Healthy_Features;

save('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Pre_EO_Features.mat', 'Pre_EO_Features')

