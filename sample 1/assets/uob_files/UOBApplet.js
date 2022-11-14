var dbits,j_lm=!0;function BigInteger(b,c,d){null!=b&&("number"==typeof b?this.fromNumber(b,c,d):null==c&&"string"!=typeof b?this.fromString(b,256):this.fromString(b,c))}function nbi(){return new BigInteger(null)}function am1(b,c,d,e,f,g){for(;0<=--g;){var k=c*this[b++]+d[e]+f;f=Math.floor(k/67108864);d[e++]=k&67108863}return f}
function am2(b,c,d,e,f,g){var k=c&32767;for(c>>=15;0<=--g;){var h=this[b]&32767,m=this[b++]>>15,q=c*h+m*k,h=k*h+((q&32767)<<15)+d[e]+(f&1073741823);f=(h>>>30)+(q>>>15)+c*m+(f>>>30);d[e++]=h&1073741823}return f}function am3(b,c,d,e,f,g){var k=c&16383;for(c>>=14;0<=--g;){var h=this[b]&16383,m=this[b++]>>14,q=c*h+m*k,h=k*h+((q&16383)<<14)+d[e]+f;f=(h>>28)+(q>>14)+c*m;d[e++]=h&268435455}return f}
"Nokia"==navigator.appName?(BigInteger.prototype.am=am3,dbits=28):j_lm&&"Microsoft Internet Explorer"==navigator.appName?(BigInteger.prototype.am=am2,dbits=30):(BigInteger.prototype.am=am1,dbits=26);BigInteger.prototype.DB=dbits;BigInteger.prototype.DM=(1<<dbits)-1;BigInteger.prototype.DV=1<<dbits;var BI_FP=52;BigInteger.prototype.FV=Math.pow(2,BI_FP);BigInteger.prototype.F1=BI_FP-dbits;BigInteger.prototype.F2=2*dbits-BI_FP;var BI_RM="0123456789abcdefghijklmnopqrstuvwxyz",BI_RC=[],rr,vv;rr=48;
for(vv=0;9>=vv;++vv)BI_RC[rr++]=vv;rr=97;for(vv=10;36>vv;++vv)BI_RC[rr++]=vv;rr=65;for(vv=10;36>vv;++vv)BI_RC[rr++]=vv;function int2char(b){return BI_RM.charAt(b)}function intAt(b,c){var d=BI_RC[b.charCodeAt(c)];return null==d?-1:d}function bnpCopyTo(b){for(var c=this.t-1;0<=c;--c)b[c]=this[c];b.t=this.t;b.s=this.s}function bnpFromInt(b){this.t=1;this.s=0>b?-1:0;0<b?this[0]=b:-1>b?this[0]=b+DV:this.t=0}function nbv(b){var c=nbi();c.fromInt(b);return c}
function bnpFromString(b,c){var d;if(16==c)d=4;else if(8==c)d=3;else if(256==c)d=8;else if(2==c)d=1;else if(32==c)d=5;else if(4==c)d=2;else{this.fromRadix(b,c);return}this.s=this.t=0;for(var e=b.length,f=!1,g=0;0<=--e;){var k=8==d?b[e]&255:intAt(b,e);0>k?"-"==b.charAt(e)&&(f=!0):(f=!1,0==g?this[this.t++]=k:g+d>this.DB?(this[this.t-1]|=(k&(1<<this.DB-g)-1)<<g,this[this.t++]=k>>this.DB-g):this[this.t-1]|=k<<g,g+=d,g>=this.DB&&(g-=this.DB))}8==d&&0!=(b[0]&128)&&(this.s=-1,0<g&&(this[this.t-1]|=(1<<this.DB-
g)-1<<g));this.clamp();f&&BigInteger.ZERO.subTo(this,this)}function bnpClamp(){for(var b=this.s&this.DM;0<this.t&&this[this.t-1]==b;)--this.t}
function bnToString(b){if(0>this.s)return"-"+this.negate().toString(b);var c;if(16==b)c=4;else if(8==b)c=3;else if(2==b)c=1;else if(32==b)c=5;else if(4==b)c=2;else return this.toRadix(b);var d=(1<<c)-1,e,f=!1,g="",k=this.t,h=this.DB-k*this.DB%c;if(0<k--)for(h<this.DB&&0<(e=this[k]>>h)&&(f=!0,g=int2char(e));0<=k;)h<c?(e=(this[k]&(1<<h)-1)<<c-h,e|=this[--k]>>(h+=this.DB-c)):(e=this[k]>>(h-=c)&d,0>=h&&(h+=this.DB,--k)),0<e&&(f=!0),f&&(g+=int2char(e));16==b&&0<g.length%2&&(g="0"+g);return f?g:"0"}
function bnAbs(){return 0>this.s?this.negate():this}function bnCompareTo(b){var c=this.s-b.s;if(0!=c)return c;var d=this.t,c=d-b.t;if(0!=c)return c;for(;0<=--d;)if(0!=(c=this[d]-b[d]))return c;return 0}function nbits(b){var c=1,d;0!=(d=b>>>16)&&(b=d,c+=16);0!=(d=b>>8)&&(b=d,c+=8);0!=(d=b>>4)&&(b=d,c+=4);0!=(d=b>>2)&&(b=d,c+=2);0!=b>>1&&(c+=1);return c}function bnBitLength(){return 0>=this.t?0:this.DB*(this.t-1)+nbits(this[this.t-1]^this.s&this.DM)}
function bnpDLShiftTo(b,c){var d;for(d=this.t-1;0<=d;--d)c[d+b]=this[d];for(d=b-1;0<=d;--d)c[d]=0;c.t=this.t+b;c.s=this.s}function bnpDRShiftTo(b,c){for(var d=b;d<this.t;++d)c[d-b]=this[d];c.t=Math.max(this.t-b,0);c.s=this.s}function bnpLShiftTo(b,c){var d=b%this.DB,e=this.DB-d,f=(1<<e)-1,g=Math.floor(b/this.DB),k=this.s<<d&this.DM,h;for(h=this.t-1;0<=h;--h)c[h+g+1]=this[h]>>e|k,k=(this[h]&f)<<d;for(h=g-1;0<=h;--h)c[h]=0;c[g]=k;c.t=this.t+g+1;c.s=this.s;c.clamp()}
function bnpRShiftTo(b,c){c.s=this.s;var d=Math.floor(b/this.DB);if(d>=this.t)c.t=0;else{var e=b%this.DB,f=this.DB-e,g=(1<<e)-1;c[0]=this[d]>>e;for(var k=d+1;k<this.t;++k)c[k-d-1]|=(this[k]&g)<<f,c[k-d]=this[k]>>e;0<e&&(c[this.t-d-1]|=(this.s&g)<<f);c.t=this.t-d;c.clamp()}}
function bnpSubTo(b,c){for(var d=0,e=0,f=Math.min(b.t,this.t);d<f;)e+=this[d]-b[d],c[d++]=e&this.DM,e>>=this.DB;if(b.t<this.t){for(e-=b.s;d<this.t;)e+=this[d],c[d++]=e&this.DM,e>>=this.DB;e+=this.s}else{for(e+=this.s;d<b.t;)e-=b[d],c[d++]=e&this.DM,e>>=this.DB;e-=b.s}c.s=0>e?-1:0;-1>e?c[d++]=this.DV+e:0<e&&(c[d++]=e);c.t=d;c.clamp()}
function bnpMultiplyTo(b,c){var d=this.abs(),e=b.abs(),f=d.t;for(c.t=f+e.t;0<=--f;)c[f]=0;for(f=0;f<e.t;++f)c[f+d.t]=d.am(0,e[f],c,f,0,d.t);c.s=0;c.clamp();this.s!=b.s&&BigInteger.ZERO.subTo(c,c)}function bnpSquareTo(b){for(var c=this.abs(),d=b.t=2*c.t;0<=--d;)b[d]=0;for(d=0;d<c.t-1;++d){var e=c.am(d,c[d],b,2*d,0,1);(b[d+c.t]+=c.am(d+1,2*c[d],b,2*d+1,e,c.t-d-1))>=c.DV&&(b[d+c.t]-=c.DV,b[d+c.t+1]=1)}0<b.t&&(b[b.t-1]+=c.am(d,c[d],b,2*d,0,1));b.s=0;b.clamp()}
function bnpDivRemTo(b,c,d){var e=b.abs();if(!(0>=e.t)){var f=this.abs();if(f.t<e.t)null!=c&&c.fromInt(0),null!=d&&this.copyTo(d);else{null==d&&(d=nbi());var g=nbi(),k=this.s;b=b.s;var h=this.DB-nbits(e[e.t-1]);0<h?(e.lShiftTo(h,g),f.lShiftTo(h,d)):(e.copyTo(g),f.copyTo(d));e=g.t;f=g[e-1];if(0!=f){var m=f*(1<<this.F1)+(1<e?g[e-2]>>this.F2:0),q=this.FV/m,m=(1<<this.F1)/m,s=1<<this.F2,l=d.t,r=l-e,n=null==c?nbi():c;g.dlShiftTo(r,n);0<=d.compareTo(n)&&(d[d.t++]=1,d.subTo(n,d));BigInteger.ONE.dlShiftTo(e,
n);for(n.subTo(g,g);g.t<e;)g[g.t++]=0;for(;0<=--r;){var t=d[--l]==f?this.DM:Math.floor(d[l]*q+(d[l-1]+s)*m);if((d[l]+=g.am(0,t,d,r,0,e))<t)for(g.dlShiftTo(r,n),d.subTo(n,d);d[l]<--t;)d.subTo(n,d)}null!=c&&(d.drShiftTo(e,c),k!=b&&BigInteger.ZERO.subTo(c,c));d.t=e;d.clamp();0<h&&d.rShiftTo(h,d);0>k&&BigInteger.ZERO.subTo(d,d)}}}}function Classic(b){this.m=b}function cConvert(b){return 0>b.s||0<=b.compareTo(this.m)?b.mod(this.m):b}function cRevert(b){return b}
function cReduce(b){b.divRemTo(this.m,null,b)}function cMulTo(b,c,d){b.multiplyTo(c,d);this.reduce(d)}function cSqrTo(b,c){b.squareTo(c);this.reduce(c)}Classic.prototype.convert=cConvert;Classic.prototype.revert=cRevert;Classic.prototype.reduce=cReduce;Classic.prototype.mulTo=cMulTo;Classic.prototype.sqrTo=cSqrTo;
function bnpInvDigit(){if(1>this.t)return 0;var b=this[0];if(0==(b&1))return 0;var c=b&3,c=c*(2-(b&15)*c)&15,c=c*(2-(b&255)*c)&255,c=c*(2-((b&65535)*c&65535))&65535,c=c*(2-b*c%this.DV)%this.DV;return 0<c?this.DV-c:-c}function Montgomery(b){this.m=b;this.mp=b.invDigit();this.mpl=this.mp&32767;this.mph=this.mp>>15;this.um=(1<<b.DB-15)-1;this.mt2=2*b.t}
function montConvert(b){var c=nbi();b.abs().dlShiftTo(this.m.t,c);c.divRemTo(this.m,null,c);0>b.s&&0<c.compareTo(BigInteger.ZERO)&&this.m.subTo(c,c);return c}function montRevert(b){var c=nbi();b.copyTo(c);this.reduce(c);return c}
function montReduce(b){for(;b.t<=this.mt2;)b[b.t++]=0;for(var c=0;c<this.m.t;++c){var d=b[c]&32767,e=d*this.mpl+((d*this.mph+(b[c]>>15)*this.mpl&this.um)<<15)&b.DM,d=c+this.m.t;for(b[d]+=this.m.am(0,e,b,c,0,this.m.t);b[d]>=b.DV;)b[d]-=b.DV,b[++d]++}b.clamp();b.drShiftTo(this.m.t,b);0<=b.compareTo(this.m)&&b.subTo(this.m,b)}function montSqrTo(b,c){b.squareTo(c);this.reduce(c)}function montMulTo(b,c,d){b.multiplyTo(c,d);this.reduce(d)}Montgomery.prototype.convert=montConvert;
Montgomery.prototype.revert=montRevert;Montgomery.prototype.reduce=montReduce;Montgomery.prototype.mulTo=montMulTo;Montgomery.prototype.sqrTo=montSqrTo;function bnpIsEven(){return 0==(0<this.t?this[0]&1:this.s)}function bnpExp(b,c){var d=nbi(),e=nbi(),f=c.convert(this),g=nbits(b)-1;for(f.copyTo(d);0<=--g;)if(c.sqrTo(d,e),0<(b&1<<g))c.mulTo(e,f,d);else var k=d,d=e,e=k;return c.revert(d)}function bnModPowInt(b,c){var d;d=256>b||c.isEven()?new Classic(c):new Montgomery(c);return this.exp(b,d)}
function bnpToRadix(b){null==b&&(b=10);if(0==this.signum()||2>b||36<b)return"0";var c=this.chunkSize(b),c=Math.pow(b,c),d=nbv(c),e=nbi(),f=nbi(),g="";for(this.divRemTo(d,e,f);0<e.signum();)g=(c+f.intValue()).toString(b).substr(1)+g,e.divRemTo(d,e,f);return f.intValue().toString(b)+g}
function bnpBitwiseTo(b,c,d){var e,f,g=Math.min(b.t,this.t);for(e=0;e<g;++e)d[e]=c(this[e],b[e]);if(b.t<this.t){f=b.s&this.DM;for(e=g;e<this.t;++e)d[e]=c(this[e],f);d.t=this.t}else{f=this.s&this.DM;for(e=g;e<b.t;++e)d[e]=c(f,b[e]);d.t=b.t}d.s=c(this.s,b.s);d.clamp()}function op_xor(b,c){return b^c}function bnXor(b){var c=nbi();this.bitwiseTo(b,op_xor,c);return c}
function lbit(b){if(0==b)return-1;var c=0;0==(b&65535)&&(b>>=16,c+=16);0==(b&255)&&(b>>=8,c+=8);0==(b&15)&&(b>>=4,c+=4);0==(b&3)&&(b>>=2,c+=2);0==(b&1)&&++c;return c}BigInteger.prototype.copyTo=bnpCopyTo;BigInteger.prototype.fromInt=bnpFromInt;BigInteger.prototype.fromString=bnpFromString;BigInteger.prototype.clamp=bnpClamp;BigInteger.prototype.dlShiftTo=bnpDLShiftTo;BigInteger.prototype.subTo=bnpSubTo;BigInteger.prototype.rShiftTo=bnpRShiftTo;BigInteger.prototype.drShiftTo=bnpDRShiftTo;
BigInteger.prototype.invDigit=bnpInvDigit;BigInteger.prototype.isEven=bnpIsEven;BigInteger.prototype.multiplyTo=bnpMultiplyTo;BigInteger.prototype.lShiftTo=bnpLShiftTo;BigInteger.prototype.divRemTo=bnpDivRemTo;BigInteger.prototype.squareTo=bnpSquareTo;BigInteger.prototype.exp=bnpExp;BigInteger.prototype.toRadix=bnpToRadix;BigInteger.prototype.bitwiseTo=bnpBitwiseTo;BigInteger.prototype.toString=bnToString;BigInteger.prototype.abs=bnAbs;BigInteger.prototype.compareTo=bnCompareTo;
BigInteger.prototype.bitLength=bnBitLength;BigInteger.prototype.modPowInt=bnModPowInt;BigInteger.prototype.xor=bnXor;BigInteger.ZERO=nbv(0);BigInteger.ONE=nbv(1);
function OAEPEncodedMessage(b){function c(b,c,e){for(var g=Array(4),h=Math.ceil(e/f)-1,k=[],l=0;l<=h;l++){var s=l,m=g;m[0]=s>>>24;m[1]=s>>>16;m[2]=s>>>8;m[3]=s;k=k.concat(d(b.concat(g)))}OBMApplet.arraycopy(k,0,c,0,e)}function d(b){return Util.fromHexString(SHA1Hash(Util.cByteArrayToNString(b)))}function e(b){b=Array(b);for(var c,d,e=0;e<b.length;e++)c=Math.floor(16*Math.random()),d=Math.floor(16*Math.random()),b[e]=(c<<4)+d;return b}var f=20,g=OBMApplet.RSA_MODULUS_SIZE_IN_BYTES-42,k=OBMApplet.RSA_MODULUS_SIZE_IN_BYTES-
1,h=k-20,m=OAEPEncodedMessage.ERR_INVALID_PIN_MESSAGE,q=OAEPEncodedMessage.ERR_INVALID_PIN_MESSAGE_LENGTH,s,l;(function(b){var n=e(16),t=Array(g);if(null==b)throw{name:"OAEPEncodedMsgException",message:"Error no : "+m+" - Invalid PIN Message",code:m};var p=b.length();if(17>p||p>g)throw{name:"OAEPEncodedMsgException",message:"Error no : "+q+" Invalid PIN message length",code:q};b.getBytes(t);var u=d(n);b=Array(h);OBMApplet.fillByteArray(b,0);OBMApplet.arraycopy(u,0,b,0,20);u=20+(h-20-p-1);b[u]=1;u++;
OBMApplet.arraycopy(t,0,b,u,p);p=e(f);u=Array(h);c(p,u,h);t=Array(h);OBMApplet.xorByteArray(b,u,t);u=Array(f);c(t,u,f);b=Array(f);OBMApplet.xorByteArray(p,u,b);p=Array(k);OBMApplet.arraycopy(b,0,p,0,20);OBMApplet.arraycopy(t,0,p,20,h);s=p;l=Util.toHexString(n)})(b);this.getBytes=function(){return s};this.length=function(){return s.length};this.getEncodingParameter=function(){return l}}OAEPEncodedMessage.ERR_INVALID_PIN_MESSAGE=30;OAEPEncodedMessage.ERR_INVALID_PIN_MESSAGE_LENGTH=31;
function OBMApplet(){function b(b){if(0==h||null==k||null==g)throw{name:"EncryptedMessageException",message:"Error no : "+c+" Invalid RSA key",code:c};if(g.length/2!=h||k.length/2!=h)throw{name:"EncryptedMessageException",message:"Error no : "+e+" Invalid RSA key length",code:e};if(null==b)throw{name:"EncryptedMessageException",message:"Error no : "+d+" Invalid OAEP-encoded message length",code:d};if(b.length>h)throw{name:"EncryptedMessageException",message:"Error no : "+d+" input data too large for RSA encryption",
code:d};}var c=OBMApplet.ERR_INVALID_RSA_KEY,d=OBMApplet.ERR_INVALID_ENCODED_MSG_LENGTH,e=OBMApplet.ERR_INVALID_RSA_KEY_LENGTH,f=UOBApplet.ERR_OLD_NEW_PASSWORD_SAME,g=OBMApplet.PUBLIC_EXPONENT_STRING,k=OBMApplet.MODULUS_STRING,h=OBMApplet.RSA_MODULUS_SIZE_IN_BYTES,m="",q="",s=!1;if(0==h||null==k||null==g)throw{name:"OBMAppletException",message:"Error no : "+c+" Invalid RSA key",code:c};if(g.length/2!=h||k.length/2!=h)throw{name:"OBMAppletException",message:"Error no : "+e+" Invalid RSA key length",
code:e};s=!0;this.OBM_EncryptPassword=function(){if(2==arguments.length){var d=arguments[1];if(!s)throw{name:"OBMAppletException",message:"Error no : "+c+" Invalid RSA key",code:c};var e=new PINBlock(arguments[0]),d=new PINMessage(e,d),d=new OAEPEncodedMessage(d);b(d);q=d.getEncodingParameter();d=[0].concat(d.getBytes());e=new RSAKey2048;e.setPublic(k,g);m=e.encryptNativeBytes(d)}else if(3==arguments.length){var h=arguments[0],e=arguments[1],d=arguments[2];if(!s)throw{name:"OBMAppletException",message:"Error no : "+
c+" Invalid RSA key",code:c};if(h==e)throw{name:"OBMAppletException",message:"Error no : "+f+" New password is same as old password.",code:f};h=new PINBlock(h);e=new PINBlock(e);d=new PINMessage(h,e,d);d=new OAEPEncodedMessage(d);b(d);q=d.getEncodingParameter();d=[0].concat(d.getBytes());e=new RSAKey2048;e.setPublic(k,g);m=e.encryptNativeBytes(d)}};this.OBM_GetEncryptedPassword=function(){return m};this.OBM_GetEncodingParameter=function(){return q}}OBMApplet.ERR_INVALID_RSA_KEY=42;
OBMApplet.ERR_INVALID_ENCODED_MSG_LENGTH=40;OBMApplet.ERR_INVALID_RSA_KEY_LENGTH=41;OBMApplet.PUBLIC_EXPONENT_STRING="000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A1C3";OBMApplet.MODULUS_STRING="BB3DEFC03F8B0B2BEE2F62CE67691469EF96783D4B7788A1168D116B412833ECE1D44F0DA1EE66571C84C128E8BF6365151D5799193F11FA4FA6F7D0D2BD44AF2EB289DBAC477023389188FD9D88C91F69A5656FFD4853CF4D660134FE091E8D92E37DC6B2861F60BFF02D96042FD3A2A49F7C93C110BD534668A93905E40D23";
OBMApplet.RSA_MODULUS_SIZE_IN_BYTES=256;OBMApplet.fillByteArray=function(b,c){var d;for(d=0;d<b.length;d++)b[d]=c};OBMApplet.convertAsciiArrayToHexByteArray=function(b,c,d,e){var f,g,k,h;h=Math.ceil(e/2);for(k=g=0;g<h;g++)k<e-1?(f=(b[k]&15)<<4,f|=b[k+1]&15):(f=c[g+d]&15,f|=(b[k]&15)<<4),c[g+d]=f,k+=2};OBMApplet.arraycopy=function(b,c,d,e,f){for(f=Math.min(c+f,b.length);c<f;c++,e++)d[e]=b[c]};
OBMApplet.convertStringToPackedHexByteArray=function(b,c,d){for(var e=b.length,f=0,g=0;g<e;f++,g++){var k=b.charAt(g),k=parseInt(k,16);if(isNaN(k))return 1;var h=k<<4;if(++g<e){k=b.charAt(g);k=parseInt(k,16);if(isNaN(k))return 1;c[f+d]=h|k}else c[f+d]=h|15}return 0};OBMApplet.xorByteArray=function(b,c,d){for(var e=0;e<b.length;e++)d[e]=b[e]^c[e]};
function PINBlock(b){var c=PINBlock.ERR_INVALID_PIN_LENGTH,d=PINBlock.ERR_INVALID_PIN,e=PINBlock.ISO_FORMAT_2_TYPE,f=PINBlock.ISO_FORMAT_12_TYPE,g=UOBApplet.MAX_PIN_STRING_SIZE,k=UOBApplet.MIN_PIN_STRING_SIZE,h=[],m=0,q=0;this.getPINBlockType=function(){return m};this.getBytes=function(){return h};this.length=function(){return q};(function(b){var l=!1,r=!1,n=[],t=[];if(null==b||void 0==b)throw{name:"PINBlockException",message:"Error no : "+d+" - Invalid PIN String",code:d};var p=b.length;if(p>g||
p<k)throw{name:"PINBlockException",message:"Error no : "+c+" - Invalid PIN length",code:c};for(var u=0;u<p;u++){var v=b.charAt(u);if(!/^([a-zA-Z]|\d)$/.test(v)&&v!="_"){r=!0;break}l&&(/^\d/.test(v)?t[u]=parseInt(v):l=!1);n[u]=v.charCodeAt(0)}if(r)throw{name:"PINBlockException",message:"Error no : "+d+" - Invalid PIN String",code:d};if(l)n=t.length,m=e,q=8,h=Array(8),OBMApplet.fillByteArray(h,255),h[0]=32|n&15,OBMApplet.convertAsciiArrayToHexByteArray(t,h,1,n);else for(t=n.length,m=f,b=4,b=6>=t?1:Math.ceil((2+
t)/8),q=8*b,h=Array(8*b),OBMApplet.fillByteArray(h,255),h[0]=193,h[1]=t,b=2,l=0;b<t+2;b++,l++)h[b]=n[l]})(b)}PINBlock.ERR_INVALID_PIN_LENGTH=10;PINBlock.ERR_INVALID_PIN=11;PINBlock.ISO_FORMAT_2_TYPE=1;PINBlock.ISO_FORMAT_12_TYPE=2;
function PINMessage(){function b(b,c){l=Array(q);n=f;l[0]=n;r=1;d(b);e(c)}function c(b,c,f){l=Array(q);n=g;l[0]=n;r=1;d(b);d(c);e(f)}function d(b){if(null==b)throw{name:"PINMessageException",message:"Error no : "+k+" - Invalid PIN Block",code:k};OBMApplet.arraycopy(b.getBytes(),0,l,r,b.length());r+=b.length()}function e(b){if(null==b)throw{name:"PINMessageException",message:"Error no : "+m+" - Invalid Random Number String",code:m};var c=b.length,d=Math.ceil(c/2),e=2*(q-r);if(c<s||c>e||c!=2*d)throw{name:"PINMessageException",
message:"Error no : "+h+" - Invalid Random Number String length",code:h};if(0!=OBMApplet.convertStringToPackedHexByteArray(b,l,r))throw{name:"PINMessageException",message:"Error no :"+m+" - Invalid Random Number String",code:m};r+=d}var f=PINMessage.ONE_PIN_BLOCK_IN_MESSAGE,g=PINMessage.TWO_PIN_BLOCKS_IN_MESSAGE,k=PINMessage.ERR_INVALID_PIN_BLOCK,h=PINMessage.ERR_INVALID_RANDOM_NUMBER_LENGTH,m=PINMessage.ERR_INVALID_RANDOM_NUMBER,q=OBMApplet.RSA_MODULUS_SIZE_IN_BYTES-42,s=16,l,r,n;2==arguments.length?
b(arguments[0],arguments[1]):3==arguments.length&&c(arguments[0],arguments[1],arguments[2]);this.getBytes=function(b){OBMApplet.arraycopy(l,0,b,0,r)};this.length=function(){return r}}PINMessage.ONE_PIN_BLOCK_IN_MESSAGE=1;PINMessage.TWO_PIN_BLOCKS_IN_MESSAGE=2;PINMessage.ERR_INVALID_PIN_BLOCK=20;PINMessage.ERR_INVALID_RANDOM_NUMBER_LENGTH=21;PINMessage.ERR_INVALID_RANDOM_NUMBER=22;function parseBigInt(b,c){return new BigInteger(b,c)}
function pkcs1pad2B(b,c){var d=b.length;if(d>c-11)throw"104";d=randomBytes(c-d-3);d=[0,2].concat(d,[0],b);return new BigInteger(d)}function randomBytes(b){for(var c=[],d=0,d=0;d<b;d++)c[d]=Math.ceil(255*Math.random());return c}function RSAKey2048(){this.n=null;this.e=0;this.d=null}RSAKey2048.prototype.setPublic=function(b,c){null!=b&&null!=c&&0<b.length&&0<c.length?(this.n=parseBigInt(b,16),this.e=parseInt(c,16)):alert("Invalid RSA public key")};
RSAKey2048.prototype.doPublic=function(b){return b.modPowInt(this.e,this.n)};RSAKey2048.prototype.encryptNativeBytes=function(b){var c=this.n.bitLength()+7>>3;if(b.length>c)throw"104";b=new BigInteger(b);if(null==b)return null;b=this.doPublic(b);if(null==b)return null;b=b.toString(16);if(512<b.length)return null;if(512>b.length)for(c=0;c<512-b.length;c++)b="0"+b;return b};
RSAKey2048.prototype.encryptB=function(b){b=pkcs1pad2B(b,this.n.bitLength()+7>>3);if(null==b)return null;b=this.doPublic(b);if(null==b)return null;b=b.toString(16);if(512<b.length)return null;if(512>b.length)for(var c=0;c<512-b.length;c++)b="0"+b;return b};
function SHA1Hash(b){var c=[1518500249,1859775393,2400959708,3395469782];b+=String.fromCharCode(128);for(var d=Math.ceil((b.length/4+2)/16),e=Array(d),f=0;f<d;f++){e[f]=Array(16);for(var g=0;16>g;g++)e[f][g]=b.charCodeAt(64*f+4*g)<<24|b.charCodeAt(64*f+4*g+1)<<16|b.charCodeAt(64*f+4*g+2)<<8|b.charCodeAt(64*f+4*g+3)}e[d-1][14]=8*(b.length-1)/Math.pow(2,32);e[d-1][14]=Math.floor(e[d-1][14]);e[d-1][15]=8*(b.length-1)&4294967295;b=1732584193;for(var g=4023233417,k=2562383102,h=271733878,m=3285377520,
q=Array(80),s,l,r,n,t,f=0;f<d;f++){for(var p=0;16>p;p++)q[p]=e[f][p];for(p=16;80>p;p++)s=q[p-3]^q[p-8]^q[p-14]^q[p-16],q[p]=s<<1|s>>>31;s=b;l=g;r=k;n=h;t=m;for(p=0;80>p;p++){var u=Math.floor(p/20),v=s<<5|s>>>27,w;a:{switch(u){case 0:w=l&r^~l&n;break a;case 1:w=l^r^n;break a;case 2:w=l&r^l&n^r&n;break a;case 3:w=l^r^n;break a}w=void 0}u=v+w+t+c[u]+q[p]&4294967295;t=n;n=r;r=l<<30|l>>>2;l=s;s=u}b=b+s&4294967295;g=g+l&4294967295;k=k+r&4294967295;h=h+n&4294967295;m=m+t&4294967295}return b.toHexStr()+g.toHexStr()+
k.toHexStr()+h.toHexStr()+m.toHexStr()}Number.prototype.toHexStr=function(){for(var b="",c,d=7;0<=d;d--)c=this>>>4*d&15,b+=c.toString(16);return b};
function UOBApplet(){var b;this.OBM_SpecifyRSAPublicKey=function(c,d,e){"mod_siz:nomunge, pub_String:nomunge, mod_String:nomunge";OBMApplet.PUBLIC_EXPONENT_STRING=d;OBMApplet.MODULUS_STRING=e;OBMApplet.RSA_MODULUS_SIZE_IN_BYTES=c;try{b=new OBMApplet}catch(f){return f.code}return UOBApplet.ERR_NO_ERROR};this.OBM_EncryptPassword=function(c,d){"pinString:nomunge, rn_String:nomunge";try{b.OBM_EncryptPassword(c,d)}catch(e){return e.code}return UOBApplet.ERR_NO_ERROR};this.OBM_EncryptChangedPassword=function(c,
d,e){"oldPinString:nomunge, newPinString:nomunge, rn_String:nomunge";try{b.OBM_EncryptPassword(c,d,e)}catch(f){return f.code}return UOBApplet.ERR_NO_ERROR};this.OBM_GetEncryptedPassword=function(){return b.OBM_GetEncryptedPassword()};this.OBM_GetEncodingParameter=function(){return b.OBM_GetEncodingParameter()}}UOBApplet.ERR_NO_ERROR=0;UOBApplet.INVALID_PIN_LENGTH=10;UOBApplet.ERR_INVALID_PIN=11;UOBApplet.ERR_INVALID_PIN_BLOCK=20;UOBApplet.ERR_INVALID_RANDOM_NUMBER_LENGTH=21;
UOBApplet.ERR_INVALID_RANDOM_NUMBER=22;UOBApplet.ERR_OLD_NEW_PASSWORD_SAME=23;UOBApplet.ERR_INVALID_PIN_MESSAGE=30;UOBApplet.ERR_INVALID_PIN_MESSAGE_LENGTH=31;UOBApplet.ERR_INVALID_RSA_KEY_LENGTH=41;UOBApplet.ERR_INVALID_RSA_KEY=42;function Util(){}Util.toHexString=function(b){for(var c="",d=0;d<b.length;d++){var e;"number"==typeof b[d]?e=b[d].toString(16):"string"==typeof b[d]&&(e=b.charCodeAt(d).toString(16));1==e.length&&(e="0"+e);c+=e}return c};
Util.fromHexString=function(b){b=0==b.length%2?b:"0"+b;for(var c=b.length/2,d=[],e=0,f=0;e<c;e++,f++){var g=2*e;d[f]=parseInt("0x"+b.substring(g,g+2))}return d};Util.getByteArray=function(b){a=[];for(var c=0;c<b.length;c++)a[c]=b.charCodeAt(c);return a};Util.cByteArrayToNString=function(b){for(var c="",d=0;d<b.length;d++)c+=String.fromCharCode(b[d]);return c};
