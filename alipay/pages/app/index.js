//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIY官网可视化一键生成
Page({
	data: {
		swiperIndex: 0
	},
	onLoad(option) {
		if (option) {
			this.setData({
				globalOption: option
			});
		}
	},
	onShow() {
		this.init();
	},
	async init() {},
	changeSwiper(evt) {
		let swiperIndex = evt.detail.current;
		this.setData({ swiperIndex });
	}
});
