% �������� ������ (��������) �� ��������: ������ wav-�����  (������� ������ CardioQVARK - �������� ���������, ��� ���)

catalogname = [pwd '\test\']; % �������� �������� � ������� D:\Competitions\Cardioqvark\test\
files = dir([catalogname '*.wav']); % ������ ����������

S2 = {}; 
FN2 = {};

for ifile=1:length(files)
    fname = files(ifile).name;
    if (~strcmp(fname(end-11:end-4),'filtered'))
        ffile = [catalogname fname];
        S2{end+1} = wavread(ffile);
        FN2{end+1} = fname;
        disp(fname)
    end;
    
end;