/**
* This is a protection Application cfm for the config file. You do not
* need to modify this file
*/
component{

	this.ormenabled = "true";
	this.ormsettings = {};
	this.ormsettings.cfclocation = "model";
	this.ormsettings.dbcreate = "update";
	this.name = "GuestBook";
	this.datasource = "guestbook";
	this.applicationTimeout = createTimeSpan(30, 0, 0, 0); //30 days
	this.sessionStorage = true;
	abort;
}