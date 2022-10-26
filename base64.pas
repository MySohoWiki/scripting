function base64(user, pass, sn:string): string;
begin
  result:= 'Basic '+ Prg.QueryValues('Select x.A from'
                                     +' (SELECT CAST(:0 as varbinary(max)) FOR XML PATH(''''), BINARY BASE64) x(A)', user+':'+pass+'#'+sn);
end;