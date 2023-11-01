clear all;
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Pre_EC_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Pre_EO_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Post_EC_Features.mat');
load('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Post_EO_Features.mat');

%A2 = (R-L)/(R+L);

R = [3,7,8,12,13,17,18,22,23,27,28,31];
L = [1,5,4,10,9,15,14,20,19,25,24,29];

x_lab = categorical({'Fp2-Fp1', 'F4-F3', 'F8-F7', 'FC4-FC3', 'FT8-FT7', 'C4-C3', 'T4-T3', 'CP4-CP3', 'TP8-TP7', 'P4-P3', 'T6-T5', 'O2-O1'});

%For Depression
for sub = 1:9;
    for ch = 1:12;
        for sa = 1:1001;
            %Pre EC
            D_Pre_EC_asy(sub,ch,sa) = (Pre_EC_Features.Depressed_Features.D_relativepower(sub,R(ch),sa) - Pre_EC_Features.Depressed_Features.D_relativepower(sub,L(ch),sa)) / (Pre_EC_Features.Depressed_Features.D_relativepower(sub,R(ch),sa) + Pre_EC_Features.Depressed_Features.D_relativepower(sub,L(ch),sa));
            %Pre EO
            D_Pre_EO_asy(sub,ch,sa) = (Pre_EO_Features.Depressed_Features.D_relativepower(sub,R(ch),sa) - Pre_EO_Features.Depressed_Features.D_relativepower(sub,L(ch),sa)) / (Pre_EO_Features.Depressed_Features.D_relativepower(sub,R(ch),sa) + Pre_EO_Features.Depressed_Features.D_relativepower(sub,L(ch),sa));
            %Post EC
            D_Post_EC_asy(sub,ch,sa) = (Post_EC_Features.Depressed_Features.D_relativepower(sub,R(ch),sa) - Post_EC_Features.Depressed_Features.D_relativepower(sub,L(ch),sa)) / (Post_EC_Features.Depressed_Features.D_relativepower(sub,R(ch),sa) + Post_EC_Features.Depressed_Features.D_relativepower(sub,L(ch),sa));
            %Post EO
            D_Post_EO_asy(sub,ch,sa) = (Post_EO_Features.Depressed_Features.D_relativepower(sub,R(ch),sa) - Post_EO_Features.Depressed_Features.D_relativepower(sub,L(ch),sa)) / (Post_EO_Features.Depressed_Features.D_relativepower(sub,R(ch),sa) + Post_EO_Features.Depressed_Features.D_relativepower(sub,L(ch),sa));  
            
        end
        %Pre EC
        D_Pre_EC_asy_mean(sub,ch,:) = mean(D_Pre_EC_asy(sub,ch,:));
        %Pre EO
        D_Pre_EO_asy_mean(sub,ch,:) = mean(D_Pre_EO_asy(sub,ch,:));
        %Post EC
        D_Post_EC_asy_mean(sub,ch,:) = mean(D_Post_EC_asy(sub,ch,:));
        %Post EO
        D_Post_EO_asy_mean(sub,ch,:) = mean(D_Post_EO_asy(sub,ch,:));
        
%%%%%%%% %Alpha Asymmetry
        %Pre EC
        D_Pre_EC_alpha_asy(sub,ch,:) = D_Pre_EC_asy(sub,ch,33:48);
        D_Pre_EC_alpha_asy_mean(sub,ch,:) = mean(D_Pre_EC_alpha_asy(sub,ch,:));

        %Pre EO
        D_Pre_EO_alpha_asy(sub,ch,:) = D_Pre_EC_asy(sub,ch,33:48);
        D_Pre_EO_alpha_asy_mean(sub,ch,:) = mean(D_Pre_EO_alpha_asy(sub,ch,:));
        
        %Post EC
        D_Post_EC_alpha_asy(sub,ch,:) = D_Post_EC_asy(sub,ch,33:48);
        D_Post_EC_alpha_asy_mean(sub,ch,:) = mean(D_Post_EC_alpha_asy(sub,ch,:));
        
        %Post EO
        D_Post_EO_alpha_asy(sub,ch,:) = D_Post_EC_asy(sub,ch,33:48);
        D_Post_EO_alpha_asy_mean(sub,ch,:) = mean(D_Post_EO_alpha_asy(sub,ch,:));
        
