% ������������ ������ ��� ������� �������������  (������� ������ CardioQVARK - �������� ���������, ��� ���)

% ��������� - ��� �������� �����
myans = importdata('myans_tmp.csv'); % D:\notebooks\
myans = myans.data(:,2);

% ��������� ������
cardio_loadtrain
%cardio_loadtrain_filtered
cardio_loadtest
%cardio_loadtest_filtered
Y = cardio_importfile('traininfo.txt');

% ��������� ���� � �������
filename = 'myfinans.csv';
fid = fopen(filename, 'wt', 'n');
for i=1:250
    fprintf(fid, '%s,%g\n', FN2{i},0+(myans(i)>=0.882));
end;
fclose(fid);
