if(typeof console==="undefined"){
console={log:function(){
}};
}
var YDOM=YAHOO.util.Dom;
var YEVENT=YAHOO.util.Event;
var YELEMENT=YAHOO.util.Element;
var YANIM=YAHOO.util.Anim;
var YCALENDAR=YAHOO.widget.Calendar;
var YSLIDER=YAHOO.widget.Slider;
YSLIDER.prototype.verifyOffset=function(_1){
var _2=YAHOO.util.Dom.getXY(this.getEl());
if(_2){
if(isNaN(this.baselinePos[0])){
this.setThumbCenterPoint();
this.thumb.startOffset=this.thumb.getOffsetFromParent(_2);
}
if(_2[0]!=this.baselinePos[0]||_2[1]!=this.baselinePos[1]){
this.thumb.resetConstraints();
this.baselinePos=_2;
return false;
}
}
return true;
};
function FSForm(id){
this.id=id;
this.scriptRequestCounter=1;
this.page=1;
this.lastPage=1;
this.checks=[];
this.logicFields=[];
this.calculations=[];
this.calcFields=[];
this.calcFieldDefaults={};
this.init=function(){
if(this.lastPage>1){
var _4=this;
YEVENT.addListener("fsForm"+this.id,"keypress",function(e){
if(e.keyCode!=13){
return true;
}
if(document.activeElement){
if(document.activeElement.tagName=="TEXTAREA"){
return true;
}
_4.updateCalculations(document.activeElement.id.substring(5));
}
if(_4.page==_4.lastPage){
_4.submitForm();
}else{
_4.nextPage(_4.page);
}
YAHOO.util.Event.preventDefault(e);
YAHOO.util.Event.stopEvent(e);
return false;
});
}
for(var i=0;i<this.calcFields.length;i++){
var id=this.calcFields[i];
var _8=this.getFieldsByName("field"+id);
for(var j=0;j<_8.length;j++){
var _a=_8[j];
var _b=_a.type.toLowerCase();
var _c=_b=="radio"||_b=="checkbox"?"click":"change";
YEVENT.addListener(_a,_c,(function(id){
return function(){
this.updateCalculations(id);
};
})(id),this,true);
}
var _e=YDOM.get("field"+id+"_othervalue");
if(_e){
YEVENT.addListener(_e,"change",(function(id,_10){
return function(){
YDOM.get("field"+id+"_other").checked=_10.value!="";
this.updateCalculations(id);
};
})(id,_e),this,true);
}
}
for(var i=0;i<this.logicFields.length;i++){
var id=this.logicFields[i];
var _8=this.getFieldsByName("field"+id);
for(var j=0;j<_8.length;j++){
var _a=_8[j];
var _b=_a.type.toLowerCase();
var _c=_b=="radio"||_b=="checkbox"?"click":"change";
YEVENT.addListener(_a,_c,(function(id){
return function(){
this.checkLogic(id);
};
})(id),this,true);
}
this.checkLogic(id);
}
var _8=YDOM.getElementsByClassName("fsOtherField","input");
for(var i=0;i<_8.length;i++){
var _a=_8[i];
YEVENT.addListener(_a,"change",function(e){
var _13=YEVENT.getTarget(e);
var id=_13.id.split("_");
YDOM.get(id[0]+"_other").checked=YDOM.get(_13).value!="";
},this,true);
}
var _8=YDOM.getElementsByClassName("fsField");
for(var i=0;i<_8.length;i++){
var _a=_8[i];
YEVENT.addListener(_a,"focus",function(e){
var _16=YEVENT.getTarget(e);
this.focus(_16,true);
},this,true);
YEVENT.addListener(_a,"blur",function(e){
var _18=YEVENT.getTarget(e);
this.focus(_18,false);
},this,true);
}
var _8=YDOM.getElementsByClassName("fsFieldConfirm");
for(var i=0;i<_8.length;i++){
var _a=_8[i];
var _19=_a.id.replace("confirm_","");
YEVENT.addListener(_a,"change",function(e){
var _1b=YEVENT.getTarget(e);
this.highlightField(_1b,_1b.value!=document.getElementById(_19).value);
},this,true);
}
var els=YDOM.getElementsByClassName("fsCallout","div");
for(var i=0;i<els.length;i++){
var el=els[i];
YDOM.setStyle(el,"opacity",0);
FSUtil.hide(el);
}
for(var i=0;i<this.calculations.length;i++){
var _1e=this.calculations[i];
this.evalCalculation(_1e);
}
var _1f=YDOM.getElementsByClassName("fsCalendar","div");
for(var i=0;i<_1f.length;i++){
var div=_1f[i];
var id=div.id.match(/(\d+)/);
id=id[1];
var _21=YDOM.get("field"+id+"Y").options;
var _22=parseInt(_21[1].value,10);
var _23=parseInt(_21[_21.length-1].value,10);
var _24=new Date().getFullYear();
if(_22<100){
_22+=_22>_24-2000?1900:2000;
}
if(_23<100){
_23+=2000;
}
var _25=new YCALENDAR(div.id,div.id,{mindate:"1/1/"+_22,maxdate:"12/31/"+_23,close:true});
_25.render();
YEVENT.addListener(div.id+"Link","click",_25.show,_25,true);
_25.beforeShowEvent.subscribe(this.calendarShow,_25,true);
_25.selectEvent.subscribe(this.calendarSelect,_25,true);
}
var _26=YDOM.getElementsByClassName("fsTextAreaMaxLength","textarea");
for(var i=0;i<_26.length;i++){
var _27=_26[i];
var id=_27.id.match(/(\d+)/);
id=id[1];
var _28=YDOM.get("fsCounter"+id);
var _29=parseInt(_28.innerHTML);
if(_29>0){
YEVENT.addListener(_27,"keyup",(function(id,_2b){
return function(){
this.textareaCharLimiter(id,_2b);
};
})(id,_29),this,true);
YDOM.setStyle(_27.id,"paddingBottom","24px");
_28.innerHTML="";
FSUtil.show(_28);
}
}
var _2c=YDOM.getElementsByClassName("fsMatrixOnePerColumn","table");
for(var i=0;i<_2c.length;i++){
var _2d=_2c[i].getElementsByTagName("input");
for(var j=0;j<_2d.length;j++){
var _b=_2d[j].type.toLowerCase();
if(_b=="radio"||_b=="checkbox"){
YEVENT.addListener(_2d[j],"click",(function(id){
return function(){
this.checkMatrixOnePerColumn(id);
};
})(_2d[j].id),this,true);
}
}
}
var _2f=YDOM.getElementsByClassName("fsSlider","input");
for(var i=0;i<_2f.length;i++){
var _30=this.getNumberProperties(_2f[i]);
if(!isNaN(_30.min)&&!isNaN(_30.max)){
var _31=YSLIDER.getHorizSlider(_2f[i].id+"-sliderbg",_2f[i].id+"-sliderthumb",0,100);
_31._fsobj=this;
_31._fsnumber=_30;
_31._fsfield=_2f[i];
_31._fsshow=YDOM.get(_2f[i].id+"-slidervalue");
var _32=_2f[i].value!=""?parseFloat(_2f[i].value):_30.min;
if(isNaN(_32)){
_32=_30.min;
}
if(!/msie/i.test(navigator.userAgent)||/opera/i.test(navigator.userAgent)){
var _33=Math.round((_32-_30.min)/(_30.max-_30.min)*100);
_31.setValue(_33,false,true,true);
}
if(!isNaN(_30.decimals)){
_32=_32.toFixed(_30.decimals);
}
_2f[i].value=_32;
_31._fsshow.innerHTML=_32;
_31.subscribe("change",function(_34){
var _35=((_34/100)*(this._fsnumber.max-this._fsnumber.min))+this._fsnumber.min;
_35=isNaN(this._fsnumber.decimals)?Math.round(_35):_35.toFixed(this._fsnumber.decimals);
if(_35==-0){
_35=0;
}
this._fsfield.value=_35;
this._fsshow.innerHTML=_35;
var id=this._fsfield.id.match(/(\d+)/);
id=id[1];
if(FSUtil.arrayIndexOf(this._fsobj.calcFields,id)>=0){
this._fsobj.updateCalculations(id);
}
if(FSUtil.arrayIndexOf(this._fsobj.logicFields,id)>=0){
this._fsobj.checkLogic(id);
}
},_31,true);
}
}
var _2d=[];
var _37=["fsFormatEmail","fsFormatPhoneUS","fsFormatPhoneUK","fsFormatPhoneAU","fsFormatPhoneXX","fsFormatZipUS","fsFormatZipCA","fsFormatZipUK","fsFormatZipAU","fsFormatNumber","fsFormatCreditCard"];
for(var _38=0;_38<_37.length;_38++){
_2d=_2d.concat(YDOM.getElementsByClassName(_37[_38],"input"));
}
for(var i=0;i<_2d.length;i++){
this.checkFormat(_2d[i]);
YEVENT.addListener(_2d[i],"change",(function(_39){
return function(){
this.checkFormat(_39);
};
})(_2d[i]),this,true);
}
this.updateProgress(1);
this.fitTableWidths(1);
if(!this.checkFreeLink()){
return;
}
};
this.getFieldContainer=function(_3a){
var _3b=_3a;
while(_3b&&_3b.tagName.toLowerCase()!="body"){
if(YDOM.hasClass(_3b,"fsFieldCell")){
return _3b;
}
_3b=_3b.parentNode;
}
return;
};
this.focus=function(_3c,_3d){
if(/MSIE 6/i.test(navigator.userAgent)){
return;
}
var _3e=this.getFieldContainer(_3c);
if(!_3e){
return;
}
if(_3d){
YDOM.addClass(_3e,"fsFieldFocused");
this.showCallout(_3e,true);
}else{
YDOM.removeClass(_3e,"fsFieldFocused");
this.showCallout(_3e,false);
}
};
this.showCallout=function(_3f,_40){
var _41=this.getFieldContainer(_3f);
var _42=YDOM.getElementsByClassName("fsCallout","div",_41);
if(!_42.length){
return;
}
var _43=_42[0];
if(_40){
var _44=YDOM.getXY(_3f);
var _45=FSUtil.getHeight(_3f);
var _46=FSUtil.getWidth(_3f);
YDOM.setStyle(_43,"opacity",0);
YDOM.setStyle(_43,"top",(_44[1])+_45+"px");
YDOM.setStyle(_43,"left",(_44[0]+50)+"px");
YDOM.setStyle(_43,"marginTop","25px");
FSUtil.show(_43);
var _47=new YAHOO.util.Anim(_43,{marginTop:{to:0},opacity:{to:1}},0.5,YAHOO.util.Easing.easeOut);
_47.animate();
}else{
var _47=new YAHOO.util.Anim(_43,{opacity:{to:0}},0.5,YAHOO.util.Easing.easeOut);
_47.onComplete.subscribe(function(){
FSUtil.hide(_43);
});
_47.animate();
}
};
this.fadeCallout=function(_48){
var _49=15;
var _4a=20;
var _4b=YDOM.hasClass(_48,"fsCalloutShowing");
var _4c=YDOM.getStyle(_48,"opacity");
var _4d=YDOM.getStyle(_48,"marginTop").split("px")[0];
var _4e=this;
if(_4b){
_4c+=(1/_49);
_4d-=(25/_49);
if(_4c>=1){
_4c=1;
}else{
setTimeout(function(){
_4e.fadeCallout(_48);
},_4a);
}
if(_4d<=0){
_4d=0;
}
}else{
_4c-=(1/_49);
if(_4c<=0){
_4c=0;
FSUtil.hide(_48);
}else{
setTimeout(function(){
_4e.fadeCallout(_48);
},_4a);
}
}
YDOM.setStyle(_48,"opacity",_4c);
YDOM.setStyle(_48,"margin-top",_4d+"px");
};
this.checkRequired=function(_4f){
if(location.search.indexOf("no_req")>=0){
return true;
}
this.clearError(_4f);
var _50=false;
var _51=[];
var _52=YDOM.getElementsByClassName("fsField","","fsPage"+this.id+"-"+_4f);
for(var i=0;i<_52.length;i++){
var _54=_52[i];
if(this.fieldIsVisible(_54)&&FSUtil.arrayIndexOf(_51,_54.id)==-1){
var _55=true;
if(YDOM.hasClass(_54,"fsRequired")){
var _56=_54.name.substr(0,_54.name.indexOf("-"));
var _57=document.getElementById("matrix-"+_56);
if(_57!=null){
var _58=_57.getElementsByTagName("input");
var _59=new Array(false);
for(var j=0;j<_58.length;j++){
hasRadio=false;
var _5b=_58[j].type.toLowerCase();
if(_5b=="radio"||_5b=="checkbox"){
if(_5b=="radio"){
hasRadio=true;
_55=this.checkValue(_54);
}
var col=parseInt(_58[j].id.substr(_58[j].id.lastIndexOf("-")+1))-1;
if(_59[col]==null){
_59[col]=false;
}
if(_58[j].checked){
_59[col]=true;
}
}
}
if(YDOM.hasClass(_57,"fsMatrixOnePerColumn")){
_55=true;
for(var c=0;c<_59.length;c++){
if(_59[c]==false){
_55=false;
}
}
}else{
if(!hasRadio){
_55=false;
for(var c=0;c<_59.length;c++){
if(_59[c]==true){
_55=true;
break;
}
}
}
}
if(_55==false){
this.highlightField(_54,true);
}
}else{
_55=this.checkValue(_54);
}
if(!_55){
_50=true;
if(YDOM.hasClass(_54,"fsFieldAddress")){
var id=_54.id.split("-");
id=id[0];
_51.push(id+"-zip");
}
}
}
if(_55&&YDOM.hasClass(_54,"fsUpload")){
_55=this.checkUpload(_54);
if(!_55){
_50=true;
}
}
if(_55){
_55=this.checkFormat(_54);
if(!_55){
_50=true;
}
}
}
}
if(_50){
this.showError(YDOM.get("requiredFieldsError")?YDOM.get("requiredFieldsError").innerHTML:"Please fill in a valid value for all required fields");
return false;
}
return true;
};
this.checkValue=function(_5f){
var bad=false;
switch(_5f.type.toLowerCase()){
case "text":
case "password":
case "textarea":
case "file":
case "email":
case "tel":
if(YDOM.hasClass(_5f,"fsFieldName")){
var id=_5f.id.split("-");
id=id[0];
bad=!YDOM.get(id+"-first").value.match(/\S/)||!YDOM.get(id+"-last").value.match(/\S/);
}else{
if(YDOM.hasClass(_5f,"fsFieldAddress")){
var id=_5f.id.split("-");
id=id[0];
bad=!YDOM.get(id+"-address").value.match(/\S/)||!YDOM.get(id+"-city").value.match(/\S/)||!YDOM.get(id+"-zip").value.match(/\S/);
if(!bad){
var _62=YDOM.get(id+"-state");
if(_62.type.toLowerCase()=="select-one"){
bad=!_62.options[_62.selectedIndex].value.match(/\S/);
}else{
bad=!_62.value.match(/\S/);
}
}
if(!bad){
var _63=YDOM.get(id+"-country");
if(_63&&!_63.options[_63.selectedIndex].value.match(/\S/)){
bad=true;
}
}
}else{
bad=!_5f.value.match(/\S/);
}
}
break;
case "select-one":
bad=!_5f.options[_5f.selectedIndex].value.match(/\S/);
break;
case "select-multiple":
bad=true;
var _64=_5f.options;
for(var j=0;j<_64.length;j++){
if(_64[j].selected&&_64[j].value.match(/\S/)){
bad=false;
}
}
break;
case "radio":
case "checkbox":
bad=true;
var _66=document.getElementsByName(_5f.name);
for(var j=0;j<_66.length;j++){
if(_66[j].checked){
bad=false;
}
}
break;
}
if(bad){
this.highlightField(_5f,true);
}
return !bad;
};
this.checkFormat=function(_67){
var _68=false;
if(_67.value!=""){
if(YDOM.hasClass(_67,"fsFormatEmail")){
_68=true;
if(!_67.value.match(/^\s*\S+\@[\w\-\.]+\.\w+\s*$/)){
this.highlightField(_67,true);
return false;
}
}else{
if(YDOM.hasClass(_67,"fsFormatPhoneUS")||YDOM.hasClass(_67,"fsFormatPhoneUK")||YDOM.hasClass(_67,"fsFormatPhoneAU")){
_68=true;
var val=_67.value.toLowerCase().replace(/[^\dx]/g,"");
var ext="";
if(val.indexOf("x")>=0){
var _6b=val.split("x");
val=_6b[0];
ext=_6b[1];
}
if(val.charAt(0)=="1"){
val=val.substr(1,val.length-1);
}
if(YDOM.hasClass(_67,"fsFormatPhoneUS")){
if(val.length!=10){
this.highlightField(_67,true);
return false;
}
_67.value="("+val.substr(0,3)+") "+val.substr(3,3)+"-"+val.substr(6,4);
}else{
if(YDOM.hasClass(_67,"fsFormatPhoneUK")){
if(val.substr(0,2)=="44"){
val=val.substr(2,val.length-2);
if(val.charAt(0)!="0"){
val="0"+val;
}
}
if(val.charAt(0)!="0"||(val.length!=10&&val.length!=11)){
this.highlightField(_67,true);
return false;
}
if((val.charAt(1)=="1"&&(val.charAt(2)=="1"||val.charAt(3)=="1"))||(val.charAt(1)=="8")){
_67.value=val.substr(0,4)+" "+val.substr(4,3)+" "+val.substr(7,val.length-7);
}else{
if(val.charAt(1)=="2"||val.charAt(1)=="3"||val.charAt(1)=="5"){
_67.value=val.substr(0,3)+" "+val.substr(3,4)+" "+val.substr(7,val.length-7);
}else{
_67.value=val.substr(0,5)+" "+val.substr(5,val.length-5);
}
}
}else{
if(YDOM.hasClass(_67,"fsFormatPhoneAU")){
if(val.substr(0,2)=="61"){
val=val.substr(2,val.length-2);
if(val.charAt(0)!="0"){
val="0"+val;
}
}
if(val.charAt(0)!="0"||val.length!=10){
this.highlightField(_67,true);
return false;
}
_67.value="("+val.substr(0,2)+") "+val.substr(2,4)+" "+val.substr(6,4);
}
}
}
if(ext.length){
_67.value+=" x"+ext;
}
}else{
if(YDOM.hasClass(_67,"fsFormatPhoneXX")){
_68=true;
if(!/\d{3,}/.test(_67.value)){
this.highlightField(_67,true);
return false;
}
}else{
if(YDOM.hasClass(_67,"fsFormatZipUS")){
_68=true;
var val=_67.value.replace(/^\s+/,"").replace(/\s+$/,"");
if(!val.match(/^\d{5}(?:\-\d{4})?$/)){
this.highlightField(_67,true);
return false;
}
_67.value=val;
}else{
if(YDOM.hasClass(_67,"fsFormatZipCA")){
_68=true;
var val=_67.value.replace(/^\s+/,"").replace(/\s+$/,"").replace(/\s{2,}/," ").toUpperCase();
if(val.length==6&&!val.match(/\s/)){
val=val.substr(0,3)+" "+val.substr(3,3);
}
if(!val.match(/^[A-Z]\d[A-Z] \d[A-Z]\d$/)){
this.highlightField(_67,true);
return false;
}
_67.value=val;
}else{
if(YDOM.hasClass(_67,"fsFormatZipUK")){
_68=true;
var val=_67.value.replace(/^\s+/,"").replace(/\s+$/,"").replace(/\s{2,}/," ").toUpperCase();
if(!val.match(/\s/)){
val=val.substr(0,val.length-3)+" "+val.substr(val.length-3,3);
}
if(!val.match(/^[A-Z]{1,2}[0-9R][0-9A-Z]? [0-9][ABD-HJLNP-UW-Z]{2}$/)){
this.highlightField(_67,true);
return false;
}
_67.value=val;
}else{
if(YDOM.hasClass(_67,"fsFormatZipAU")){
_68=true;
var val=_67.value.replace(/^\s+/,"").replace(/\s+$/,"").toUpperCase();
if(!val.match(/^\d{4}$/)){
this.highlightField(_67,true);
return false;
}
_67.value=val;
}else{
if(YDOM.hasClass(_67,"fsFormatNumber")){
_68=true;
var val=parseFloat(_67.value.replace(/[^\d\.\-]/g,""));
if(isNaN(val)){
this.highlightField(_67,true);
return false;
}
var _6c=this.getNumberProperties(_67);
if(!isNaN(_6c.min)&&val<_6c.min){
this.highlightField(_67,true);
return false;
}
if(!isNaN(_6c.max)&&val>_6c.max){
this.highlightField(_67,true);
return false;
}
if(!isNaN(_6c.decimals)){
val=val.toFixed(_6c.decimals);
}
_67.value=val;
}else{
if(YDOM.hasClass(_67,"fsFormatCreditCard")){
_68=true;
var val=_67.value.replace(/\D/g,"");
var _6d=0;
var _6e=1;
for(var i=val.length-1;i>=0;i--){
var _70=parseInt(val.charAt(i))*_6e;
_6d+=(_70>9)?_70-9:_70;
_6e=_6e==1?2:1;
}
if(_6d%10!=0){
this.highlightField(_67,true);
return false;
}
if(val.match(/^4/)){
if(!YDOM.hasClass(_67,"fsFormatCreditCardVisa")||(val.length!=13&&val.length!=16)){
this.highlightField(_67,true);
return false;
}
}else{
if(val.match(/^(?:51|52|53|54|55)/)){
if(!YDOM.hasClass(_67,"fsFormatCreditCardMasterCard")||val.length!=16){
this.highlightField(_67,true);
return false;
}
}else{
if(val.match(/^(?:6011|622|64|65)/)){
if(!YDOM.hasClass(_67,"fsFormatCreditCardDiscover")||val.length!=16){
this.highlightField(_67,true);
return false;
}
}else{
if(val.match(/^(?:34|37)/)){
if(!YDOM.hasClass(_67,"fsFormatCreditCardAmex")||val.length!=15){
this.highlightField(_67,true);
return false;
}
}else{
if(val.match(/^(?:300|301|302|303|304|305|36|54|55)/)){
if(!YDOM.hasClass(_67,"fsFormatCreditCardDiners")||(val.length!=14&&val.length!=16)){
this.highlightField(_67,true);
return false;
}
}else{
if(val.match(/^35/)){
if(!YDOM.hasClass(_67,"fsFormatCreditCardJCB")||val.length!=16){
this.highlightField(_67,true);
return false;
}
}else{
this.highlightField(_67,true);
return false;
}
}
}
}
}
}
_67.value=val;
}
}
}
}
}
}
}
}
}
}
if(_68){
this.highlightField(_67,false);
}
return true;
};
this.checkUpload=function(_71){
var _72=true;
var _73=[];
var _74=_71.className.split(/\s+/);
for(var j=0;j<_74.length;j++){
var _76=_74[j];
if(/^uploadTypes-/.test(_76)){
var m=_76.split("-");
_73=m[1].split(",");
}
}
for(var j=0;j<_73.length;j++){
_73[j]=_73[j].toLowerCase();
}
if(FSUtil.arrayIndexOf(_73,"*")<0&&_71&&_71.value!=""&&this.fieldIsVisible(_71)){
var ext=_71.value.match(/\.(\w+)$/);
_72=ext&&FSUtil.arrayIndexOf(_73,ext[1].toLowerCase())>=0?true:false;
if(!_72){
this.highlightField(_71,true);
var msg=YDOM.get("fileTypeAlert")?YDOM.get("fileTypeAlert").innerHTML:"You must upload one of the following file types for the selected field:";
alert(msg+_73.join(", "));
}
}
return _72;
};
this.showError=function(_7a){
var _7b=document.createElement("div");
_7b.id="fsError"+this.id;
_7b.className="fsError";
_7b.innerHTML=_7a;
YDOM.insertBefore(_7b,"fsForm"+this.id);
FSUtil.scrollTo("fsError"+this.id);
};
this.clearError=function(_7c){
var _7d=YDOM.getElementsByClassName("fsRequired","","fsPage"+this.id+"-"+_7c);
for(var i=0;i<_7d.length;i++){
this.highlightField(_7d[i],0);
}
var _7d=YDOM.getElementsByClassName("fsUpload","input","fsPage"+this.id+"-"+_7c);
for(var i=0;i<_7d.length;i++){
this.highlightField(_7d[i],0);
}
var _7f=YDOM.get("fsError"+this.id);
if(_7f){
_7f.parentNode.removeChild(_7f);
}
};
this.highlightField=function(_80,on){
var _82=this.getFieldContainer(_80);
if(on){
YDOM.addClass(_82,"fsValidationError");
}else{
YDOM.removeClass(_82,"fsValidationError");
}
};
this.checkSelected=function(_83,_84){
var _85=false;
var _86=document.getElementsByName(_83);
if(!_86.length){
_86=document.getElementsByName(_83+"[]");
}
for(var i=0;i<_86.length;i++){
var _88=_86[i];
if(_88.type=="checkbox"||_88.type=="radio"){
if(_88.checked&&_88.value==_84){
_85=true;
}
}else{
if(_88.type=="select-one"||_88.type=="text"){
_85=_88.value==_84;
}else{
if(_88.type=="select-multiple"){
var _89=_88.options;
for(var j=0;j<_89.length;j++){
var _8b=_89[j];
if(_8b.selected&&_8b.value==_84){
_85=true;
}
}
}
}
}
}
return _85;
};
this.checkLogic=function(id){
for(var i=0;i<this.checks.length;i++){
var _8e=this.checks[i];
if(FSUtil.arrayIndexOf(_8e.fields,id)>=0){
var _8f=_8e.bool=="AND"?true:false;
for(var j=0;j<_8e.checks.length;j++){
var _91=_8e.checks[j];
var _92=false;
if(_91.condition=="gt"){
_92=Number(YDOM.get("field"+_91.field).value)>Number(_91.option);
}else{
if(_91.condition=="lt"){
_92=Number(YDOM.get("field"+_91.field).value)<Number(_91.option);
}else{
_92=this.checkSelected("field"+_91.field,_91.option);
if(_91.condition=="!="){
_92=!_92;
}
}
}
if(_8e.bool=="AND"){
_8f=_8f?_92:false;
}else{
_8f=_8f?true:_92;
}
}
var _93=YDOM.get("fsCell"+_8e.target);
if(YDOM.hasClass(_93,"fsSectionCell")){
_93=YDOM.get("fsSection"+_8e.target);
}
if(_8f){
if(_8e.action=="Show"){
this.showFields(_93);
}else{
this.hideFields(_93);
}
}else{
if(_8e.action=="Show"){
this.hideFields(_93);
}else{
this.showFields(_93);
}
}
}
}
};
this.showFields=function(_94){
var _95=["input","textarea","select"];
for(var i=0;i<_95.length;i++){
var _97=_94.getElementsByTagName(_95[i]);
for(var j=0;j<_97.length;j++){
var _99=_97[j];
if(_99.type!="file"){
_99.disabled=false;
}
}
}
if(_94.tagName.toLowerCase()=="table"){
if(!FSUtil.visible(_94)){
FSUtil.show(_94);
this.updateTablePositionClasses(_94);
}
}else{
YDOM.removeClass(_94,"fsHiddenCell");
FSUtil.show(YDOM.getAncestorByTagName(_94,"tr"));
var _9a=YDOM.getAncestorByTagName(_94,"table");
if(!FSUtil.visible(_9a)){
FSUtil.show(_9a);
this.updateTablePositionClasses(_9a);
}
var _9b=YDOM.getElementsByClassName("fsMatrix","table",_94);
for(var _9c=0;_9c<_9b.length;_9c++){
var _9d=_9b[_9c].getElementsByTagName("td");
for(var _9e=0;_9e<_9d.length;_9e++){
YDOM.removeClass(_9d[_9e],"fsHiddenCell");
}
}
}
};
this.hideFields=function(_9f){
if(_9f.tagName.toLowerCase()=="table"){
if(FSUtil.visible(_9f)){
FSUtil.hide(_9f);
this.updateTablePositionClasses(_9f);
}
}else{
YDOM.addClass(_9f,"fsHiddenCell");
var _a0=YDOM.getAncestorByTagName(_9f,"tr");
var _a1=YDOM.getElementsByClassName("fsFieldCell","td",_a0);
var _a2=false;
if(_a1.length==1){
_a2=true;
}else{
var _a3=YDOM.getElementsByClassName("fsHiddenCell","td",_a0);
if(_a3.length==_a1.length){
_a2=true;
}
}
if(_a2){
FSUtil.hide(_a0);
var _a4=YDOM.getAncestorByTagName(_9f,"table");
var _a5=YDOM.getElementsByClassName("fsFieldRow","tr",_a4);
var _a6=false;
for(var i=0;i<_a5.length;i++){
if(FSUtil.visible(_a5[i])){
_a6=true;
break;
}
}
if(!_a6&&FSUtil.visible(_a4)){
FSUtil.hide(_a4);
this.updateTablePositionClasses(_a4);
}
}
}
var _a8=["input","textarea","select"];
for(var i=0;i<_a8.length;i++){
var _a9=_9f.getElementsByTagName(_a8[i]);
for(var j=0;j<_a9.length;j++){
var _ab=_a9[j];
if(_ab.type!="file"){
_ab.disabled=true;
}
}
}
};
this.updateTablePositionClasses=function(_ac){
var _ad=YDOM.getAncestorByTagName(_ac,"div");
if(!YDOM.hasClass(_ad,"fsPage")){
return;
}
var _ae=YDOM.getElementsByClassName("fsSection","table",_ad);
var _af=-1;
var _b0=-1;
for(var i=0;i<_ae.length;i++){
if(FSUtil.visible(_ae[i])){
if(_af<0){
_af=i;
YDOM.addClass(_ae[i],"fsFirstSection");
YDOM.removeClass(_ae[i],"fsMiddleSection");
YDOM.removeClass(_ae[i],"fsLastSection");
}else{
YDOM.addClass(_ae[i],"fsMiddleSection");
YDOM.removeClass(_ae[i],"fsFirstSection");
YDOM.removeClass(_ae[i],"fsLastSection");
}
YDOM.removeClass(_ae[_b0],"fsSingleSection");
_b0=i;
}
}
if(_b0>=0){
YDOM.removeClass(_ae[_b0],"fsMiddleSection");
if(_b0==_af){
YDOM.addClass(_ae[_b0],"fsSingleSection");
YDOM.removeClass(_ae[_b0],"fsFirstSection");
YDOM.removeClass(_ae[_b0],"fsLastSection");
}else{
YDOM.addClass(_ae[_b0],"fsLastSection");
YDOM.removeClass(_ae[_b0],"fsFirstSection");
}
}
};
this.getCalculation=function(id){
for(var i=0;i<this.calculations.length;i++){
var _b4=this.calculations[i];
if(FSUtil.arrayIndexOf(_b4.fields,id)>=0){
return _b4;
}
}
return null;
};
this.getCalculationByTarget=function(_b5){
for(var i=0;i<this.calculations.length;i++){
var _b7=this.calculations[i];
if(_b7.target==_b5){
return _b7;
}
}
return null;
};
this.updateCalculations=function(id){
for(var i=0;i<this.calculations.length;i++){
var _ba=this.calculations[i];
if(FSUtil.arrayIndexOf(_ba.fields,id)>=0){
this.evalCalculation(_ba);
}
}
};
this.evalCalculation=function(_bb){
var _bc=_bb.equation;
var _bd="";
for(var i=0;i<_bb.fields.length;i++){
var id=_bb.fields[i];
var _c0=new RegExp("\\["+id+"\\]","g");
var val=0;
var _c2=this.getFieldsByName("field"+id);
var _c3=_c2.length;
for(var j=0;j<_c3;j++){
var _c5=_c2[j];
var _c6;
switch(_c5.type.toLowerCase()){
case "radio":
case "checkbox":
if(_c5.value=="Other"&&YDOM.get(_c5.id+"value")){
_c6=YDOM.get(_c5.id+"value").value;
}else{
_c6=_c5.value;
}
var v=this.getNumber(_c6);
if(_c5.checked&&!isNaN(v)){
val+=v;
}
break;
case "select-multiple":
var _c8=_c5.options;
for(var k=0;k<_c8.length;k++){
var v=this.getNumber(_c8[k].value);
if(_c8[k].selected&&!isNaN(v)){
_c6=_c8[k].value;
val+=v;
}
}
break;
default:
_c6=YDOM.get(_c5).value;
var v=this.getNumber(YDOM.get(_c5).value);
if(!isNaN(v)){
val=v;
}
}
if(_c6&&_c6.indexOf("$")!=-1){
_bd="$";
}
}
_bc=_bc.replace(_c0,val);
}
var _ca=0;
try{
_ca=eval(_bc);
}
catch(e){
}
var _c5=YDOM.get("field"+_bb.target);
if(YDOM.hasClass(_c5,"fsFormatNumber")){
_c5.value=_ca;
this.checkFormat(_c5);
}else{
_c5.value=_bd+_ca.toFixed(2);
}
if(_c5.type=="text"){
this.checkLogic(_bb.target);
}
this.updateCalculations(_bb.target);
};
this.getNumber=function(str){
if(!str){
return;
}
if(str.indexOf(" == ")!=-1){
var _cc=str.split(" == ");
str=_cc[1];
}
return parseFloat(str.replace(/[^\d\.\-]/g,""));
};
this.previousPage=function(_cd){
var _ce=YDOM.get("fsPage"+this.id+"-"+_cd);
if(!_ce){
return;
}
if(_cd<=1){
return;
}
var _cf=_cd-1;
while(!this.pageIsVisible(_cf)&&_cf>1){
_cf--;
}
var _d0=YDOM.get("fsPage"+this.id+"-"+_cf);
FSUtil.hide(_ce);
FSUtil.show(_d0);
this.updateProgress(_cf);
this.clearError(_cd);
FSUtil.hide("fsSubmit"+this.id);
FSUtil.scrollTo(_d0);
this.fitTableWidths(_cf);
this.page--;
};
this.nextPage=function(_d1){
var _d2=YDOM.get("fsPage"+this.id+"-"+_d1);
if(!_d2){
return;
}
if(_d1>=this.lastPage){
return;
}
if(this.checkRequired(_d1)){
var _d3=_d1+1;
while(!this.pageIsVisible(_d3)&&_d3<this.lastPage){
_d3++;
}
this.updateProgress(_d3);
var _d4=YDOM.get("fsPage"+this.id+"-"+_d3);
FSUtil.hide(_d2);
FSUtil.show(_d4);
if(_d3==this.lastPage){
FSUtil.show("fsSubmit"+this.id);
}
FSUtil.scrollTo(_d4);
this.fitTableWidths(_d3);
this.page++;
if(_d3==this.lastPage){
if(window["cp"+this.id]!=null){
window["cp"+this.id].parsePage();
}
}
}
};
this.fitTableWidths=function(_d5){
if(!/msie/i.test(navigator.userAgent)||/opera/i.test(navigator.userAgent)){
return;
}
var _d6="fsPage"+this.id+"-"+_d5;
var _d7=YDOM.getElementsByClassName("fsTable","table",_d6);
var max=0;
for(var i=0;i<_d7.length;i++){
var _da=_d7[i].scrollWidth;
if(_da>max){
max=_da;
}
}
if(max){
YDOM.setStyle("fsForm"+this.id,"width",max+"px");
}
};
this.updateProgress=function(_db){
if(!YDOM.get("fsProgress"+this.id+"-"+_db)){
return;
}
var _dc=YDOM.getElementsByClassName("fsPage","div","fsForm"+this.id).length;
if(_dc<=1){
FSUtil.hide("fsProgress"+this.id+"-"+_db);
return;
}
var _dd=YDOM.get("fsProgressBarContainer"+this.id+"-"+_db);
var _de=YDOM.get("fsProgressBar"+this.id+"-"+_db);
var _df=100;
var _e0=_db/_dc;
if(_e0<0){
_e0=0;
}
if(_e0>1){
_e0=1;
}
var _e1=(_df*_e0)+"px";
YDOM.setStyle(_de,"width",_e1);
};
this.pageIsVisible=function(_e2){
var _e3=false;
var _e4=YDOM.getElementsByClassName("fsFieldCell","td","fsPage"+this.id+"-"+_e2);
for(var i=0;i<_e4.length;i++){
var _e6=_e4[i];
if(FSUtil.visible(_e6)&&!YDOM.hasClass(_e6,"fsHiddenCell")){
var _e7=YDOM.getAncestorByClassName(_e6,"fsSection");
if(!_e7||(FSUtil.visible(_e7)&&!YDOM.hasClass(_e7,"fsHiddenCell"))){
_e3=true;
}
}
}
var _e8=YDOM.getElementsByClassName("fsSection","table","fsPage"+this.id+"-"+_e2);
for(var i=0;i<_e8.length;i++){
var _e7=_e8[i];
if(FSUtil.visible(_e7)&&!YDOM.hasClass(_e7,"fsHiddenCell")){
_e3=true;
}
}
return _e3;
};
this.fieldIsVisible=function(_e9){
var _ea=_e9.parentNode;
while(_ea&&_ea.tagName.toLowerCase()!="body"&&!YDOM.hasClass(_ea,"fsFieldCell")){
_ea=_ea.parentNode;
}
var _eb=_ea&&_ea.tagName.toLowerCase()!="body"&&FSUtil.visible(_ea)&&!YDOM.hasClass(_ea,"fsHiddenCell")?true:false;
if(!_eb){
return false;
}
var _ec=_ea.parentNode;
while(_ec&&_ec.tagName.toLowerCase()!="body"&&!YDOM.hasClass(_ec,"fsSection")){
_ec=_ec.parentNode;
}
if(!_ec||_ec.tagName.toLowerCase()=="body"){
return _eb;
}
return FSUtil.visible(_ec)&&!YDOM.hasClass(_ec,"fsHiddenCell");
};
this.checkForm=function(){
var res=this.checkRequired(this.lastPage);
if(res){
var _ee=[];
var _ef=YDOM.getElementsByClassName("fsRequired","","fsForm"+this.id);
for(var i=0;i<_ef.length;i++){
var _f1=_ef[i];
if(!this.fieldIsVisible(_f1)){
if(_f1.id.indexOf("_")>=0){
var m=_f1.id.split("_");
_ee.push(m[0]);
}else{
_ee.push(_f1.name);
}
}
}
if(YDOM.get("hidden_fields"+this.id)){
YDOM.get("hidden_fields"+this.id).value=_ee.join(",");
}
if(YDOM.get("captcha"+this.id)){
if(YDOM.get("captcha_code_"+this.id).value==""){
this.captchaError();
return false;
}
}
return true;
}else{
return false;
}
};
this.submitForm=function(){
if(!this.checkForm()){
return;
}
if(YDOM.get("captcha"+this.id)){
YDOM.get("fsSubmitButton"+this.id).disabled=true;
var _f3=YDOM.get("fsForm"+this.id).action.replace(/index.php$/,"captcha.php");
this.scriptRequest(_f3+"?action=test&v=2&captcha_code="+YDOM.get("captcha_code_"+this.id).value+"&form="+this.id+"&fspublicsession="+YDOM.get("session_id"+this.id).value+"&r="+(new Date()).getTime());
}else{
YDOM.get("fsForm"+this.id).submit();
}
};
this.captchaError=function(){
YDOM.addClass("captcha"+this.id,"captchaError");
FSUtil.scrollTo("captcha"+this.id);
};
this.reloadCaptcha=function(_f4){
var _f5=YDOM.get("fsForm"+this.id).action.replace(/index.php$/,"captcha.php");
YDOM.get("captcha_image_"+this.id).src=_f5+"?fspublicsession="+_f4+"&r="+Math.random();
};
this.scriptRequest=function(req){
var _f7=document.getElementsByTagName("head");
if(!_f7.length){
YDOM.get("fsForm"+this.id).submit();
return;
}
_f7=_f7[0];
var _f8=document.createElement("script");
_f8.setAttribute("type","text/javascript");
_f8.setAttribute("charset","utf-8");
_f8.setAttribute("src",req);
_f8.setAttribute("id","scriptRequest"+this.scriptRequestCounter);
_f7.appendChild(_f8);
this.scriptRequestCounter++;
};
this.captchaTestCallback=function(_f9){
if(_f9.res=="OK"){
YDOM.get("fsForm"+this.id).submit();
}else{
this.captchaError();
}
YDOM.get("fsSubmitButton"+this.id).disabled=false;
};
this.calendarShow=function(_fa,_fb,_fc){
var _fd=YDOM.getRegion(_fc.containerId+"Link");
if(_fd){
YDOM.setStyle(_fc.oDomContainer,"top",_fd.top+"px");
YDOM.setStyle(_fc.oDomContainer,"left",(_fd.left+16)+"px");
}
var id=_fc.id.match(/(\d+)/);
id=id[1];
var cur=new Date;
var _100=YDOM.get("field"+id+"M");
var _101=_100&&_100.selectedIndex?_100.selectedIndex:cur.getMonth()+1;
var _102=YDOM.get("field"+id+"D");
var day=_102&&_102.selectedIndex?_102.selectedIndex:cur.getDate();
var _104=YDOM.get("field"+id+"Y");
var year=cur.getFullYear();
if(_104&&_104.selectedIndex){
var year=parseInt(_104.options[_104.selectedIndex].value,10);
if(year<100){
year+=2000;
}
}
_fc.select(_101+"/"+day+"/"+year);
_fc.setMonth(_101-1);
_fc.setYear(year);
_fc.render();
};
this.calendarSelect=function(type,args,_108){
var id=_108.id.match(/(\d+)/);
id=id[1];
var _10a=args[0];
var date=_10a[0];
var year=date[0],_10d=date[1],day=date[2];
var _10f=YDOM.get("field"+id+"M");
if(_10f){
_10f.selectedIndex=_10d;
}
var _110=YDOM.get("field"+id+"D");
if(_110){
_110.selectedIndex=day;
}
var _111=YDOM.get("field"+id+"Y");
if(_111){
for(var y=1;y<_111.options.length;y++){
var _113=parseInt(_111.options[y].value,10);
if(_113<100){
_113+=2000;
}
if(_113==year){
_111.selectedIndex=y;
break;
}
}
}
_108.hide();
};
this.textareaCharLimiter=function(id,_115){
var _116=YDOM.get("field"+id);
var _117=YDOM.get("fsCounter"+id);
var text=YDOM.get(_116).value;
if(text.length>_115){
_116.value=text.substring(0,_115);
}
_117.innerHTML=_115-YDOM.get(_116).value.length;
var _119=YDOM.getRegion(_116.id);
if(_119){
YDOM.setStyle(_117.id,"top",(_119.bottom-FSUtil.getHeight(_117)-5)+"px");
YDOM.setStyle(_117.id,"left",(_119.right-FSUtil.getWidth(_117)-25)+"px");
}
};
this.getFieldsByName=function(name){
var _11b=new Array();
var els=document.getElementsByName(name);
if(els.length>0){
for(var i=0;i<els.length;i++){
_11b.push(els[i]);
}
}else{
var els=document.getElementsByName(name+"[]");
for(var i=0;i<els.length;i++){
_11b.push(els[i]);
}
}
return _11b;
};
this.saveIncomplete=function(page,_11f){
if(!confirm(YDOM.get("resumeConfirm")?YDOM.get("resumeConfirm").innerHTML:"Are you sure you want to leave this form and resume later?")){
return;
}
YDOM.get("incomplete"+this.id).value="true";
YDOM.get("incomplete_email"+this.id).value=_11f;
YDOM.get("fsForm"+this.id).submit();
};
this.checkFreeLink=function(){
var form=YDOM.get("fsForm"+this.id);
if(!YDOM.hasClass(form,"fsFormFree")){
return true;
}
var doc;
var type=YDOM.get("referrer_type"+this.id);
switch(type.value){
case "iframe":
doc=window.parent.document;
break;
case "js":
doc=window.document;
break;
default:
return true;
}
var _123=false;
var _124=doc.getElementsByTagName("a");
for(var i=0;i<_124.length;i++){
if((_124[i].href.indexOf("http://www.formspring.com/")==0)||(_124[i].href.indexOf("http://www.formstack.com/")==0)){
_123=true;
break;
}
}
if(_123){
return true;
}
this.showError(YDOM.get("embedError")?YDOM.get("embedError").innerHTML:"There was an error displaying the form. Please copy and paste the embed code again.");
FSUtil.hide(form);
return false;
};
this.checkMatrixOnePerColumn=function(id){
var ids=id.split("-");
var _128=ids[0];
var _129=ids[1];
var _12a=ids[2];
var _12b=YDOM.get("matrix-"+_128).getElementsByTagName("input");
for(var i=0;i<_12b.length;i++){
var re=new RegExp("^"+_128+"-\\d+-"+_12a+"$");
if(_12b[i].id!=id&&re.test(_12b[i].id)){
_12b[i].checked=false;
}
}
};
this.getNumberProperties=function(_12e){
var _12f={min:NaN,max:NaN,decimals:NaN};
var _130=_12e.className.split(/\s+/);
for(var i=0;i<_130.length;i++){
var _132=_130[i];
var _133;
if(_133=_132.match(/^fsNumberMin-([\-\d]+)/)){
_12f.min=parseInt(_133[1]);
}else{
if(_133=_132.match(/^fsNumberMax-([\-\d]+)/)){
_12f.max=parseInt(_133[1]);
}else{
if(_133=_132.match(/^fsNumberDecimals-([\d]+)/)){
_12f.decimals=parseInt(_133[1]);
}
}
}
}
return _12f;
};
};
function FSUtil(){
};
FSUtil.checkAll=function(el){
var _135=el.name.replace("_all","_");
var i=1;
var e;
while(e=document.getElementById(_135+i)){
e.checked=el.checked;
i++;
}
form=document.getElementsByName("form");
form=form[0];
id=_135.replace("field","");
id=id.replace("_","");
eval("form"+form.value+".checkLogic("+id+")");
};
FSUtil.show=function(el){
YDOM.setStyle(el,"display","");
};
FSUtil.hide=function(el){
YDOM.setStyle(el,"display","none");
};
FSUtil.visible=function(el){
return YDOM.getStyle(el,"display")!="none";
};
FSUtil.scrollTo=function(el){
window.scroll(YDOM.getX(el),YDOM.getY(el));
};
FSUtil.getHeight=function(el){
var _13d=YDOM.getRegion(el);
var _13e=_13d.bottom-_13d.top;
return isNaN(_13e)?0:_13e;
};
FSUtil.getWidth=function(el){
var _140=YDOM.getRegion(el);
var _141=_140.right-_140.left;
return isNaN(_141)?0:_141;
};
FSUtil.arrayIndexOf=function(arr,item){
for(var i=0;i<arr.length;i++){
if(arr[i]==item){
return i;
}
}
return -1;
};

