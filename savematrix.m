% ���������� csv-������� (������� ������ CardioQVARK - �������� ���������, ��� ���)
function savematrix(filename, X)

fid = fopen(filename, 'wt', 'n');
fprintf(fid, ['%g' repmat(',%g', 1, (size(X,2)-1)) '\n'], X');
fclose(fid);