%%%%%%%%%Beta Asymmetry
        %Pre EC
        D_Pre_EC_beta_asy(sub,ch,:) = D_Pre_EC_asy(sub,ch,49:120);
        D_Pre_EC_beta_asy_mean(sub,ch,:) = mean(D_Pre_EC_beta_asy(sub,ch,:));
        
        %Pre EO
        D_Pre_EO_beta_asy(sub,ch,:) = D_Pre_EO_asy(sub,ch,49:120);
        D_Pre_EO_beta_asy_mean(sub,ch,:) = mean(D_Pre_EO_beta_asy(sub,ch,:));
        
        %Post EC
        D_Post_EC_beta_asy(sub,ch,:) = D_Post_EC_asy(sub,ch,49:120);
        D_Post_EC_beta_asy_mean(sub,ch,:) = mean(D_Post_EC_beta_asy(sub,ch,:));
        
        %Post EO
        D_Post_EO_beta_asy(sub,ch,:) = D_Post_EO_asy(sub,ch,49:120);
        D_Post_EO_beta_asy_mean(sub,ch,:) = mean(D_Post_EO_beta_asy(sub,ch,:));
        
%%%%%%%%%Theta Asymmetry
        %Pre EC
        D_Pre_EC_theta_asy(sub,ch,:) = D_Pre_EC_asy(sub,ch,16:31);
        D_Pre_EC_theta_asy_mean(sub,ch,:) = mean(D_Pre_EC_theta_asy(sub,ch,:));
        
        %Pre EO
        D_Pre_EO_theta_asy(sub,ch,:) = D_Pre_EO_asy(sub,ch,16:31);
        D_Pre_EO_theta_asy_mean(sub,ch,:) = mean(D_Pre_EO_theta_asy(sub,ch,:));
        
        %Post EC
        D_Post_EC_theta_asy(sub,ch,:) = D_Post_EC_asy(sub,ch,16:31);
        D_Post_EC_theta_asy_mean(sub,ch,:) = mean(D_Post_EC_theta_asy(sub,ch,:));
        
        %Post EO
        D_Post_EO_theta_asy(sub,ch,:) = D_Post_EO_asy(sub,ch,16:31);
        D_Post_EO_theta_asy_mean(sub,ch,:) = mean(D_Post_EO_theta_asy(sub,ch,:));
    end
    
end

%Pre EC
D_Pre_EC_asy_mean_mean = mean(D_Pre_EC_asy_mean);
D_Pre_EC_alpha_asy_mean_mean = mean(D_Pre_EC_alpha_asy_mean);
D_Pre_EC_beta_asy_mean_mean = mean(D_Pre_EC_beta_asy_mean);
D_Pre_EC_theta_asy_mean_mean = mean(D_Pre_EC_theta_asy_mean);

%Pre EO
D_Pre_EO_asy_mean_mean = mean(D_Pre_EO_asy_mean);
D_Pre_EO_alpha_asy_mean_mean = mean(D_Pre_EO_alpha_asy_mean);
D_Pre_EO_beta_asy_mean_mean = mean(D_Pre_EO_beta_asy_mean);
D_Pre_EO_theta_asy_mean_mean = mean(D_Pre_EO_theta_asy_mean);

%Post EC
D_Post_EC_asy_mean_mean = mean(D_Post_EC_asy_mean);
D_Post_EC_alpha_asy_mean_mean = mean(D_Post_EC_alpha_asy_mean);
D_Post_EC_beta_asy_mean_mean = mean(D_Post_EC_beta_asy_mean);
D_Post_EC_theta_asy_mean_mean = mean(D_Post_EC_theta_asy_mean);

%Post EO
D_Post_EO_asy_mean_mean = mean(D_Post_EO_asy_mean);
D_Post_EO_alpha_asy_mean_mean = mean(D_Post_EO_alpha_asy_mean);
D_Post_EO_beta_asy_mean_mean = mean(D_Post_EO_beta_asy_mean);
D_Post_EO_theta_asy_mean_mean = mean(D_Post_EO_theta_asy_mean);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%For Healthy

