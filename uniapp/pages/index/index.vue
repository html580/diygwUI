<template>
	<view class="container">
		<view class="flex diygw-col-24">
			<diy-noticebar class="flex1" color="#07c160" bgColor="#fff" leftIcon="diy-icon-notification">
				<template v-slot:content> <view class="diy-notice-item"> DIY官网做最好的拖拽式可视化设计工具 </view> </template>
			</diy-noticebar>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-list">
				<view @tap="navigateTo" data-type="page" data-url="/pages/title/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-purple">
					<view style="" class="diygw-avatar radius diy-icon-clothes"> </view>
					<view class="content">
						<view class="title"> 标题 </view>
						<view class="text-sm remark"> Title </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/avatar/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-orange">
					<view style="" class="diygw-avatar radius diy-icon-emoji"> </view>
					<view class="content">
						<view class="title"> 图标 </view>
						<view class="text-sm remark"> Icon </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/button/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-olive">
					<view style="" class="diygw-avatar radius diy-icon-btn"> </view>
					<view class="content">
						<view class="title"> 按钮 </view>
						<view class="text-sm remark"> Button </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/list/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-pink">
					<view style="" class="diygw-avatar radius diy-icon-sort"> </view>
					<view class="content">
						<view class="title"> 列表 </view>
						<view class="text-sm remark"> List </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/grid/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-mauve">
					<view style="" class="diygw-avatar radius diy-icon-apps"> </view>
					<view class="content">
						<view class="title"> 九宫格 </view>
						<view class="text-sm remark"> Flex </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/timeline/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-gradual-green">
					<view style="" class="diygw-avatar radius diy-icon-home"> </view>
					<view class="content">
						<view class="title"> 时间轴 </view>
						<view class="text-sm remark"> Timelime </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/steps/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-gradual-purple">
					<view style="" class="diygw-avatar radius diy-icon-more"> </view>
					<view class="content">
						<view class="title"> 步骤条 </view>
						<view class="text-sm remark"> Step </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/tag/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-cyan">
					<view style="" class="diygw-avatar radius diy-icon-tag"> </view>
					<view class="content">
						<view class="title"> 标签 </view>
						<view class="text-sm remark"> Tag </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/swiper/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-gradual-orange">
					<view style="" class="diygw-avatar radius diy-icon-album"> </view>
					<view class="content">
						<view class="title"> 轮播 </view>
						<view class="text-sm remark"> Swiper </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/image/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-gradual-red">
					<view style="" class="diygw-avatar radius diy-icon-picfill"> </view>
					<view class="content">
						<view class="title"> 图片 </view>
						<view class="text-sm remark"> Image </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/buttons/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-blue">
					<view style="" class="diygw-avatar radius diy-icon-colorlens"> </view>
					<view class="content">
						<view class="title"> 底部按钮组 </view>
						<view class="text-sm remark"> Buttons </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/layout/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-green">
					<view style="" class="diygw-avatar radius diy-icon-circle"> </view>
					<view class="content">
						<view class="title"> 布局 </view>
						<view class="text-sm remark"> Layout </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/progress/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-purple">
					<view style="" class="diygw-avatar radius diy-icon-clothes"> </view>
					<view class="content">
						<view class="title"> 进度条 </view>
						<view class="text-sm remark"> Progress </view>
					</view>
				</view>
				<view @tap="navigateTo" data-type="page" data-url="/pages/rate/index" style="" class="diygw-item col-50 flex-direction-row-reverse solid-bottom diygw-card diygw-shadow bg-blue">
					<view style="" class="diygw-avatar radius diy-icon-clothes"> </view>
					<view class="content">
						<view class="title"> 星级评分 </view>
						<view class="text-sm remark"> Rate </view>
					</view>
				</view>
			</view>
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

<style lang="scss">
	.container {
		padding-bottom: 80px;
	}
</style>
