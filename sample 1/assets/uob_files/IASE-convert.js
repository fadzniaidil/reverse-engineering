// Copyright (c) 2012. PrivyLink Pte Ltd
// All Rights Reserved.

// Data conversion functions for IASE
// Last updated: 2012/02/03

var Base64Convert =
{
	b64map : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",
	b64pad : "=",

	hex2b64 : function( h )
	{
		var i;
		var c;
		var ret = "";
		for(i = 0; i+3 <= h.length; i+=3) {
			c = parseInt(h.substring(i,i+3),16);
			ret += this.b64map.charAt(c >> 6) + this.b64map.charAt(c & 63);
		}
		if(i+1 == h.length) {
			c = parseInt(h.substring(i,i+1),16);
			ret += this.b64map.charAt(c << 2);
		}
		else if(i+2 == h.length) {
			c = parseInt(h.substring(i,i+2),16);
			ret += this.b64map.charAt(c >> 2) + this.b64map.charAt((c & 3) << 4);
		}
		while((ret.length & 3) > 0) ret += this.b64pad;
		return ret;
	},

	b64tohex : function( s )
	{
		var ret = "";
		var i;
		var k = 0; // b64 state, 0-3
		var slop;
		for(i = 0; i < s.length; ++i) {
			if(s.charAt(i) == this.b64pad) break;
			v = this.b64map.indexOf(s.charAt(i));
			if(v < 0) continue;
			if(k == 0) {
				ret += int2char(v >> 2);
				slop = v & 3;
				k = 1;
			}
			else if(k == 1) {
				ret += int2char((slop << 2) | (v >> 4));
				slop = v & 0xf;
				k = 2;
			}
			else if(k == 2) {
				ret += int2char(slop);
				ret += int2char(v >> 2);
				slop = v & 3;
				k = 3;
			}
			else {
				ret += int2char((slop << 2) | (v >> 4));
				ret += int2char(v & 0xf);
				k = 0;
			}
		}
		if(k == 1)
			ret += int2char(slop << 2);
		return ret;
	},

	b64toBA : function( s )
	{
		var h = this.b64tohex(s);
		var i;
		var a = new Array();
		for(i = 0; 2*i < h.length; ++i) {
			a[i] = parseInt(h.substring(2*i,2*i+2),16);
		}
		return a;
	}
}

var HexConvert = 
{
	hexDigits : ['0','1','2','3','4','5','6','7',
	             '8','9','a','b','c','d','e','f'],

	dec2hex : function( dec )
	{
		return(this.hexDigits[dec>>4] + this.hexDigits[dec&15]);
	},

	hex2dec : function( hex )
	{
		return(parseInt(hex, 16))
	},
	
	ba2hs : function ( ba ) 
	{
		var i;
		var hs = "";
		for (i=0; i<ba.length; i++)
			hs += this.dec2hex(ba[i]);
		return hs;
	},
	
	hs2ba : function ( hs )
	{
		var i;
		var ba = new Array();
		for (i=0; i+2<=hs.length; i+=2)
			ba[i/2] = this.hex2dec(hs.substring(i,i+2));
		return ba;
	}
}