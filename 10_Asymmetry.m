clear all;

A2 = (R-L)/(R+L);

R = [3,7,8,12,13,17,18,22,23,27,28,31];
L = [1,5,4,10,9,15,14,20,19,25,24,29];

x_lab = categorical({'Fp2-Fp1', 'F4-F3', 'F8-F7', 'FC4-FC3', 'FT8-FT7', 'C4-C3', 'T4-T3', 'CP4-CP3', 'TP8-TP7', 'P4-P3', 'T6-T5', 'O2-O1'});

for sub = 1:12;
    for ch = 1:12;
        for sa = 1:1001;

            %A22(sub,ch,sa) = log(D_Pre_EO.relativepower(sub,R(ch),sa)) - log(D_Pre_EO.relativepower(sub,L(ch),sa));
            BDH_pre_asy(sub,ch,sa) = (BD_H_Pre_EO.relativepower(sub,R(ch),sa) - BD_H_Pre_EO.relativepower(sub,L(ch),sa)) / (BD_H_Pre_EO.relativepower(sub,R(ch),sa) + BD_H_Pre_EO.relativepower(sub,L(ch),sa));
            
        end
        BDH_pre_asy_mean(sub,ch,:) = mean(BDH_pre_asy(sub,ch,:));
%         
%       %Alpha Asymmetry
        BDH_pre_alpha_asy(sub,ch,:) = BDH_pre_asy(sub,ch,33:48);
        BDH_pre_alpha_asy_mean(sub,ch,:) = mean(BDH_pre_alpha_asy(sub,ch,:));
        
        %Beta Asymmetry
        BDH_pre_beta_asy(sub,ch,:) = BDH_pre_asy(sub,ch,49:120);
        BDH_pre_beta_asy_mean(sub,ch,:) = mean(BDH_pre_beta_asy(sub,ch,:));
        
        %Theta Asymmetry
        BDH_pre_theta_asy(sub,ch,:) = BDH_pre_asy(sub,ch,16:31);
        BDH_pre_theta_asy_mean(sub,ch,:) = mean(BDH_pre_theta_asy(sub,ch,:));
        
    end
    
end

BDH_pre_asy_mean_mean = mean(BDH_pre_asy_mean);
BDH_pre_alpha_asy_mean_mean = mean(BDH_pre_alpha_asy_mean);
BDH_pre_beta_asy_mean_mean = mean(BDH_pre_beta_asy_mean);
BDH_pre_theta_asy_mean_mean = mean(BDH_pre_theta_asy_mean);

