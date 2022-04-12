var SESSION_KEY = 'user_session_diygw_com';
var REDIRECT_SESSION_KEY = 'redirect_session_diygw_com';

var Session = {
	getRedirecturl() {
		return qq.getStorageSync(REDIRECT_SESSION_KEY) || null;
	},

	setRedirecturl(url) {
		qq.setStorageSync(REDIRECT_SESSION_KEY, url);
	},
	getUser() {
		return qq.getStorageSync(SESSION_KEY) || null;
	},

	setUser(session) {
		qq.setStorageSync(SESSION_KEY, session);
	},

	clearUser() {
		qq.removeStorageSync(SESSION_KEY);
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
