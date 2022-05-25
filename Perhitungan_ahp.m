function [Max_Motor_Score] = ahp()
disp ('Matriks Perbandingan Berpasangan pada Kriteria'); 

MPBk = [1/1   2/1  3/1  4/1;
        1/2   1/1  2/1  3/1;
        1/3   1/2  1/1  2/1;
        1/4   1/3  1/2  1/1]
    
% normalisasi
w_MPB = calc_norm(MPBk)

% hitung eigenvector
[m n] = size(w_MPB);
   for i=1 : m, 
        sumRow = 0; 
        for j=1 :n, 
            sumRow = sumRow + w_MPB(i,j); 
        end;
 V(i)=(sumRow);
 end;
 
 disp('Eigenvecttor')
 w_MPB=transpose(V)/m
 
 
 % membandingkan kamera
 disp ('perbandinan camera : alternatif berpasangan')
 AKB_C = [100/100   1190/1240 1990/1220  1190/1300;
          1240/1190   100/100 1990/1220  1240/1300;
          1220/1190 1220/1240 100/100    1220/1300;
          1280/1190 1220/1240 1990/1220  1280/1300;
          1300/1190 1300/1240 1990/1220  100/100]
 w_R = calc_norm(AKB_C)
 
 [m n] =  size(w_R);
    for i=1 : m,
        sumRow = 0;
        for j=1 :n,
            sumRow = sumRow + w_R(i,j);
        end;
     V(i)=sumRow;
    end;
    
    disp('Eigenvector')
    w_R=transpose(V)/m
    
       
% membandingkan audio :
disp ('perbandingan audio : alternatif kualitatif berpasangan')
AKB_A = [100/100  710/710 710/730  710/740;
         710/710  710/710 710/730  710/740;
         730/710  730/710 730/730  730/740;
         700/710  700/710 700/100  700/740;
         740/710  740/710 740/730  740/740]

w_D = calc_norm(AKB_A) 

[m n] = size(w_D);
    for i=1 : m, 
        sumRow = 0; 
        for j=1 :n, 
            sumRow = sumRow + w_D(i,j); 
        end;
    V(i)=(sumRow);
    end;
 
 disp('Eigenvector')
 w_D=transpose(V)/m
 
 % membandingkan display :
disp ('perbandingan display : alternatif kualitatif berpasangan')
AKB_D = [100/100  800/840 800/850  800/870;
         840/800  840/840 840/850  840/870;
         850/800  850/840 850/850  850/870;
         870/800  870/840 870/850  870/870;
         880/800  880/840 880/850  880/870]

w_P = calc_norm(AKB_D) 

[m n] = size(w_P);
    for i=1 : m, 
        sumRow = 0; 
        for j=1 :n, 
            sumRow = sumRow + w_P(i,j); 
        end;
    V(i)=(sumRow);
    end;
 
 disp('Eigenvector')
 w_P=transpose(V)/m 

% membandingkan battery :
disp ('perbandingan battery : alternatif kualitatif berpasangan')
AKB_B = [700/700  700/650 700/700 700/800;
         650/700  650/650 650/700 650/800;
         700/700  700/650 700/700 700/800;
         800/700  800/650 800/700 800/800;
         780/700  780/650 780/700 780/800]

w_T = calc_norm(AKB_B) 

[m n] = size(w_T);
    for i=1 : m, 
        sumRow = 0; 
        for j=1 :n, 
            sumRow = sumRow + w_T(i,j); 
        end;
    V(i)=(sumRow);
    end;
 
 disp('Eigenvector')
 w_T=transpose(V)/m 
 
 wM = [w_R w_D w_P w_T];
 
 disp('Nilai hasil akhir')
 MC_Scores = wM * w_MPB
    
 disp('Nilai Handphone terbaik terpilih berdasarkan spesifikasi')
 Max_MC_spec = max(MC_Scores)
 
    function[normvect] = calc_norm(M)
        sM = sum(M);
        normvect = M./sM;
        disp('Normalisasi Matriks');
    end
end

  
    
    