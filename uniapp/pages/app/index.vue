<template>
	<view class="container">
		<view class="flex diygw-col-24">
			<swiper class="swiper swiper-indicator_rect" @change="changeSwiper" previous-margin="50rpx" next-margin="50rpx" indicator-color="rgba(51, 51, 51, 0.39)" indicator-active-color="#fff" indicator-dots="true" autoplay interval="3000" circular="true" style="height: 185px">
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap" :class="swiperIndex != 0 ? 'swiper-scale' : ''">
						<image src="https://libs.diygw.com/upload/2022/01/02/0cadefc8-0095-4d33-b68e-d8c21d274cee/4.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块一 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap" :class="swiperIndex != 1 ? 'swiper-scale' : ''">
						<image src="https://libs.diygw.com/upload/2022/01/02/5065ea2f-366f-4e92-b3af-983911b519f0/1.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块一 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap" :class="swiperIndex != 2 ? 'swiper-scale' : ''">
						<image src="https://libs.diygw.com/upload/2022/01/02/9647ce70-b051-4d56-a04f-4a925296925e/2.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块二 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap" :class="swiperIndex != 3 ? 'swiper-scale' : ''">
						<image src="https://libs.diygw.com/upload/2022/01/02/da3a98f0-b7f0-4987-88ee-afee971a283a/3.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块三 </view>
					</view>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 grid-clz">
			<view class="diygw-grid col-4">
				<view class="diygw-grid-item">
					<view class="diygw-grid-inner grid-item-clz">
						<view class="diygw-grid-icon diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_rm.png"></image>
						</view>
						<view class="diygw-grid-title"> 热门壁纸 </view>
					</view>
				</view>
				<view class="diygw-grid-item">
					<view class="diygw-grid-inner grid-item-clz">
						<view class="diygw-grid-icon diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_dj.png"></image>
						</view>
						<view class="diygw-grid-title"> 高清壁纸 </view>
					</view>
				</view>
				<view class="diygw-grid-item">
					<view class="diygw-grid-inner grid-item-clz">
						<view class="diygw-grid-icon diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_sz1.png"></image>
						</view>
						<view class="diygw-grid-title"> 文艺可爱 </view>
					</view>
				</view>
				<view class="diygw-grid-item">
					<view class="diygw-grid-inner grid-item-clz">
						<view class="diygw-grid-icon diygw-avatar radius">
							<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_pxb.png"></image>
						</view>
						<view class="diygw-grid-title"> 精选壁纸 </view>
					</view>
				</view>
			</view>
		</view>
		<image src="https://libs.diygw.com/upload/2022/01/02/9647ce70-b051-4d56-a04f-4a925296925e/2.jpg" class="response diygw-col-24 image1-clz" @tap="navigateTo" data-type="previewImage" data-img="https://libs.diygw.com/upload/2022/01/02/9647ce70-b051-4d56-a04f-4a925296925e/2.jpg" mode="widthFix"></image>
		<view class="flex flex-wrap diygw-col-24 flex-clz">
			<image src="https://libs.diygw.com/upload/2022/01/02/0cadefc8-0095-4d33-b68e-d8c21d274cee/4.jpg" class="response diygw-col-12 image3-clz" @tap="navigateTo" data-type="previewImage" data-img="https://libs.diygw.com/upload/2022/01/02/0cadefc8-0095-4d33-b68e-d8c21d274cee/4.jpg" mode="widthFix"></image>
			<image src="https://libs.diygw.com/upload/2022/01/02/da3a98f0-b7f0-4987-88ee-afee971a283a/3.jpg" class="response diygw-col-12 image4-clz" @tap="navigateTo" data-type="previewImage" data-img="https://libs.diygw.com/upload/2022/01/02/da3a98f0-b7f0-4987-88ee-afee971a283a/3.jpg" mode="widthFix"></image>
			<image src="https://libs.diygw.com/upload/2022/01/02/5065ea2f-366f-4e92-b3af-983911b519f0/1.jpg" class="response diygw-col-12 image5-clz" @tap="navigateTo" data-type="previewImage" data-img="https://libs.diygw.com/upload/2022/01/02/5065ea2f-366f-4e92-b3af-983911b519f0/1.jpg" mode="widthFix"></image>
			<image src="https://libs.diygw.com/upload/2022/01/02/9647ce70-b051-4d56-a04f-4a925296925e/2.jpg" class="response diygw-col-12 image2-clz" @tap="navigateTo" data-type="previewImage" data-img="https://libs.diygw.com/upload/2022/01/02/9647ce70-b051-4d56-a04f-4a925296925e/2.jpg" mode="widthFix"></image>
		</view>
		<view class="flex diygw-col-24 diygw-bottom">
			<view class="diygw-grid diygw-actions">
				<button @tap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-action">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon1/icon1_rm.png"></image>
						</view>
						<view class="diygw-grid-title"> 主页 </view>
					</view>
				</button>
				<button @tap="navigateTo" data-type="page" data-url="/pages/zsff/zsff" class="diygw-action">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon1/icon1_jb.png"></image>
						</view>
						<view class="diygw-grid-title"> 排行 </view>
					</view>
				</button>
				<button @tap="navigateTo" data-type="page" data-url="/pages/index" class="diygw-action">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
						</view>
						<view class="diygw-grid-title"> 卡通 </view>
					</view>
				</button>
				<button @tap="navigateTo" data-type="page" data-url="/pages/about" class="diygw-action">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon1/icon1_dz.png"></image>
						</view>
						<view class="diygw-grid-title"> 游戏 </view>
					</view>
				</button>
			</view>
		</view>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {
				swiperIndex: 0
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
			async init() {},
			changeSwiper(evt) {
				let swiperIndex = evt.detail.current;
				this.setData({ swiperIndex });
			}
		}
	};
</script>

<style lang="scss" scoped>
	.swiper-scale {
		transform: scaleY(0.9);
		margin: 0 20rpx;
	}
	.grid-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image1-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex-clz {
		z-index: 1000;
	}
	.image3-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image4-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image5-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.image2-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
	.container {
		padding-bottom: 80px;
	}
</style>
