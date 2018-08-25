Dim x

x = MsgBox("小姐姐我观察你很久了。"+vbCrLf +"做我女朋友好不好",4,"来自你对对面小哥哥")
if x = 7 then
	x = MsgBox("做我女朋友好不好"+vbCrLf+"我有房",4,"来自你对对面小哥哥")
	if x = 7 then
		x = MsgBox("做我女朋友好不好"+vbCrLf+"我有车", 4,"来自你对对面小哥哥")
		if x = 7 then
			myFunction(x)
		else 
			MsgBox "4号目标已拿下"	
		end if		

	else 
		MsgBox "目标已拿下"
	End if

else 
	MsgBox "亲爱的，爱死你了"		
	
End if




function myFunction( i)
if i = 7 then
	v = MsgBox("做我女朋友好不好"+vbCrLf+"你不答应我不走了", 4,"来自你对对面小哥哥")
	if v =	7 then
		myFunction(v)
	else 
		MsgBox "10号目标已拿下，嘿嘿"
	end if

end if
end function



