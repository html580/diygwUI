<template>
	<view class="container">
		<view class="diygw-col-24 text2-clz diygw-text-lg" v-html="text2"></view>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {
				text2: `<p>DIY官网可视化工具做好的可视化拖拽开发工具无须编程、零代码基础、所见即所得设计工具</p>
<p>目标支持轻松在线可视化导出微信小程序、支付宝小程序、头条小程序、H5、WebApp、UNIAPP等源码</p>
<p>请记住我们的官方网址：https://www.diygw.com</p>
<p><span style="color: #2dc26b;"><a style="color: #2dc26b;" href="https://www.diygw.com" target="_blank" rel="noopener">点击进入设计 http://www.diygw.com</a></span></p>`
			};
		},
		onShareAppMessage: function () {},
		onLoad(option) {
			this.setCurrentPage(this);
			if (option) {
				this.setData({
					globalOption: option
				});
			}
		},
		mounted() {
			this.init();
		},
		methods: {
			async init() {}
		}
	};
</script>

<style lang="scss">
	.text2-clz {
		padding-top: 10px;
		border-bottom-left-radius: 6px;
		padding-left: 10px;
		padding-bottom: 10px;
		border-top-right-radius: 6px;
		margin-right: 5px;
		margin-left: 5px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		padding-right: 10px;
	}
	.container {
		padding-bottom: 80px;
	}
</style>
