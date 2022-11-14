// Copyright (c) 2012. PrivyLink Pte Ltd
// All Rights Reserved.

// Client-side authentication functions for IASE.
// Implementation depends on BigInteger class
// from Extended JavaScript BN functions.
// Last updated: 2012/04/02

var IASEAuth = 
{
	MIN_PLEN : 0,
	MAX_PLEN : 16,
	RND_LEN : 16,

	generateRc : function ()
	{
		var rng = new SecureRandom();
		var rc = new Array();
		
		rc.length = this.RND_LEN;
		rng.nextBytes(rc);

		return rc;
	},
	
	createPinBlk : function ( rc, ra, p )
	{
		var i;
		var pb = new Array();
		
		pb[0] = this.RND_LEN;
		pb[this.RND_LEN+1] = this.RND_LEN;
		for (i=0; i<this.RND_LEN; i++) {
			pb[i+1] = rc[i];
			pb[i+this.RND_LEN+2] = ra[i];
		}
		
		pb[this.RND_LEN*2+2] = p.length;
		for (i=0; i<p.length; i++)
			pb[this.RND_LEN*2+3+i] = p.charCodeAt(i);
			
		return pb;
	},
	
	createPinChgBlk : function ( rc, ra, op, np )
	{
		var i;
		var pb = new Array();
		
		pb[0] = this.RND_LEN;
		pb[this.RND_LEN+1] = this.RND_LEN;
		for (i=0; i<this.RND_LEN; i++) {
			pb[i+1] = rc[i];
			pb[i+this.RND_LEN+2] = ra[i];
		}
		
		pb[this.RND_LEN*2+2] = op.length;
		for (i=0; i<op.length; i++)
			pb[this.RND_LEN*2+3+i] = op.charCodeAt(i);
		
		pb[this.RND_LEN*2+op.length+3] = np.length;
		for (i=0; i<np.length; i++)
			pb[this.RND_LEN*2+op.length+4+i] = np.charCodeAt(i);
			
		return pb;
	},
	
	encryptPin : function ( rs, p )
	{
		if (rs.length != this.RND_LEN*2 || 
		    p.length == this.MIN_PLEN || 
			p.length > this.MAX_PLEN)
			return undefined;
		
		var rc = this.generateRc();
		var ra = HexConvert.hs2ba(rs);
		var pb = this.createPinBlk(rc, ra, p);
		
		var rsa = new RSAKey();
		rsa.setPublic(IASEKey.modulus, IASEKey.pubExp);
		return rsa.encrypt(pb).toUpperCase();
	},
	
	encryptPinChg : function ( rs, op, np )
	{
		if (rs.length != this.RND_LEN*2 || 
		    op.length == this.MIN_PLEN || 
			op.length > this.MAX_PLEN ||
		    np.length == this.MIN_PLEN || 
			np.length > this.MAX_PLEN)
			return undefined;

		var rc = this.generateRc();
		var ra = HexConvert.hs2ba(rs);
		var pb = this.createPinChgBlk(rc, ra, op, np);
		
		var rsa = new RSAKey();
		rsa.setPublic(IASEKey.modulus, IASEKey.pubExp);
		return rsa.encrypt(pb).toUpperCase();
	}
}