for sub = 1:16;
    for ch = 1:12;
        for sa = 1:1001;
            %Pre EC
            H_Pre_EC_asy(sub,ch,sa) = (Pre_EC_Features.Healthy_Features.H_relativepower(sub,R(ch),sa) - Pre_EC_Features.Healthy_Features.H_relativepower(sub,L(ch),sa)) / (Pre_EC_Features.Healthy_Features.H_relativepower(sub,R(ch),sa) + Pre_EC_Features.Healthy_Features.H_relativepower(sub,L(ch),sa));
            %Pre EO
            H_Pre_EO_asy(sub,ch,sa) = (Pre_EO_Features.Healthy_Features.H_relativepower(sub,R(ch),sa) - Pre_EO_Features.Healthy_Features.H_relativepower(sub,L(ch),sa)) / (Pre_EO_Features.Healthy_Features.H_relativepower(sub,R(ch),sa) + Pre_EO_Features.Healthy_Features.H_relativepower(sub,L(ch),sa));
            %Post EC
            H_Post_EC_asy(sub,ch,sa) = (Post_EC_Features.Healthy_Features.H_relativepower(sub,R(ch),sa) - Post_EC_Features.Healthy_Features.H_relativepower(sub,L(ch),sa)) / (Post_EC_Features.Healthy_Features.H_relativepower(sub,R(ch),sa) + Post_EC_Features.Healthy_Features.H_relativepower(sub,L(ch),sa));
            %Post EO
            H_Post_EO_asy(sub,ch,sa) = (Post_EO_Features.Healthy_Features.H_relativepower(sub,R(ch),sa) - Post_EO_Features.Healthy_Features.H_relativepower(sub,L(ch),sa)) / (Post_EO_Features.Healthy_Features.H_relativepower(sub,R(ch),sa) + Post_EO_Features.Healthy_Features.H_relativepower(sub,L(ch),sa));  
            
        end
        %Pre EC
        H_Pre_EC_asy_mean(sub,ch,:) = mean(H_Pre_EC_asy(sub,ch,:));
        %Pre EO
        H_Pre_EO_asy_mean(sub,ch,:) = mean(H_Pre_EO_asy(sub,ch,:));
        %Post EC
        H_Post_EC_asy_mean(sub,ch,:) = mean(H_Post_EC_asy(sub,ch,:));
        %Post EO
        H_Post_EO_asy_mean(sub,ch,:) = mean(H_Post_EO_asy(sub,ch,:));
        
%%%%%%%% %Alpha Asymmetry
        %Pre EC
        H_Pre_EC_alpha_asy(sub,ch,:) = H_Pre_EC_asy(sub,ch,33:48);
        H_Pre_EC_alpha_asy_mean(sub,ch,:) = mean(H_Pre_EC_alpha_asy(sub,ch,:));

        %Pre EO
        H_Pre_EO_alpha_asy(sub,ch,:) = H_Pre_EC_asy(sub,ch,33:48);
        H_Pre_EO_alpha_asy_mean(sub,ch,:) = mean(H_Pre_EO_alpha_asy(sub,ch,:));
        
        %Post EC
        H_Post_EC_alpha_asy(sub,ch,:) = H_Post_EC_asy(sub,ch,33:48);
        H_Post_EC_alpha_asy_mean(sub,ch,:) = mean(H_Post_EC_alpha_asy(sub,ch,:));
        
        %Post EO
        H_Post_EO_alpha_asy(sub,ch,:) = H_Post_EC_asy(sub,ch,33:48);
        H_Post_EO_alpha_asy_mean(sub,ch,:) = mean(H_Post_EO_alpha_asy(sub,ch,:));
        
%%%%%%%%%Beta Asymmetry
        %Pre EC
        H_Pre_EC_beta_asy(sub,ch,:) = H_Pre_EC_asy(sub,ch,49:120);
        H_Pre_EC_beta_asy_mean(sub,ch,:) = mean(H_Pre_EC_beta_asy(sub,ch,:));
        
        %Pre EO
        H_Pre_EO_beta_asy(sub,ch,:) = H_Pre_EO_asy(sub,ch,49:120);
        H_Pre_EO_beta_asy_mean(sub,ch,:) = mean(H_Pre_EO_beta_asy(sub,ch,:));
        
        %Post EC
        H_Post_EC_beta_asy(sub,ch,:) = H_Post_EC_asy(sub,ch,49:120);
        H_Post_EC_beta_asy_mean(sub,ch,:) = mean(H_Post_EC_beta_asy(sub,ch,:));
        
        %Post EO
        H_Post_EO_beta_asy(sub,ch,:) = H_Post_EO_asy(sub,ch,49:120);
        H_Post_EO_beta_asy_mean(sub,ch,:) = mean(H_Post_EO_beta_asy(sub,ch,:));
        
