<template>
	<view class="container">
		<view class="flex diygw-col-24">
			<diy-audio class="flex-sub" author="DIYGW可视化音频组件自动播放" music="http://cdn.diygw.com/1.mp3" avatar-type="icon" title="♪" icon="diy-icon-musicfill" background-clazz="green" size-clz="" active-color="#07c160" is-silder is-title autoplay poster="/static/grid7.png"></diy-audio>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 1px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 1px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 1px solid #eee"></view>
		</view>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {};
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

<style lang="scss" scoped>
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
</style>
