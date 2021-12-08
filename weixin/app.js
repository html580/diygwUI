//create by: 邓志锋 <280160522@qq.com> <http://www.diygw.com>
require('./page-extend');
App({
	globalData: {
		userInfo: null,
		tabBar: ['/pages/index/index', '/pages/compoment/index', '/pages/form/index', '/pages/about/index'],
		homePage: '/pages/index/index',
		pages: ['/pages/index/index', '/pages/layout/index', '/pages/button/index', '/pages/avatar/index', '/pages/tag/index', '/pages/title/index', '/pages/grid/index', '/pages/list/index', '/pages/image/index', '/pages/swiper/index', '/pages/timeline/index', '/pages/steps/index', '/pages/floatbar/index', '/pages/form/index', '/pages/about/index', '/pages/compoment/index', '/pages/modal/index', '/pages/tab/index', '/pages/buttons/index', '/pages/rate/index', '/pages/progress/index']
	},
	onLaunch() {
		wx.getSystemInfo({
			success: (e) => {
				this.globalData.StatusBar = e.statusBarHeight;
				let capsule = wx.getMenuButtonBoundingClientRect();
				this.globalData.WindowWidth = e.windowWidth;
				this.globalData.PixelRatio = 750 / e.windowWidth;
				if (capsule) {
					this.globalData.Custom = capsule;
					this.globalData.CustomBar = capsule.bottom + capsule.top - e.statusBarHeight;
				} else {
					this.globalData.CustomBar = e.statusBarHeight + 50;
				}
			}
		});
	},
	onShow() {},
	onHide() {}
});
