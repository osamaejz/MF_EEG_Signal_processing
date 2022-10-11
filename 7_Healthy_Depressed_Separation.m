load('D:\\NCAI-Neurocomputation Lab\\Custom tDCS Experiments\\MindFoster_tDCS_Paper\\Data\\5_31 Channels Data in SET for processing after ICA\\MindFoster\\Pre_EO_Features.mat');
load('D:\\NCAI-Neurocomputation Lab\\Custom tDCS Experiments\\MindFoster_tDCS_Paper\\Data\\5_31 Channels Data in SET for processing after ICA\\MindFoster\\Post_EO_Features.mat');

load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\6_38 Channels Data in SET for processing after ICA\MindFoster\With Respect to Disease Condition\Depression\Depressed\Post_EC_Features.mat');
load('locs38.mat');

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
