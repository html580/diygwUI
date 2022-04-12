var SESSION_KEY = 'user_session_diygw_com';
var REDIRECT_SESSION_KEY = 'redirect_session_diygw_com';

var Session = {
	getRedirecturl() {
		return tt.getStorageSync(REDIRECT_SESSION_KEY) || null;
	},

	setRedirecturl(url) {
		tt.setStorageSync(REDIRECT_SESSION_KEY, url);
	},
	getUser() {
		return tt.getStorageSync(SESSION_KEY) || null;
	},

	setUser(session) {
		tt.setStorageSync(SESSION_KEY, session);
	},

	clearUser() {
		tt.removeStorageSync(SESSION_KEY);
	},

	getToken() {
		var userInfo = this.getUser();
		return userInfo ? userInfo.token : null
	},

	getOpenId() {
		var userInfo = this.getUser();
		return userInfo ? userInfo.openid : null
	},
	
	setValue(key,value) {
		uni.setStorageSync(key, value);
	},
	
	getValue(key){
		return uni.getStorageSync(key) || null;
	}
	
}

export default Session
