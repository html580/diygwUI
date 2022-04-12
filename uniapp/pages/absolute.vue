<template>
	<view class="container">
		<view class="flex diygw-autoview diygw-col-24 flex-direction-column autoview-clz">
			<view class="diygw-absolute autoview_0">
				<view class="diygw-col-24 text1-clz diygw-text-md"> 姓名 </view>
			</view>
			<view class="diygw-absolute autoview_1">
				<view class="flex diygw-col-24 justify-between">
					<view class="diygw-tag margin-xs radius bg-green">
						<text class="icon diy-icon-home"></text>
						<text> 标签 </text>
					</view>
					<view class="diygw-tag margin-xs radius bg-green">
						<text class="icon diy-icon-home"></text>
						<text> 标签 </text>
					</view>
					<view class="diygw-tag margin-xs radius bg-green">
						<text class="icon diy-icon-home"></text>
						<text> 标签 </text>
					</view>
				</view>
			</view>
			<view class="diygw-absolute autoview_2">
				<view class="flex diygw-col-24">
					<view class="diygw-tag margin-xs xs radius bg-gradual-orange">
						<text class="icon diy-icon-star"></text>
						<text> 会员等级 </text>
					</view>
				</view>
			</view>
			<view class="diygw-absolute autoview_3">
				<image src="https://libs.diygw.com/upload/2021/11/30/f645fbb0-6e5e-41eb-bd0d-3e3fc99d0b47/a6f14a8a93dd4b27bfd97ab33cad098b_1.png" class="response diygw-col-24" @tap="navigateTo" data-type="previewImage" data-img="https://libs.diygw.com/upload/2021/11/30/f645fbb0-6e5e-41eb-bd0d-3e3fc99d0b47/a6f14a8a93dd4b27bfd97ab33cad098b_1.png" mode="widthFix"></image>
			</view>
			<view class="diygw-absolute autoview_4">
				<view class="flex diygw-col-24">
					<view class="diygw-avatar xs red radius">
						<text class="diy-icon-settings"></text>
					</view>
				</view>
			</view>
		</view>
		<view class="flex diygw-autoview diygw-col-24 flex-direction-column autoview1-clz">
			<view class="diygw-absolute autoview1_0">
				<image src="https://libs.diygw.com/upload/2021/11/30/f645fbb0-6e5e-41eb-bd0d-3e3fc99d0b47/a6f14a8a93dd4b27bfd97ab33cad098b_1.png" class="response diygw-col-24" @tap="navigateTo" data-type="previewImage" data-img="https://libs.diygw.com/upload/2021/11/30/f645fbb0-6e5e-41eb-bd0d-3e3fc99d0b47/a6f14a8a93dd4b27bfd97ab33cad098b_1.png" mode="widthFix"></image>
			</view>
			<view class="diygw-absolute autoview1_1">
				<image src="https://libs.diygw.com/upload/2021/11/30/f645fbb0-6e5e-41eb-bd0d-3e3fc99d0b47/a6f14a8a93dd4b27bfd97ab33cad098b_1.png" class="response diygw-col-24" @tap="navigateTo" data-type="previewImage" data-img="https://libs.diygw.com/upload/2021/11/30/f645fbb0-6e5e-41eb-bd0d-3e3fc99d0b47/a6f14a8a93dd4b27bfd97ab33cad098b_1.png" mode="widthFix"></image>
			</view>
			<view class="diygw-absolute autoview1_2">
				<view class="diygw-col-24 text4-clz diygw-text-lg"> 斗罗大陆 </view>
			</view>
			<view class="diygw-absolute autoview1_3">
				<view class="diygw-col-24 text3-clz diygw-text-lg"> 斗罗大陆 </view>
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

<style lang="scss" scoped>
	.autoview-clz {
		z-index: 1;
		height: 200px;
	}

	.autoview_0 {
		left: 170rpx;
		top: 72rpx;
		width: 232rpx;
		height: 40rpx;
		z-index: 0;
	}
	.autoview_1 {
		left: 22rpx;
		top: 258rpx;
		width: 664rpx;
		height: 84rpx;
		z-index: 0;
	}
	.autoview_2 {
		left: 158rpx;
		top: 118rpx;
		width: 188rpx;
		height: 70rpx;
		z-index: 0;
	}
	.autoview_3 {
		left: 46rpx;
		top: 74rpx;
		width: 102rpx;
		height: 104rpx;
		z-index: 0;
	}
	.autoview_4 {
		left: 636rpx;
		top: 138rpx;
		width: 62rpx;
		height: 54rpx;
		z-index: 0;
	}
	.text1-clz {
		font-weight: bold;
	}
	.autoview1-clz {
		z-index: 1;
		height: 200px;
	}

	.autoview1_0 {
		left: 22rpx;
		top: 38rpx;
		width: 340rpx;
		height: 324rpx;
		z-index: 0;
	}
	.autoview1_1 {
		left: 370rpx;
		top: 40rpx;
		width: 340rpx;
		height: 324rpx;
		z-index: 0;
	}
	.autoview1_2 {
		left: 24rpx;
		top: 198rpx;
		width: 338rpx;
		height: 76rpx;
		z-index: 0;
	}
	.autoview1_3 {
		left: 370rpx;
		top: 42rpx;
		width: 340rpx;
		height: 68rpx;
		z-index: 0;
	}
	.text4-clz {
		background-color: rgba(126, 126, 126, 0.64);
		color: rgba(255, 255, 255, 1);
		text-align: center;
	}
	.text3-clz {
		background-color: rgba(126, 126, 126, 0.64);
		color: rgba(255, 255, 255, 1);
		text-align: center;
	}
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
</style>
