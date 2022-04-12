<template>
	<view class="container">
		<view class="flex diygw-col-24 flex-direction-column">
			<scroll-view scroll-x :scroll-into-view="'scroll-' + tabsIndex" scroll-with-animation class="diygw-tabs text-center scale-title small-border">
				<view :id="'scroll-' + index" class="diygw-tab-item" :class="index == tabsIndex ? 'cur text-red' : ''" v-for="(item, index) in tabsDatas" :key="index" @click="changeTabs" :data-index="index">
					{{ item.text }}
				</view>
			</scroll-view>
		</view>
		<view class="diygw-col-24 search-clz">
			<view class="diygw-search">
				<view class="flex1 flex padding-xs solid radius">
					<text style="color: #555 !important" class="diy-icon-search"></text>
					<input class="flex1" name="search" type="" v-model="search" placeholder="请输入关键字" />
				</view>
				<view style="color: #333 !important" class="diygw-tag margin-left-xs radius-xs"> 搜索 </view>
			</view>
		</view>
		<view class="flex diygw-col-24 swiper-clz">
			<swiper class="swiper" indicator-color="rgba(51, 51, 51, 0.39)" indicator-active-color="#fff" indicator-dots="true" autoplay interval="3000" circular="true" style="height: 150px">
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="https://libs.diygw.com/upload/2022/01/02/aeba030b-3e28-48b4-9f2d-c0db2d7b5bd0/10.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块三 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="https://libs.diygw.com/upload/2022/01/02/f05d32dc-441c-48c1-9632-f4bc37d98ea8/5.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块一 </view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<image src="https://libs.diygw.com/upload/2022/01/02/b4b85646-efa9-4d2e-a5d5-47caabee31d2/6.jpg" class="diygw-swiper-image"></image>
						<view class="diygw-swiper-item-title"> 滑块二 </view>
					</view>
				</swiper-item>
			</swiper>
		</view>
		<view class="flex diygw-col-24 swipers-clz">
			<swiper class="swiper" indicator-color="rgba(51, 51, 51, 0.39)" indicator-active-color="rgba(180, 180, 180, 0.93)" indicator-dots="true" interval="3000" circular="true" style="height: 100px">
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<view class="flex diygw-col-24">
							<view class="diygw-grid col-4">
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_rm.png"></image>
										</view>
										<view class="diygw-grid-title"> 热门 </view>
									</view>
								</view>
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_xsqg.png"></image>
										</view>
										<view class="diygw-grid-title"> 购物车 </view>
									</view>
								</view>
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_yhq.png"></image>
										</view>
										<view class="diygw-grid-title"> 优惠券 </view>
									</view>
								</view>
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_kf.png"></image>
										</view>
										<view class="diygw-grid-title"> 客服 </view>
									</view>
								</view>
							</view>
						</view>
					</view>
				</swiper-item>
				<swiper-item class="diygw-swiper-item">
					<view class="diygw-swiper-item-wrap">
						<view class="flex diygw-col-24">
							<view class="diygw-grid col-4">
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid1-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_mb.png"></image>
										</view>
										<view class="diygw-grid-title"> 家电 </view>
									</view>
								</view>
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid1-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fz.png"></image>
										</view>
										<view class="diygw-grid-title"> 服装 </view>
									</view>
								</view>
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid1-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_mz.png"></image>
										</view>
										<view class="diygw-grid-title"> 帽子 </view>
									</view>
								</view>
								<view class="diygw-grid-item">
									<view class="diygw-grid-inner grid1-item-clz">
										<view class="diygw-grid-icon diygw-avatar radius">
											<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_xsqg.png"></image>
										</view>
										<view class="diygw-grid-title"> 抢购 </view>
									</view>
								</view>
							</view>
						</view>
					</view>
				</swiper-item>
			</swiper>
		</view>
		<image src="https://libs.diygw.com/upload/2022/01/02/0a379ebc-dc31-4af5-af8a-32c5c8e97a08/21.jpg" class="response diygw-col-24 image1-clz" @tap="navigateTo" data-type="previewImage" data-img="https://libs.diygw.com/upload/2022/01/02/0a379ebc-dc31-4af5-af8a-32c5c8e97a08/21.jpg" mode="widthFix"></image>
		<view class="flex flex-wrap diygw-col-24 flex1-clz">
			<view class="flex diygw-col-12 swiper1-clz">
				<swiper class="swiper swiper-indicator_rect_radius indicator-right-bottom" indicator-color="rgba(51, 51, 51, 0.39)" indicator-active-color="#fff" indicator-dots="true" autoplay interval="3000" circular="true" style="height: 160px">
					<swiper-item class="diygw-swiper-item">
						<view class="diygw-swiper-item-wrap">
							<image src="https://libs.diygw.com/upload/2022/01/02/0a49dcf9-e4ec-455e-a4e2-f9c1f4fb32bd/24.jpg" class="diygw-swiper-image"></image>
							<view class="diygw-swiper-item-title"> 滑块一 </view>
						</view>
					</swiper-item>
					<swiper-item class="diygw-swiper-item">
						<view class="diygw-swiper-item-wrap">
							<image src="https://libs.diygw.com/upload/2022/01/02/ca59b05b-1140-4775-bf75-6d1c9b63d03f/22.jpg" class="diygw-swiper-image"></image>
							<view class="diygw-swiper-item-title"> 滑块二 </view>
						</view>
					</swiper-item>
					<swiper-item class="diygw-swiper-item">
						<view class="diygw-swiper-item-wrap">
							<image src="https://libs.diygw.com/upload/2022/01/02/77740474-2751-4270-bc08-2431b65709dd/23.jpg" class="diygw-swiper-image"></image>
							<view class="diygw-swiper-item-title"> 滑块三 </view>
						</view>
					</swiper-item>
				</swiper>
			</view>
			<view class="flex diygw-col-12 justify-between items-center flex-wrap flex2-clz">
				<image src="https://libs.diygw.com/upload/2022/01/02/b4b85646-efa9-4d2e-a5d5-47caabee31d2/6.jpg" class="diygw-image diygw-col-24 image2-clz" @tap="navigateTo" data-type="previewImage" data-img="https://libs.diygw.com/upload/2022/01/02/b4b85646-efa9-4d2e-a5d5-47caabee31d2/6.jpg" style="height: 75px; width: 100%" mode="aspectFit"></image>
				<image src="https://libs.diygw.com/upload/2022/01/02/f05d32dc-441c-48c1-9632-f4bc37d98ea8/5.jpg" class="diygw-image diygw-col-24 image-clz" @tap="navigateTo" data-type="previewImage" data-img="https://libs.diygw.com/upload/2022/01/02/f05d32dc-441c-48c1-9632-f4bc37d98ea8/5.jpg" style="height: 75px; width: 100%" mode="aspectFit"></image>
			</view>
		</view>
		<view class="flex diygw-col-24 diygw-bottom">
			<view class="diygw-grid diygw-actions">
				<button @tap="navigateTo" data-type="page" data-url="/pages/zsff/zsff" class="diygw-action">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon1/icon1_zy.png"></image>
						</view>
						<view class="diygw-grid-title"> 主页 </view>
					</view>
				</button>
				<button @tap="navigateTo" data-type="page" data-url="/pages/app/index" class="diygw-action">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon1/icon1_rm.png"></image>
						</view>
						<view class="diygw-grid-title"> 壁纸 </view>
					</view>
				</button>
				<button @tap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-action">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon1/icon1_hf.png"></image>
							<view class="diygw-tag badge empty red"></view>
						</view>
						<view class="diygw-grid-title"> 组件 </view>
					</view>
				</button>
				<button @tap="navigateTo" data-type="page" data-url="/pages/about" class="diygw-action">
					<view class="diygw-grid-inner">
						<view class="diygw-grid-icon diygw-avatar">
							<image mode="aspectFit" class="diygw-avatar-img" src="https://lib.diygw.com/static/icon/icon1/icon1_kf.png"></image>
						</view>
						<view class="diygw-grid-title"> 关于 </view>
					</view>
				</button>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-list">
				<view style="" class="diygw-item col-100 row solid-bottom list-item-clz">
					<view class="diygw-avatar list-icon-clz">
						<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/01/02/f05d32dc-441c-48c1-9632-f4bc37d98ea8/5.jpg"></image>
					</view>
					<view class="content">
						<view class="title"> 华为手机 </view>
						<view class="text-sm remark"> 华为手机华为手机华为手机华为手机华为手机华为手机华为手机华为手机华为手机华为手机华为手机说明文字 </view>
					</view>
				</view>
				<view style="" class="diygw-item col-100 row solid-bottom list-item-clz">
					<view class="diygw-avatar list-icon-clz">
						<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/01/02/f05d32dc-441c-48c1-9632-f4bc37d98ea8/5.jpg"></image>
					</view>
					<view class="content">
						<view class="title"> 华为手机 </view>
						<view class="text-sm remark"> 华为手机华为手机华为手机华为手机华为手机华为手机华为手机华为手机华为手机华为手机华为手机说明文字 </view>
					</view>
				</view>
				<view style="" class="diygw-item col-100 row solid-bottom list-item-clz">
					<view class="diygw-avatar list-icon-clz">
						<image mode="aspectFit" class="diygw-avatar-img" src="https://libs.diygw.com/upload/2022/01/02/b4b85646-efa9-4d2e-a5d5-47caabee31d2/6.jpg"></image>
					</view>
					<view class="content">
						<view class="title"> 小米手机 </view>
						<view class="text-sm remark"> 小米手机说明文字小米手机说明文字小米手机说明文字小米手机说明文字小米手机说明文字小米手机说明文字小米手机说明文字 </view>
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
			return {
				tabsDatas: [{ text: `首页` }, { text: `办公` }, { text: `手机` }, { text: `家电` }, { text: `生鲜` }, { text: `食品` }, { text: `男装` }, { text: `女装` }],
				tabsIndex: 0,
				search: ''
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
			changeTabs(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabsIndex) return;
				this.setData({
					tabsIndex: index
				});
			}
		}
	};
</script>

<style lang="scss" scoped>
	.search-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.swiper-clz {
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
	.swipers-clz {
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
	.flex1-clz {
		margin-left: 5px;
		z-index: 1000;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.swiper1-clz {
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
	.flex2-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		z-index: 1000;
		overflow: hidden;
		width: calc(50% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 0px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 0px;
		height: 170px;
		margin-right: 5px;
	}
	.image2-clz {
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		border-top-left-radius: 6px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
	}
	.image-clz {
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		border-top-left-radius: 6px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
	}
	.list-item-clz {
		margin: 0px;
		padding: 10px;
	}
	.list-icon-clz {
		width: 150px;
		height: 80px;
		font-size: calc(80px - 10px) !important;
	}
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
	.container {
		padding-bottom: 80px;
	}
</style>
