//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIY官网可视化一键生成
Page({
	data: {},
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
	async init() {}, // test 自定义方法
	async testFunction(param) {
		test111 = param && param.test111 ? param.test111 : '测试';
	}
});
