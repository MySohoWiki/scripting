Procedure callAction;
var                          
  act: TActAction;
begin
  try
    act:= TActAction.Create(nil);
    act.load('{39929405-B13F-4113-930F-375FFF08E587}');
    act.run(true,true);
  except
    act.free;
    doerror(Exceptionmessage);
  end; 
end;