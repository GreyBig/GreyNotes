Dim x

x = MsgBox("С����ҹ۲���ܾ��ˡ�"+vbCrLf +"����Ů���Ѻò���",4,"������Զ���С���")
if x = 7 then
	x = MsgBox("����Ů���Ѻò���"+vbCrLf+"���з�",4,"������Զ���С���")
	if x = 7 then
		x = MsgBox("����Ů���Ѻò���"+vbCrLf+"���г�", 4,"������Զ���С���")
		if x = 7 then
			myFunction(x)
		else 
			MsgBox "4��Ŀ��������"	
		end if		

	else 
		MsgBox "Ŀ��������"
	End if

else 
	MsgBox "�װ��ģ���������"		
	
End if




function myFunction( i)
if i = 7 then
	v = MsgBox("����Ů���Ѻò���"+vbCrLf+"�㲻��Ӧ�Ҳ�����", 4,"������Զ���С���")
	if v =	7 then
		myFunction(v)
	else 
		MsgBox "10��Ŀ�������£��ٺ�"
	end if

end if
end function



