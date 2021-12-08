//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIY官网可视化一键生成
Page({
	data: {
		modal: '',
		modal1: '',
		modal2: '',
		modal3: ''
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
