% �������� ������ (��������) �� ��������: ������ wav-�����  (������� ������ CardioQVARK - �������� ���������, ��� ���)

catalogname = [pwd '\train\']; % �������� �������� � ������� D:\Competitions\Cardioqvark\train\
files = dir([catalogname '*.wav']); % ������ ����������

S = {}; 
FN = {};

for ifile=1:length(files)
    fname = files(ifile).name;
    if (~strcmp(fname(end-11:end-4),'filtered'))
        ffile = [catalogname fname];
        S{end+1} = wavread(ffile);
        FN{end+1} = fname;
        disp(fname)
    end;
    
end;
