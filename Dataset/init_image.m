function image = init_image(filename,num)
% ����init_image(filename,num)�еĵ�һ������filename������ȡ��rawb�ļ����ļ������ڶ�������num���ǵڶ����š����Ϊԭʼͼ��δ����
%���磺init_image('t1_icbm_normal_1mm_pn0_rf0.rawb',90)�� init_image('phantom_1.0mm_normal_csf.rawb',90)
read=readrawb(filename, num);
% ��ת90�㲢��ʾ����
read=imrotate(read, 90);                                        
% imshow(uint8(read));
image = uint8(read);
end