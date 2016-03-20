% ������� ��������, ���������� �� ��������� SVD-����������  (������� ������ CardioQVARK - �������� ���������, ��� ���)

% ��������� ������

cardio_loadtrain
%cardio_loadtrain_filtered
cardio_loadtest
%cardio_loadtest_filtered
Y = cardio_importfile('traininfo.txt');
y = Y(:,3);




% ������� ������� ��� ����������
L = zeros([100 3]);
U1 = zeros([100 1000]);
U2 = zeros([100 1000]);
U3 = zeros([100 1000]);

for t=1:length(S)
    
    if ismember(t, [8 41 96 100])  % �������� ��������
        x = -S{t};
    else
        x = +S{t};
    end;
    [l, u1, u2, u3] = cardio_extracttotalSVD(x);
    L(t,:) = l;
    U1(t,:) = u1;
    U2(t,:) = u2;
    U3(t,:) = u3;

    disp(t);
end;



L2 = zeros([100 3]);
U21 = zeros([100 1000]);
U22 = zeros([100 1000]);
U23 = zeros([100 1000]);

for t=1:length(S2)
    
    x = +S2{t};
    [l, u1, u2, u3] = cardio_extracttotalSVD(x);
    L2(t,:) = l;
    U21(t,:) = u1;
    U22(t,:) = u2;
    U23(t,:) = u3;

    disp(t);
end;



% ��������

AU1 = abs(U1);
AU21 = abs(U21);
AU1 = AU1(:,[102 232 416 714 781]);
AU21 = AU21(:,[102 232 416 714 781]);

F = [AU1];
F2 = [AU21];
F = [F F.^2 ones([100 1])];
F2 = [F2 F2.^2 ones([250 1])];

a = zeros([size(F2,1), 1]);

savematrix('features_temp_allrand1.txt', [y F])
savematrix('features_temp_allrand2.txt', [a F2])