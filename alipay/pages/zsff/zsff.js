//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIY官网可视化一键生成
Page({
	data: {
		search: '',
		tabsDatas: [{ text: `首页` }, { text: `课程` }, { text: `听书` }, { text: `电子书` }, { text: `训练营` }, { text: `其他` }],
		tabsIndex: 0,
		modal: ''
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
