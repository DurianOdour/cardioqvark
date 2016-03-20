% �������� ������ ucc � par-�����  (������� ������ CardioQVARK - �������� ���������, ��� ���)
% F - �������� �� ucc-�����
% X - ������� �����
% P - �������� �� par-�����
% FN - ��� ����� (�� ���������)

function [F,X,P,FN] = cardio_readalldata(catalogname)

% catalogname D:\Competitions\Cardioqvark\train\
% �������� ucc � par (������� �����)
maskname = [catalogname '*ucc.csv'];
files = dir(maskname); % ������ ����������

F = [];
X = [];
P = [];
FN = {};

for ifile=1:length(files)
    fname = files(ifile).name;
    filename = [catalogname fname];
    
    [F(end+1,:), X(end+1,:)] = cardio_readucc(filename); % �������� + �����
    filename(end-7:end-4) = [];
    P(end+1,:) = cardio_readpar(filename); % ��������
    FN{end+1} = fname; % ��� �����
    %disp(fname);
end;