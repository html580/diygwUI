//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIY官网可视化一键生成
Page({
	data: {
		floatbar: ``,
		floatbar1: ``,
		floatbar2: ``,
		floatbar3: ``,
		floatbar4: ``,
		floatbar5: ``
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
	async init() {}
});
