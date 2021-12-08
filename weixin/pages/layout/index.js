//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
Page({
	data: {
		text1: `顶部对齐`,
		text2: `中间对齐`,
		text3: `底部对齐`,
		text5: `布局逆序及中间对齐`
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
