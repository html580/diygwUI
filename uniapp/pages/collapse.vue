<template>
	<view class="container">
		<view class="diygw-title flex diygw-col-24 gradual-purple title-clz">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 手风琴效果 </view>
		</view>
		<view class="flex flex-direction-column flex-sub diygw-col-24 collapse1-clz">
			<view class="flex flex-direction-column flex-sub">
				<view @tap="changeCollapse1" data-index="0" class="diygw-text-md padding flex solid-bottom" :class="[collapse1Datas[0].isShow ? 'text- cur ' : '']">
					<view class="flex-sub"> 田家元日 </view>
					<i class="diy-icon-unfold diy-collapse-icon" :class="[collapse1Datas[0].isShow ? 'diy-collapse-active' : '']"></i>
				</view>
				<view v-if="collapse1Datas[0].isShow" class="solid-bottom">
					<rich-text :nodes="text4" class="diygw-col-24 text4-clz"></rich-text>
				</view>
			</view>
			<view class="flex flex-direction-column flex-sub">
				<view @tap="changeCollapse1" data-index="1" class="diygw-text-md padding flex solid-bottom" :class="[collapse1Datas[1].isShow ? 'text- cur ' : '']">
					<view class="flex-sub"> 正月十五夜灯 </view>
					<i class="diy-icon-unfold diy-collapse-icon" :class="[collapse1Datas[1].isShow ? 'diy-collapse-active' : '']"></i>
				</view>
				<view v-if="collapse1Datas[1].isShow" class="solid-bottom">
					<rich-text :nodes="text5" class="diygw-col-24 text5-clz"></rich-text>
				</view>
			</view>
			<view class="flex flex-direction-column flex-sub">
				<view @tap="changeCollapse1" data-index="2" class="diygw-text-md padding flex solid-bottom" :class="[collapse1Datas[2].isShow ? 'text- cur ' : '']">
					<view class="flex-sub"> 观灯乐行 </view>
					<i class="diy-icon-unfold diy-collapse-icon" :class="[collapse1Datas[2].isShow ? 'diy-collapse-active' : '']"></i>
				</view>
				<view v-if="collapse1Datas[2].isShow" class="solid-bottom">
					<rich-text :nodes="text6" class="diygw-col-24 text6-clz"></rich-text>
				</view>
			</view>
		</view>
		<view class="diygw-title flex diygw-col-24 gradual-green title1-clz">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 允许全部展开 </view>
		</view>
		<view class="flex flex-direction-column flex-sub diygw-col-24 collapse2-clz">
			<view class="flex flex-direction-column flex-sub">
				<view @tap="changeCollapse2" data-index="0" class="diygw-text-md padding flex solid-bottom" :class="[collapse2Datas[0].isShow ? 'text- cur ' : '']">
					<view class="flex-sub"> 田家元日 </view>
					<i class="diy-icon-unfold diy-collapse-icon" :class="[collapse2Datas[0].isShow ? 'diy-collapse-active' : '']"></i>
				</view>
				<view v-if="collapse2Datas[0].isShow" class="solid-bottom">
					<rich-text :nodes="text2" class="diygw-col-24 text2-clz"></rich-text>
				</view>
			</view>
			<view class="flex flex-direction-column flex-sub">
				<view @tap="changeCollapse2" data-index="1" class="diygw-text-md padding flex solid-bottom" :class="[collapse2Datas[1].isShow ? 'text- cur ' : '']">
					<view class="flex-sub"> 正月十五夜灯 </view>
					<i class="diy-icon-unfold diy-collapse-icon" :class="[collapse2Datas[1].isShow ? 'diy-collapse-active' : '']"></i>
				</view>
				<view v-if="collapse2Datas[1].isShow" class="solid-bottom">
					<rich-text :nodes="text9" class="diygw-col-24 text9-clz"></rich-text>
				</view>
			</view>
			<view class="flex flex-direction-column flex-sub">
				<view @tap="changeCollapse2" data-index="2" class="diygw-text-md padding flex solid-bottom" :class="[collapse2Datas[2].isShow ? 'text- cur ' : '']">
					<view class="flex-sub"> 观灯乐行 </view>
					<i class="diy-icon-unfold diy-collapse-icon" :class="[collapse2Datas[2].isShow ? 'diy-collapse-active' : '']"></i>
				</view>
				<view v-if="collapse2Datas[2].isShow" class="solid-bottom">
					<rich-text :nodes="text11" class="diygw-col-24 text11-clz"></rich-text>
				</view>
			</view>
		</view>
		<view class="diygw-title flex diygw-col-24 gradual-orange title2-clz">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 自定义标题样式 </view>
		</view>
		<view class="flex flex-direction-column flex-sub diygw-col-24 collapse-clz">
			<view class="flex flex-direction-column flex-sub">
				<view @tap="changeCollapse" data-index="0" class="diygw-text-md padding flex solid-bottom" :class="[collapseDatas[0].isShow ? 'bg-green cur ' : '']">
					<view class="flex-sub"> 田家元日 </view>
					<i class="diy-icon-unfold diy-collapse-icon" :class="[collapseDatas[0].isShow ? 'diy-collapse-active' : '']"></i>
				</view>
				<view v-if="collapseDatas[0].isShow" class="solid-bottom">
					<rich-text :nodes="text1" class="diygw-col-24 text1-clz"></rich-text>
				</view>
			</view>
			<view class="flex flex-direction-column flex-sub">
				<view @tap="changeCollapse" data-index="1" class="diygw-text-md padding flex solid-bottom" :class="[collapseDatas[1].isShow ? 'bg-green cur ' : '']">
					<view class="flex-sub"> 正月十五夜灯 </view>
					<i class="diy-icon-unfold diy-collapse-icon" :class="[collapseDatas[1].isShow ? 'diy-collapse-active' : '']"></i>
				</view>
				<view v-if="collapseDatas[1].isShow" class="solid-bottom">
					<rich-text :nodes="text3" class="diygw-col-24 text3-clz"></rich-text>
				</view>
			</view>
			<view class="flex flex-direction-column flex-sub">
				<view @tap="changeCollapse" data-index="2" class="diygw-text-md padding flex solid-bottom" :class="[collapseDatas[2].isShow ? 'bg-green cur ' : '']">
					<view class="flex-sub"> 观灯乐行 </view>
					<i class="diy-icon-unfold diy-collapse-icon" :class="[collapseDatas[2].isShow ? 'diy-collapse-active' : '']"></i>
				</view>
				<view v-if="collapseDatas[2].isShow" class="solid-bottom">
					<rich-text :nodes="text8" class="diygw-col-24 text8-clz"></rich-text>
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
				collapse1Datas: [
					{ text: '田家元日', isShow: false },
					{ text: '正月十五夜灯', isShow: false },
					{ text: '观灯乐行', isShow: false }
				],
				text4: `<p>昨夜斗回北，今朝岁起东。</p>
<p>我年已强仕，无禄尚忧农。</p>
<p>桑野就耕父，荷锄随牧童。</p>
<p>田家占气候，共说此年丰。</p>`,
				text5: `<p>千门开锁万灯明，正月中旬动帝京。</p>
<p>三百内人连袖舞，一时天上著词声</p>`,
				text6: `<p>月色灯山满帝都，香车宝盖隘通衢。</p>
<p>身闲不睹中兴盛，羞逐乡人赛紫姑。</p>`,
				collapse2Datas: [
					{ text: '田家元日', isShow: false },
					{ text: '正月十五夜灯', isShow: false },
					{ text: '观灯乐行', isShow: false }
				],
				text2: `<p>昨夜斗回北，今朝岁起东。</p>
<p>我年已强仕，无禄尚忧农。</p>
<p>桑野就耕父，荷锄随牧童。</p>
<p>田家占气候，共说此年丰。</p>`,
				text9: `<p>千门开锁万灯明，正月中旬动帝京。</p>
<p>三百内人连袖舞，一时天上著词声</p>`,
				text11: `<p>月色灯山满帝都，香车宝盖隘通衢。</p>
<p>身闲不睹中兴盛，羞逐乡人赛紫姑。</p>`,
				collapseDatas: [
					{ text: '田家元日', isShow: false },
					{ text: '正月十五夜灯', isShow: false },
					{ text: '观灯乐行', isShow: false }
				],
				text1: `<p>昨夜斗回北，今朝岁起东。</p>
<p>我年已强仕，无禄尚忧农。</p>
<p>桑野就耕父，荷锄随牧童。</p>
<p>田家占气候，共说此年丰。</p>`,
				text3: `<p>千门开锁万灯明，正月中旬动帝京。</p>
<p>三百内人连袖舞，一时天上著词声</p>`,
				text8: `<p>月色灯山满帝都，香车宝盖隘通衢。</p>
<p>身闲不睹中兴盛，羞逐乡人赛紫姑。</p>`
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
			changeCollapse1(evt) {
				let { index } = evt.currentTarget.dataset;
				let collapse1Datas = this.collapse1Datas;

				for (let i = 0; i < collapse1Datas.length; i++) {
					if (collapse1Datas[i]['isShow'] && i == index) {
						collapse1Datas[i]['isShow'] = false;
					} else {
						collapse1Datas[i]['isShow'] = i == index;
					}
				}
				this.setData({ collapse1Datas });
			},
			changeCollapse2(evt) {
				let { index } = evt.currentTarget.dataset;
				let collapse2Datas = this.collapse2Datas;

				collapse2Datas[index]['isShow'] = !collapse2Datas[index]['isShow'];
				this.setData({ collapse2Datas });
			},
			changeCollapse(evt) {
				let { index } = evt.currentTarget.dataset;
				let collapseDatas = this.collapseDatas;

				collapseDatas[index]['isShow'] = !collapseDatas[index]['isShow'];
				this.setData({ collapseDatas });
			}
		}
	};
</script>

<style lang="scss" scoped>
	.title-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 15px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.collapse1-clz {
		margin-left: 5px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.text4-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.text5-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.text6-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.title1-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 15px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.collapse2-clz {
		margin-left: 5px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.text2-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.text9-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.text11-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.title2-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 15px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.collapse-clz {
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
	.text1-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.text3-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.text8-clz {
		margin-left: 5px;
		width: calc(100% - 5px - 5px) !important;
		margin-top: 5px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
</style>
