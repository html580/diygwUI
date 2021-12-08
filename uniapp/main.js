
// #ifndef VUE3
import Vue from 'vue'
import App from './App'
import {
	setCurrentPage,
	Validate,
	setData,
	navigateTo,
	showModal,
	showToast,
	getPickerChildren,
	uploadImage
} from '@/common/Page.js'

import Tools from '@/common/Tools.js'
import HttpService from '@/common/HttpService.js'
import Session from '@/common/Session.js'

Vue.config.productionTip = false
Vue.prototype.$tools = new Tools()
Vue.prototype.$request = new HttpService()
Vue.prototype.$session = Session
Vue.prototype.Validate = Validate
Vue.prototype.setData = setData
Vue.prototype.navigateTo = navigateTo
Vue.prototype.showModal = showModal
Vue.prototype.showToast = showToast
Vue.prototype.getPickerChildren = getPickerChildren
Vue.prototype.uploadImage = uploadImage
Vue.prototype.setCurrentPage = setCurrentPage

App.mpType = 'app'

const app = new Vue({
    ...App
})

uni.getSystemInfo({
	success: function(e) {
		// #ifndef MP
		Vue.prototype.StatusBar = e.statusBarHeight;
		if (e.platform == 'android') {
			Vue.prototype.CustomBar = e.statusBarHeight + 50;
		} else {
			Vue.prototype.CustomBar = e.statusBarHeight + 45;
		};
		// #endif

		// #ifdef MP-WEIXIN
		Vue.prototype.StatusBar = e.statusBarHeight;
		let custom = wx.getMenuButtonBoundingClientRect();
		Vue.prototype.Custom = custom;
		Vue.prototype.CustomBar = custom.bottom + custom.top - e.statusBarHeight;
		// #endif		

		// #ifdef MP-ALIPAY
		Vue.prototype.StatusBar = e.statusBarHeight;
		Vue.prototype.CustomBar = e.statusBarHeight + e.titleBarHeight;
		// #endif
	}
})
app.$mount()

// #endif

// #ifdef VUE3
import App from './App'
import {
	setCurrentPage,
	Validate,
	setData,
	navigateTo,
	showModal,
	showToast,
	getPickerChildren,
	uploadImage
} from '@/common/Page.js'

import Tools from '@/common/Tools.js'
import HttpService from '@/common/HttpService.js'
import Session from '@/common/Session.js'
import {
	createSSRApp
} from 'vue'


export function createApp() {
	const app = createSSRApp(App)

	app.config.globalProperties.$tools = new Tools()
	app.config.globalProperties.$request = new HttpService()
	app.config.globalProperties.$session = Session

	uni.getSystemInfo({
		success: function(e) {
			// #ifndef MP
			app.config.globalProperties.StatusBar = e.statusBarHeight;
			if (e.platform == 'android') {
				app.config.globalProperties.CustomBar = e.statusBarHeight + 50;
			} else {
				app.config.globalProperties.CustomBar = e.statusBarHeight + 45;
			};
			// #endif

			// #ifdef MP-WEIXIN
			app.config.globalProperties.StatusBar = e.statusBarHeight;
			let custom = wx.getMenuButtonBoundingClientRect();
			app.config.globalProperties.Custom = custom;
			app.config.globalProperties.CustomBar = custom.bottom + custom.top - e.statusBarHeight;
			// #endif

			// #ifdef MP-ALIPAY
			app.config.globalProperties.StatusBar = e.statusBarHeight;
			app.config.globalProperties.CustomBar = e.statusBarHeight + e.titleBarHeight;
			// #endif
		}
	})

	app.mixin({
		methods: {
			setCurrentPage,
			Validate,
			setData,
			navigateTo,
			showModal,
			showToast,
			getPickerChildren,
			uploadImage
		}
	})
	return {
		app
	}
}
// #endif