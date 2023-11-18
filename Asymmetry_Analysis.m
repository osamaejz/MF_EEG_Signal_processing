clear all;
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\BrainDriver_EEG\Features\BD_Pre_EC_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\BrainDriver_EEG\Features\BD_Pre_EO_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\BrainDriver_EEG\Features\BD_Post_EC_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\BrainDriver_EEG\Features\BD_Post_EO_Features.mat');

% R = [3,7,8,12,13,17,18,22,23,27,28,31];
% L = [1,5,4,10,9,15,14,20,19,25,24,29];

x_lab = categorical({'Fp2-Fp1', 'F4-F3', 'F8-F7', 'FC4-FC3', 'FT8-FT7', 'C4-C3', 'T4-T3', 'CP4-CP3', 'TP8-TP7', 'P4-P3', 'T6-T5', 'O2-O1'});

plt1 = [BD_Pre_EO_Features.Depressed_Features.D_Pre_EO_alpha_asy_mean_mean; BD_Post_EO_Features.Depressed_Features.D_Post_EO_alpha_asy_mean_mean];
k = bar(x_lab, plt1');
legend ('Pre D', 'Post D');
title('BD Pre Post D EO Alpha Asymmetry');

bar(Pre_EO_Features.Depressed_Features.D_Pre_EO_alpha_asy_mean(:,1));


bar(Pre_EO_Features.Healthy_Features.H_Pre_EO_alpha_asy_mean(:,1));

for ch = 1:12;
    [h1,p1,ci1,tstat1] = ttest2(Pre_EO_Features.Healthy_Features.H_Pre_EO_alpha_asy_mean(:,2), Pre_EO_Features.Depressed_Features.D_Pre_EO_alpha_asy_mean(:,2), 'Alpha', 0.05);
    P_val_D_pre_post_EC = p1;
    h_val_D_pre_post_EC= h1;
    t_stat_D_pre_post_EC = tstat1;
end


%individual channel pair plot

x1{1} = Pre_EO_Features.Depressed_Features.D_Pre_EO_alpha_asy_mean_mean(:,1);
x1{2} = Post_EO_Features.Depressed_Features.D_Post_EO_alpha_asy_mean_mean(:,1); 
x1{3} = Pre_EO_Features.Healthy_Features.H_Pre_EO_alpha_asy_mean_mean(:,1);
x1{4} = Post_EO_Features.Healthy_Features.H_Post_EO_alpha_asy_mean_mean(:,1); 


x2{1} = Pre_EC_Features.Depressed_Features.D_Pre_EC_alpha_asy_mean_mean(:,1);
x2{2} = Post_EC_Features.Depressed_Features.D_Post_EC_alpha_asy_mean_mean(:,1);
x2{3} = Pre_EC_Features.Healthy_Features.H_Pre_EC_alpha_asy_mean_mean(:,1);
x2{4} = Post_EC_Features.Healthy_Features.H_Post_EC_alpha_asy_mean_mean(:,1);


x1 = cell2mat(x1);
x2 = cell2mat(x2);

x_cat = categorical({'Dep EO', 'Dep EC', 'Healthy EO', 'Healthy EC'});
plt2 = [x1; x2];
o = bar(x_cat,plt2);
legend ('Pre', 'Post');
title('Fp2-Fp1 Alpha Asymmetry');
hold on

for ch = 1:12;
    [h1,p1,ci1,tstat1] = ttest(Post_EC_Features.Depressed_Features.D_Post_EC_asy_mean(:,ch), Pre_EC_Features.Depressed_Features.D_Pre_EC_asy_mean(:,ch), 'Alpha', 0.05);
    P_val_D_pre_post_EC{ch} = p1;
    h_val_D_pre_post_EC{ch} = h1;
    t_stat_D_pre_post_EC{ch} = tstat1;
    
    [h2,p2,ci2,tstat2] = ttest(Post_EO_Features.Depressed_Features.D_Post_EO_asy_mean(:,ch), Pre_EO_Features.Depressed_Features.D_Pre_EO_asy_mean(:,ch), 'Alpha', 0.05);
    P_val_D_pre_post_EO{ch} = p2;
    h_val_D_pre_post_EO{ch} = h2;
    t_stat_D_pre_post_EO{ch} = tstat2;
    
    [h3,p3,ci3,tstat3] = ttest(Post_EC_Features.Healthy_Features.H_Post_EC_asy_mean(:,ch), Pre_EC_Features.Healthy_Features.H_Pre_EC_asy_mean(:,ch), 'Alpha', 0.05);
    P_val_H_pre_post_EC{ch} = p3;
    h_val_H_pre_post_EC{ch} = h3;
    t_stat_H_pre_post_EC{ch} = tstat3;
    
    [h4,p4,ci4,tstat4] = ttest(Post_EO_Features.Healthy_Features.H_Post_EO_asy_mean(:,ch), Pre_EO_Features.Healthy_Features.H_Pre_EO_asy_mean(:,ch), 'Alpha', 0.05);
    P_val_H_pre_post_EO{ch} = p4;
    h_val_H_pre_post_EO{ch} = h4;
    t_stat_H_pre_post_EO{ch} = tstat4;
    
    [h5,p5,ci5,tstat5] = ttest(Pre_EC_Features.Healthy_Features.H_Pre_EC_asy_mean(:,ch), Pre_EC_Features.Depressed_Features.D_Pre_EC_asy_mean(:,ch), 'Alpha', 0.05);
    P_val_HD_pre_EC{ch} = p5;
    h_val_HD_pre_EC{ch} = h5;
    t_stat_HD_pre_EC{ch} = tstat5;
    
    [h4,p4,ci4,tstat4] = ttest(Pre_EO_Features.Healthy_Features.H_Pre_EO_asy_mean(:,ch), Pre_EO_Features.Depressed_Features.D_Pre_EO_asy_mean(:,ch), 'Alpha', 0.05);
    P_val_HD_pre_EO{ch} = p4;
    h_val_HD_pre_EO{ch} = h4;
    t_stat_HD_pre_EO{ch} = tstat4;
end



bar(Pre_EC_Features.Depressed_Features.D_Pre_EC_asy_mean(:,1))
title('Pre Fp2-Fp1');
bar(Post_EC_Features.Depressed_Features.D_Post_EC_asy_mean(:,1))
title('Post Fp2-Fp1');

q1 = Pre_EC_Features.Depressed_Features.D_Pre_EC_asy_mean(1:5,:);
q2 = Pre_EC_Features.Depressed_Features.D_Pre_EC_asy_mean(7:end,:);

q = cat(1,q1,q2);
q_m = mean(q);



for ch = 1:12;
    [h1,p1,ci1,tstat1] = ttest(Post_EC_Features.Depressed_Features.D_Post_EC_asy_mean(:,ch), q_m(:,ch), 'Alpha', 0.05);
    P_val_D_pre_post_EC{ch} = p1;
    h_val_D_pre_post_EC{ch} = h1;
    t_stat_D_pre_post_EC{ch} = tstat1;
end
