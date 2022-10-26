procedure AddComboItem(c: TADC_ComboBox;const name, value: string);
begin
  TstringList(c.propbyname['items']).add(name);
  TstringList(c.propbyname['values']).add(value);
end; 

procedure execForm;
var
  btn: TControl;
  cb: TADC_ComboBox;
begin
  frmStatus:= TFormLayout.create(frm, 'FrmOrderStatus', 'Αλλαγή Status Παραγγελιών');
  frmDS:= prg.QueryDataset(frmStatus,'select cast(null as smallint) statusID',null);
  frmDS.FieldByName('statusID').DisplayLabel:= 'Status';
  
  cb:= TADC_ComboBox.CreateLiS(frmStatus, 'cbStatus', 'statusID', frmDS);
  AddComboItem(cb, 'Σε επεξεργασία','0');
  AddComboItem(cb, 'Ολοκληρωμένη','1');
  frmStatus.addControl(cb);
  
  btn:= TColorBitBtn.Create(frmStatus);
  btn.name:= 'btnOk';
  Tbutton(btn).onClick:= @btnOkClick;//On button click call procedure to do jobs  
  frmStatus.addControl(btn, 'Αποδοχή');
  frmStatus.showmodal;  
  frmStatus.free
end;