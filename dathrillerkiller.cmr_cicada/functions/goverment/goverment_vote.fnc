_data = call goverment_votes;
createDialog "wahldialog";

{
	_index = lbAdd [1, name (_x select 0)];
	lbSetData [1, _index, str (_x select 0)];	
	true
}count _data;