%%%%%%%%%Theta Asymmetry
        %Pre EC
        H_Pre_EC_theta_asy(sub,ch,:) = H_Pre_EC_asy(sub,ch,16:31);
        H_Pre_EC_theta_asy_mean(sub,ch,:) = mean(H_Pre_EC_theta_asy(sub,ch,:));
        
        %Pre EO
        H_Pre_EO_theta_asy(sub,ch,:) = H_Pre_EO_asy(sub,ch,16:31);
        H_Pre_EO_theta_asy_mean(sub,ch,:) = mean(H_Pre_EO_theta_asy(sub,ch,:));
        
        %Post EC
        H_Post_EC_theta_asy(sub,ch,:) = H_Post_EC_asy(sub,ch,16:31);
        H_Post_EC_theta_asy_mean(sub,ch,:) = mean(H_Post_EC_theta_asy(sub,ch,:));
        
        %Post EO
        H_Post_EO_theta_asy(sub,ch,:) = H_Post_EO_asy(sub,ch,16:31);
        H_Post_EO_theta_asy_mean(sub,ch,:) = mean(H_Post_EO_theta_asy(sub,ch,:));
    end
    
end

%Pre EC
H_Pre_EC_asy_mean_mean = mean(H_Pre_EC_asy_mean);
H_Pre_EC_alpha_asy_mean_mean = mean(H_Pre_EC_alpha_asy_mean);
H_Pre_EC_beta_asy_mean_mean = mean(H_Pre_EC_beta_asy_mean);
H_Pre_EC_theta_asy_mean_mean = mean(H_Pre_EC_theta_asy_mean);

%Pre EO
H_Pre_EO_asy_mean_mean = mean(H_Pre_EO_asy_mean);
H_Pre_EO_alpha_asy_mean_mean = mean(H_Pre_EO_alpha_asy_mean);
H_Pre_EO_beta_asy_mean_mean = mean(H_Pre_EO_beta_asy_mean);
H_Pre_EO_theta_asy_mean_mean = mean(H_Pre_EO_theta_asy_mean);

%Post EC
H_Post_EC_asy_mean_mean = mean(H_Post_EC_asy_mean);
H_Post_EC_alpha_asy_mean_mean = mean(H_Post_EC_alpha_asy_mean);
H_Post_EC_beta_asy_mean_mean = mean(H_Post_EC_beta_asy_mean);
H_Post_EC_theta_asy_mean_mean = mean(H_Post_EC_theta_asy_mean);

%Post EO
H_Post_EO_asy_mean_mean = mean(H_Post_EO_asy_mean);
H_Post_EO_alpha_asy_mean_mean = mean(H_Post_EO_alpha_asy_mean);
H_Post_EO_beta_asy_mean_mean = mean(H_Post_EO_beta_asy_mean);
H_Post_EO_theta_asy_mean_mean = mean(H_Post_EO_theta_asy_mean);

%Pre EC Depressed
Pre_EC_Features.Depressed_Features.D_Pre_EC_asy_mean = D_Pre_EC_asy_mean;
Pre_EC_Features.Depressed_Features.D_Pre_EC_asy_mean_mean = D_Pre_EC_asy_mean_mean;
Pre_EC_Features.Depressed_Features.D_Pre_EC_alpha_asy_mean_mean = D_Pre_EC_alpha_asy_mean_mean;
Pre_EC_Features.Depressed_Features.D_Pre_EC_beta_asy_mean_mean = D_Pre_EC_beta_asy_mean_mean;
Pre_EC_Features.Depressed_Features.D_Pre_EC_theta_asy_mean_mean = D_Pre_EC_theta_asy_mean_mean;

%Pre EC Healthy
Pre_EC_Features.Healthy_Features.H_Pre_EC_asy_mean = H_Pre_EC_asy_mean;
Pre_EC_Features.Healthy_Features.H_Pre_EC_asy_mean_mean = H_Pre_EC_asy_mean_mean;
Pre_EC_Features.Healthy_Features.H_Pre_EC_alpha_asy_mean_mean = H_Pre_EC_alpha_asy_mean_mean;
Pre_EC_Features.Healthy_Features.H_Pre_EC_beta_asy_mean_mean = H_Pre_EC_beta_asy_mean_mean;
Pre_EC_Features.Healthy_Features.H_Pre_EC_theta_asy_mean_mean = H_Pre_EC_theta_asy_mean_mean;

