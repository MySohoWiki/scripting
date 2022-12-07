//When to be visible the task
Procedure UpdTrnCus(indi: TADC_IndirectlyTask);
begin
  indi.Visible:= (frm.CurrentView = fvDetail);
end;

//Procedure for execute
procedure ExecTrnCus();
begin
  showmessage('bla bla bla');
end;

Begin
  frm.AddIndiTask('Τιμολόγηση πελάτη', @ExecTrnCus, @UpdTrnCus, true);
End.