//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIY官网可视化一键生成
Page({
	data: {
		tabsDatas: [{ text: `首页` }, { text: `办公` }, { text: `手机` }, { text: `家电` }, { text: `生鲜` }, { text: `食品` }, { text: `男装` }, { text: `女装` }],
		tabsIndex: 0,
		search: ''
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
	changeTabs(evt) {
		let { index } = evt.currentTarget.dataset;
		if (index == this.data.tabsIndex) return;
		this.setData({
			tabsIndex: index
		});
	}
});
