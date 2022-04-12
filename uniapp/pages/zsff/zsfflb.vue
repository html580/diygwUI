<template>
	<view class="container">
		<diy-navbar bgColor="gradual-green" :isBack="true">
			<!-- #ifndef VUE3 -->
			<block slot="backText"> 返回 </block>
			<block slot="content"> 知识付费分类 </block>
			<!-- #endif -->
			<!-- #ifdef VUE3 -->
			<template v-slot:backText> 返回 </template>
			<template v-slot:content> 知识付费分类 </template>
			<!-- #endif -->
		</diy-navbar>
		<view class="diygw-col-24 search-clz">
			<view class="diygw-search">
				<view class="flex1 flex padding-xs solid radius">
					<text style="color: #555 !important" class="diy-icon-search" />
					<input class="flex1" name="search" type="" v-model="search" placeholder="请输入关键字" />
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24 justify-between items-center flex-nowrap flex2-clz">
			<view class="flex diygw-col-24">
				<view class="diygw-tag margin-xs radius bg-orange">
					<text> 全部类型 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 课程 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 课程 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 听书 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 电子书 </text>
				</view>
			</view>
			<view class="flex diygw-col-0">
				<view class="diygw-avatar md white radius">
					<text class="diy-icon-filter" />
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24 justify-between items-center flex-nowrap flex-clz">
			<view class="flex diygw-col-24">
				<view class="diygw-tag margin-xs radius bg-orange">
					<text> 最热 </text>
				</view>
				<view class="diygw-tag margin-xs radius">
					<text> 最新 </text>
				</view>
			</view>
		</view>
		<scroll-view scroll-x scroll-with-animation class="flex scroll-view diygw-col-24 justify-between items-center flex-nowrap flex1-clz">
			<view class="flex flex-nowrap">
				<view class="flex diygw-col-24">
					<view class="diygw-tag margin-xs radius bg-orange">
						<text> 全部分类 </text>
					</view>
					<view class="diygw-tag margin-xs radius">
						<text> 心理学 </text>
					</view>
					<view class="diygw-tag margin-xs radius">
						<text> 自然科学 </text>
					</view>
					<view class="diygw-tag margin-xs radius">
						<text> 年度日更 </text>
					</view>
					<view class="diygw-tag margin-xs radius">
						<text> 金融学可以水平滑动 </text>
					</view>
					<view class="diygw-tag margin-xs radius">
						<text> 家庭亲子 </text>
					</view>
					<view class="diygw-tag margin-xs radius">
						<text> 经济学 </text>
					</view>
					<view class="diygw-tag margin-xs radius">
						<text> 全部分类 </text>
					</view>
					<view class="diygw-tag margin-xs radius">
						<text> 全部分类 </text>
					</view>
					<view class="diygw-tag margin-xs radius">
						<text> 全部分类 </text>
					</view>
					<view class="diygw-tag margin-xs radius">
						<text> 全部分类 </text>
					</view>
					<view class="diygw-tag margin-xs radius">
						<text> 全部分类 </text>
					</view>
				</view>
			</view>
		</scroll-view>
		<view class="flex flex-wrap diygw-col-24 justify-center items-center flex10-clz">
			<image src="https://libs.diygw.com/upload/2022/02/14/3bcc22df-aa81-4850-9426-aa45ea7bc0ec/wbt-4jpg" class="response diygw-col-8 image5-clz" mode="widthFix"></image>
			<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex13-clz">
				<view class="diygw-col-24 text10-clz diygw-text-md"> 设计新人【实战DIY可视化】 </view>
				<view class="diygw-col-24 text15-clz diygw-text-sm"> 热门榜排行第1名 </view>
				<view class="flex flex-wrap diygw-col-24 justify-between items-center flex16-clz">
					<view class="diygw-form-item diygw-form-item-small diygw-form-item-small diygw-col-0 noborder">
						<view class="input" style="overflow-x: initial">
							<template v-for="item in rateCount"> <text class="diy-icon-starfill pointer" :data-index="item" :style="{ color: item <= rate ? 'rgba(245, 78, 6, 1)' : '#eee', fontSize: '12px' }" @tap="changeRate" /> </template>
							<input type="hidden" hidden name="rate" :value="rate" />
						</view>
					</view>
					<view class="diygw-col-0 text17-clz diygw-text-sm"> 30000人加入学习 </view>
				</view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 justify-center items-center flex6-clz">
			<image src="https://libs.diygw.com/upload/2022/02/14/4a448af9-15ad-45de-8005-9bd3c83e35d9/wbt-3jpg" class="response diygw-col-8 image3-clz" mode="widthFix"></image>
			<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex9-clz">
				<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
				<view class="diygw-col-24 text9-clz diygw-text-sm"> 热门榜排行第1名 </view>
				<view class="diygw-col-24 text11-clz diygw-text-sm"> 30000人加入学习 </view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 justify-center items-center flex4-clz">
			<image src="https://libs.diygw.com/upload/2022/02/14/ccc6d2c0-d4a9-4776-b4dd-6af5e50274ff/wbt-3jpg" class="response diygw-col-8 image2-clz" mode="widthFix"></image>
			<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex7-clz">
				<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
				<view class="diygw-col-24 text6-clz diygw-text-sm"> 热门榜排行第1名 </view>
				<view class="diygw-col-24 text8-clz diygw-text-sm"> 30000人加入学习 </view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 justify-center items-center flex12-clz">
			<image src="https://libs.diygw.com/upload/2022/02/14/4a448af9-15ad-45de-8005-9bd3c83e35d9/wbt-3jpg" class="response diygw-col-8 image6-clz" mode="widthFix"></image>
			<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex15-clz">
				<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
				<view class="diygw-col-24 text18-clz diygw-text-sm"> 热门榜排行第1名 </view>
				<view class="diygw-col-24 text20-clz diygw-text-sm"> 30000人加入学习 </view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 justify-center items-center flex8-clz">
			<image src="https://libs.diygw.com/upload/2022/02/14/3bcc22df-aa81-4850-9426-aa45ea7bc0ec/wbt-4jpg" class="response diygw-col-8 image4-clz" mode="widthFix"></image>
			<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex11-clz">
				<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
				<view class="diygw-col-24 text12-clz diygw-text-sm"> 热门榜排行第1名 </view>
				<view class="diygw-col-24 text14-clz diygw-text-sm"> 30000人加入学习 </view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 justify-center items-center flex14-clz">
			<image src="https://libs.diygw.com/upload/2022/02/14/ccc6d2c0-d4a9-4776-b4dd-6af5e50274ff/wbt-3jpg" class="response diygw-col-8 image7-clz" mode="widthFix"></image>
			<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex17-clz">
				<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
				<view class="diygw-col-24 text21-clz diygw-text-sm"> 热门榜排行第1名 </view>
				<view class="diygw-col-24 text23-clz diygw-text-sm"> 30000人加入学习 </view>
			</view>
		</view>
		<view class="flex flex-wrap diygw-col-24 justify-center items-center flex3-clz">
			<image src="https://libs.diygw.com/upload/2022/02/14/3bcc22df-aa81-4850-9426-aa45ea7bc0ec/wbt-4jpg" class="response diygw-col-8 image1-clz" mode="widthFix"></image>
			<view class="flex flex-wrap diygw-col-16 flex-direction-column justify-between flex5-clz">
				<view class="diygw-col-24 diygw-text-md"> 设计新人【实战DIY可视化】 </view>
				<view class="diygw-col-24 text-clz diygw-text-sm"> 热门榜排行第1名 </view>
				<view class="diygw-col-24 text2-clz diygw-text-sm"> 30000人加入学习 </view>
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
				search: '',
				rateCount: 5,
				rate: 5
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
			changeRate(evt) {
				let rate = evt.currentTarget.dataset.index;
				if (this.rate == rate) {
					rate = rate - 1;
				}
				this.rate = rate;
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
	.flex2-clz {
		margin-left: 10px;
		z-index: 1000;
		width: calc(100% - 10px - 10px) !important;
		margin-top: 0px;
		margin-bottom: 0px;
		margin-right: 10px;
	}
	.flex-clz {
		margin-left: 10px;
		z-index: 1000;
		width: calc(100% - 10px - 10px) !important;
		margin-top: 0px;
		margin-bottom: 0px;
		margin-right: 10px;
	}
	.flex1-clz {
		margin-left: 10px;
		z-index: 1000;
		width: calc(100% - 10px - 10px) !important;
		margin-top: 0px;
		margin-bottom: 10px;
		margin-right: 10px;
	}
	.flex10-clz {
		margin-left: 8px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px 3px rgba(111, 111, 111, 0.18);
		z-index: 1000;
		overflow: hidden;
		width: calc(100% - 8px - 8px) !important;
		border-top-left-radius: 6px;
		margin-top: 8px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 8px;
		margin-right: 8px;
	}
	.image5-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(33.3333333333% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex13-clz {
		padding-top: 0px;
		z-index: 1000;
		padding-left: 5px;
		padding-bottom: 0px;
		padding-right: 5px;
	}
	.text10-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 5px;
	}
	.text15-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.flex16-clz {
		z-index: 1000;
	}
	.text17-clz {
		margin-left: 5px;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex6-clz {
		margin-left: 8px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px 3px rgba(111, 111, 111, 0.18);
		z-index: 1000;
		overflow: hidden;
		width: calc(100% - 8px - 8px) !important;
		border-top-left-radius: 6px;
		margin-top: 8px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 8px;
		margin-right: 8px;
	}
	.image3-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(33.3333333333% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex9-clz {
		padding-top: 0px;
		z-index: 1000;
		padding-left: 5px;
		padding-bottom: 0px;
		padding-right: 5px;
	}
	.text9-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.text11-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.flex4-clz {
		margin-left: 8px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px 3px rgba(111, 111, 111, 0.18);
		z-index: 1000;
		overflow: hidden;
		width: calc(100% - 8px - 8px) !important;
		border-top-left-radius: 6px;
		margin-top: 8px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 8px;
		margin-right: 8px;
	}
	.image2-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(33.3333333333% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex7-clz {
		padding-top: 0px;
		z-index: 1000;
		padding-left: 5px;
		padding-bottom: 0px;
		padding-right: 5px;
	}
	.text6-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.text8-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.flex12-clz {
		margin-left: 8px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px 3px rgba(111, 111, 111, 0.18);
		z-index: 1000;
		overflow: hidden;
		width: calc(100% - 8px - 8px) !important;
		border-top-left-radius: 6px;
		margin-top: 8px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 8px;
		margin-right: 8px;
	}
	.image6-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(33.3333333333% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex15-clz {
		padding-top: 0px;
		z-index: 1000;
		padding-left: 5px;
		padding-bottom: 0px;
		padding-right: 5px;
	}
	.text18-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.text20-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.flex8-clz {
		margin-left: 8px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px 3px rgba(111, 111, 111, 0.18);
		z-index: 1000;
		overflow: hidden;
		width: calc(100% - 8px - 8px) !important;
		border-top-left-radius: 6px;
		margin-top: 8px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 8px;
		margin-right: 8px;
	}
	.image4-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(33.3333333333% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex11-clz {
		padding-top: 0px;
		z-index: 1000;
		padding-left: 5px;
		padding-bottom: 0px;
		padding-right: 5px;
	}
	.text12-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.text14-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.flex14-clz {
		margin-left: 8px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px 3px rgba(111, 111, 111, 0.18);
		z-index: 1000;
		overflow: hidden;
		width: calc(100% - 8px - 8px) !important;
		border-top-left-radius: 6px;
		margin-top: 8px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 8px;
		margin-right: 8px;
	}
	.image7-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(33.3333333333% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex17-clz {
		padding-top: 0px;
		z-index: 1000;
		padding-left: 5px;
		padding-bottom: 0px;
		padding-right: 5px;
	}
	.text21-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.text23-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.flex3-clz {
		margin-left: 8px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px 3px rgba(111, 111, 111, 0.18);
		z-index: 1000;
		overflow: hidden;
		width: calc(100% - 8px - 8px) !important;
		border-top-left-radius: 6px;
		margin-top: 8px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 8px;
		margin-right: 8px;
	}
	.image1-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(33.3333333333% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.flex5-clz {
		padding-top: 0px;
		z-index: 1000;
		padding-left: 5px;
		padding-bottom: 0px;
		padding-right: 5px;
	}
	.text-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.text2-clz {
		margin-left: 0px;
		width: calc(100% - 0px - 0px) !important;
		margin-top: 5px;
		margin-bottom: 0px;
		margin-right: 0px;
	}
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
</style>
