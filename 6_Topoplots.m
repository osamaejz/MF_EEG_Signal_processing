load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\6_38 Channels Data in SET for processing after ICA\MindFoster\With Respect to Disease Condition\Depression\Depressed\Pre_EO_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\6_38 Channels Data in SET for processing after ICA\MindFoster\With Respect to Disease Condition\Depression\Depressed\Post_EO_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\6_38 Channels Data in SET for processing after ICA\MindFoster\With Respect to Disease Condition\Depression\Depressed\Pre_EC_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\6_38 Channels Data in SET for processing after ICA\MindFoster\With Respect to Disease Condition\Depression\Depressed\Post_EC_Features.mat');
load('locs38.mat');

% Topoplots of each EEG band mean of all subjects
std_chantopo({Pre_EO.rp_delta_mean_all_subj(:,:) Post_EO.rp_delta_mean_all_subj(:,:)},'chanlocs', a, 'titles', {'Delta Pre EO','Delta Post EO'})
std_chantopo({Pre_EO.rp_theta_mean_all_subj(:,:) Post_EO.rp_theta_mean_all_subj(:,:)},'chanlocs', a, 'titles', {'Theta Pre EO','Theta Post EO'})
std_chantopo({Pre_EO.rp_alpha_mean_all_subj(:,:) Post_EO.rp_alpha_mean_all_subj(:,:)},'chanlocs', a, 'titles', {'Alpha Pre EO','Alpha Post EO'})
std_chantopo({Pre_EO.rp_lower_alpha_mean_all_subj(:,:) Post_EO.rp_lower_alpha_mean_all_subj(:,:)},'chanlocs', a, 'titles', {'Lower Alpha Pre EO','Lower Alpha Post EO'})
std_chantopo({Pre_EO.rp_upper_alpha_mean_all_subj(:,:) Post_EO.rp_upper_alpha_mean_all_subj(:,:)},'chanlocs', a, 'titles', {'Upper Alpha Pre EO','Upper Alpha Post EO'})
std_chantopo({Pre_EO.rp_beta_mean_all_subj(:,:) Post_EO.rp_beta_mean_all_subj(:,:)},'chanlocs', a, 'titles', {'Beta Pre EO','Beta Post EO'})
std_chantopo({Pre_EO.rp_lower_beta_mean_all_subj(:,:) Post_EO.rp_lower_beta_mean_all_subj(:,:)},'chanlocs', a, 'titles', {'Lower Beta Pre EO','Lower Beta Post EO'})
std_chantopo({Pre_EO.rp_mid_beta_mean_all_subj(:,:) Post_EO.rp_mid_beta_mean_all_subj(:,:)},'chanlocs', a, 'titles', {'Mid Beta Pre EO','Mid Beta Post EO'})
std_chantopo({Pre_EO.rp_upper_beta_mean_all_subj(:,:) Post_EO.rp_upper_beta_mean_all_subj(:,:)},'chanlocs', a, 'titles', {'Upper Beta Pre EO','Upper Beta Post EO'})
std_chantopo({Pre_EO.rp_gamma_mean_all_subj(:,:) Post_EO.rp_gamma_mean_all_subj(:,:)},'chanlocs', a, 'titles', {'Gamma Pre EO','Gamma Post EO'})

% Topoplots upper alpha of each subject

min_val = [min(min(Pre_EO.rp_theta_mean)), min(min(Post_EO.rp_theta_mean))];
min_value = floor(min(min_val)); 

max_val = [max(max(Pre_EO.rp_theta_mean)), max(max(Post_EO.rp_theta_mean))];
max_value = ceil(max(max_val)); 

for i = 1:25;
    str1 = strcat('Subj', int2str(i),' Theta Pre EO');
    str2 = strcat('Subj', int2str(i),' Theta Post EO');

    std_chantopo({Pre_EO.rp_theta_mean(i,:) Post_EO.rp_theta_mean(i,:)},'chanlocs', locs, 'titles', {str1,  str2}, 'ylim', [min_value, max_value]);

end

std_chantopo({Pre_EO.rp_lower_alpha_mean(i,:) Post_EO.rp_lower_alpha_mean(i,:)},'chanlocs', locs, 'titles', {strcat('Subj', int2str(1),' Lower Alpha Pre EO'),  strcat('Subj', int2str(2),' Lower Alpha Pre EO')}, 'ylim', [min_value, max_value])

for ch = 1:38;
    [h,p,ci,tstat] = ttest(Post_EO.rp_alpha_mean(:,ch),Pre_EO.rp_alpha_mean(:,ch), 'Alpha', 0.05)
    P_val{ch} = p;
    h_val{ch} = h;
end

%[h,p,ci,tstat] = ttest(Pre_EO.rp_alpha_mean,Post_EO.rp_alpha_mean_all_subj, 'Alpha', 0.05)
h_val =  cell2mat(h_val);
std_chantopo({h_val(:,:)},'chanlocs',a, 'titles', {'t test post v/s pre EO depressed subjects'})






