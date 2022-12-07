//Get or set BO fields
//Instuctions of how to get the dataset follow the link
//https://wiki.mysoftwarehouse.gr/docs/enotites/mysoho-ergaleia/customization/mysoho-scripting/business-object-scripting/
//
//When you are on frm.CurrentView = fvDetail you can use for set
procedure setVals;
begin
  itetrnds.Append;                        
  itetrnds.FieldByname('itemid').value:= 12345678;
  itetrnds.FieldByname('SizeCodeID').value:= 10;
  itetrnds.FieldByname('ColorCode').value:= 'red';      
  itetrnds.FieldByname('PriQty').value:= 15;
  itetrnds.FieldByname('Price').value:= 0;      
  itetrnds.Post;
end;

//When you are on frm.CurrentView = fvDetail you can use for get. 
procedure getVals;
var
  iteId:integer;
  Justification:String;
begin
  iteId:= itetrnds.FieldByname('itemid').value;
  Justification:= itetrnds.FieldByname('Justification').value;
end;

//You can find the dataset from the button that expant the classes and functions of script. To view datasets the script must be in running mode.
//To find the name of fields just Ctrl+f field you are interesting on form.