%Pre EO Depressed
Pre_EO_Features.Depressed_Features.D_Pre_EO_asy_mean = D_Pre_EO_asy_mean;
Pre_EO_Features.Depressed_Features.D_Pre_EO_asy_mean_mean = D_Pre_EO_asy_mean_mean;
Pre_EO_Features.Depressed_Features.D_Pre_EO_alpha_asy_mean_mean = D_Pre_EO_alpha_asy_mean_mean;
Pre_EO_Features.Depressed_Features.D_Pre_EO_beta_asy_mean_mean = D_Pre_EO_beta_asy_mean_mean;
Pre_EO_Features.Depressed_Features.D_Pre_EO_theta_asy_mean_mean = D_Pre_EO_theta_asy_mean_mean;

%Pre EO Healthy
Pre_EO_Features.Healthy_Features.H_Pre_EO_asy_mean = H_Pre_EO_asy_mean;
Pre_EO_Features.Healthy_Features.H_Pre_EO_asy_mean_mean = H_Pre_EO_asy_mean_mean;
Pre_EO_Features.Healthy_Features.H_Pre_EO_alpha_asy_mean_mean = H_Pre_EO_alpha_asy_mean_mean;
Pre_EO_Features.Healthy_Features.H_Pre_EO_beta_asy_mean_mean = H_Pre_EO_beta_asy_mean_mean;
Pre_EO_Features.Healthy_Features.H_Pre_EO_theta_asy_mean_mean = H_Pre_EO_theta_asy_mean_mean;

%Post EC Depressed
Post_EC_Features.Depressed_Features.D_Post_EC_asy_mean = D_Post_EC_asy_mean;
Post_EC_Features.Depressed_Features.D_Post_EC_asy_mean_mean = D_Post_EC_asy_mean_mean;
Post_EC_Features.Depressed_Features.D_Post_EC_alpha_asy_mean_mean = D_Post_EC_alpha_asy_mean_mean;
Post_EC_Features.Depressed_Features.D_Post_EC_beta_asy_mean_mean = D_Post_EC_beta_asy_mean_mean;
Post_EC_Features.Depressed_Features.D_Post_EC_theta_asy_mean_mean = D_Post_EC_theta_asy_mean_mean;

%Post EC Healthy
Post_EC_Features.Healthy_Features.H_Post_EC_asy_mean = H_Post_EC_asy_mean;
Post_EC_Features.Healthy_Features.H_Post_EC_asy_mean_mean = H_Post_EC_asy_mean_mean;
Post_EC_Features.Healthy_Features.H_Post_EC_alpha_asy_mean_mean = H_Post_EC_alpha_asy_mean_mean;
Post_EC_Features.Healthy_Features.H_Post_EC_beta_asy_mean_mean = H_Post_EC_beta_asy_mean_mean;
Post_EC_Features.Healthy_Features.H_Post_EC_theta_asy_mean_mean = H_Post_EC_theta_asy_mean_mean;

%Post EO Depressed
Post_EO_Features.Depressed_Features.D_Post_EO_asy_mean = D_Post_EO_asy_mean;
Post_EO_Features.Depressed_Features.D_Post_EO_asy_mean_mean = D_Post_EO_asy_mean_mean;
Post_EO_Features.Depressed_Features.D_Post_EO_alpha_asy_mean_mean = D_Post_EO_alpha_asy_mean_mean;
Post_EO_Features.Depressed_Features.D_Post_EO_beta_asy_mean_mean = D_Post_EO_beta_asy_mean_mean;
Post_EO_Features.Depressed_Features.D_Post_EO_theta_asy_mean_mean = D_Post_EO_theta_asy_mean_mean;

%Post EO Healthy
Post_EO_Features.Healthy_Features.H_Post_EO_asy_mean = H_Post_EO_asy_mean;
Post_EO_Features.Healthy_Features.H_Post_EO_asy_mean_mean = H_Post_EO_asy_mean_mean;
Post_EO_Features.Healthy_Features.H_Post_EO_alpha_asy_mean_mean = H_Post_EO_alpha_asy_mean_mean;
Post_EO_Features.Healthy_Features.H_Post_EO_beta_asy_mean_mean = H_Post_EO_beta_asy_mean_mean;
Post_EO_Features.Healthy_Features.H_Post_EO_theta_asy_mean_mean = H_Post_EO_theta_asy_mean_mean;

save('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Pre_EC_Features.mat','Pre_EC_Features');
save('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Pre_EO_Features.mat','Pre_EO_Features');
save('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Post_EC_Features.mat','Post_EC_Features');
save('D:\NCAI-Neurocomputation Lab\Custom tDCS Experiments\MindFoster_tDCS_Paper\New Execution\MindFoster_EEG\Features\Post_EO_Features.mat','Post_EO_Features');