plt = [MD_pre_beta_asy_mean_mean; MD_pre_beta_asy_mean_mean];
o = bar(x_lab, plt');
legend ('Pre MF', 'Post MF');
title('Beta Asymmetry');

for i = [1:3,5,7:9];
    [a,b,c] = size(A2);
    %c = 25;
    x = linspace(1,9,9);
    y = transpose(squeeze(A22(i,2,40:48)));
    %subplot(1,2,1);
    plot(x, y, 'color', rand(1,3), 'LineWidth',4);
    title('MF_power');
    legend
    grid on
    hold on
end
hold off 

%Pre Healthy
BD_asymmetry.BDH_pre_asy = BDH_pre_asy
BD_asymmetry.BDH_pre_asy_mean = BDH_pre_asy_mean
BD_asymmetry.BDH_pre_asy_mean_mean = BDH_pre_asy_mean_mean
BD_asymmetry.BDH_pre_alpha_asy = BDH_pre_alpha_asy
BD_asymmetry.BDH_pre_alpha_asy_mean = BDH_pre_alpha_asy_mean
BD_asymmetry.BDH_pre_alpha_asy_mean_mean = BDH_pre_alpha_asy_mean_mean
BD_asymmetry.BDH_pre_beta_asy = BDH_pre_beta_asy
BD_asymmetry.BDH_pre_beta_asy_mean = BDH_pre_beta_asy_mean
BD_asymmetry.BDH_pre_beta_asy_mean_mean = BDH_pre_beta_asy_mean_mean
BD_asymmetry.BDH_pre_theta_asy = BDH_pre_theta_asy
BD_asymmetry.BDH_pre_theta_asy_mean = BDH_pre_theta_asy_mean
BD_asymmetry.BDH_pre_theta_asy_mean_mean = BDH_pre_theta_asy_mean_mean

%Post Healthy
BD_asymmetry.BDH_post_asy = BDH_post_asy
BD_asymmetry.BDH_post_asy_mean = BDH_post_asy_mean
BD_asymmetry.BDH_post_asy_mean_mean = BDH_post_asy_mean_mean
BD_asymmetry.BDH_post_alpha_asy = BDH_post_alpha_asy
BD_asymmetry.BDH_post_alpha_asy_mean = BDH_post_alpha_asy_mean
BD_asymmetry.BDH_post_alpha_asy_mean_mean = BDH_post_alpha_asy_mean_mean
BD_asymmetry.BDH_post_beta_asy = BDH_post_beta_asy
BD_asymmetry.BDH_post_beta_asy_mean = BDH_post_beta_asy_mean
BD_asymmetry.BDH_post_beta_asy_mean_mean = BDH_post_beta_asy_mean_mean
BD_asymmetry.BDH_post_theta_asy = BDH_post_theta_asy
BD_asymmetry.BDH_post_theta_asy_mean = BDH_post_theta_asy_mean
BD_asymmetry.BDH_post_theta_asy_mean_mean = BDH_post_theta_asy_mean_mean

%Pre Depressed
BD_asymmetry.BDD_pre_asy = BDD_pre_asy
BD_asymmetry.BDD_pre_asy_mean = BDD_pre_asy_mean
BD_asymmetry.BDD_pre_asy_mean_mean = BDD_pre_asy_mean_mean
BD_asymmetry.BDD_pre_alpha_asy = BDD_pre_alpha_asy
BD_asymmetry.BDD_pre_alpha_asy_mean = BDD_pre_alpha_asy_mean
BD_asymmetry.BDD_pre_alpha_asy_mean_mean = BDD_pre_alpha_asy_mean_mean
BD_asymmetry.BDD_pre_beta_asy = BDD_pre_beta_asy
BD_asymmetry.BDD_pre_beta_asy_mean = BDD_pre_beta_asy_mean
BD_asymmetry.BDD_pre_beta_asy_mean_mean = BDD_pre_beta_asy_mean_mean
BD_asymmetry.BDD_pre_theta_asy = BDD_pre_theta_asy
BD_asymmetry.BDD_pre_theta_asy_mean = BDD_pre_theta_asy_mean
BD_asymmetry.BDD_pre_theta_asy_mean_mean = BDD_pre_theta_asy_mean_mean

%Post Depressed
BD_asymmetry.BDD_post_asy = BDD_post_asy
BD_asymmetry.BDD_post_asy_mean = BDD_post_asy_mean
BD_asymmetry.BDD_post_asy_mean_mean = BDD_post_asy_mean_mean
BD_asymmetry.BDD_post_alpha_asy = BDD_post_alpha_asy
BD_asymmetry.BDD_post_alpha_asy_mean = BDD_post_alpha_asy_mean
BD_asymmetry.BDD_post_alpha_asy_mean_mean = BDD_post_alpha_asy_mean_mean
BD_asymmetry.BDD_post_beta_asy = BDD_post_beta_asy
BD_asymmetry.BDD_post_beta_asy_mean = BDD_post_beta_asy_mean
BD_asymmetry.BDD_post_beta_asy_mean_mean = BDD_post_beta_asy_mean_mean
BD_asymmetry.BDD_post_theta_asy = BDD_post_theta_asy
BD_asymmetry.BDD_post_theta_asy_mean = BDD_post_theta_asy_mean
BD_asymmetry.BDD_post_theta_asy_mean_mean = BDD_post_theta_asy_mean_mean

save('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\Data\BD_Asymmetry.mat', 'BD_asymmetry')
