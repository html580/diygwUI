<template>
	<view class="container">
		<view class="flex diygw-col-24 flex-direction-column">
			<view class="diygw-tabs text-center solid-bottom justify-center not-border">
				<view class="diygw-tab-item" :class="index == tabsIndex ? 'text-green cur' : ''" v-for="(item, index) in tabsDatas" :key="index" @click="changeTabs(index)">
					{{ item.text }}
				</view>
			</view>
			<view v-if="tabsIndex == 0" class="flex-sub flex-direction-column padding-xs">
				<view class="diygw-col-24" v-html="text"></view>
			</view>
			<view v-if="tabsIndex == 1" class="flex-sub flex-direction-column padding-xs">
				<view class="flex diygw-col-24">
					<view class="diygw-avatar radius bg-none" style="background-image: url(/static/fa0b41ce9a38.jpg)"> </view>
				</view>
			</view>
			<view v-if="tabsIndex == 2" class="flex-sub flex-direction-column padding-xs"> </view>
			<view v-if="tabsIndex == 3" class="flex-sub flex-direction-column padding-xs"> </view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<view class="diygw-tabs text-center solid-bottom justify-between green not-border">
				<view class="diygw-tab-item" :class="index == tabs1Index ? ' cur' : ''" v-for="(item, index) in tabs1Datas" :key="index" @click="changeTabs1(index)">
					{{ item.text }}
				</view>
			</view>
			<view v-if="tabs1Index == 0" class="flex-sub flex-direction-column padding-xs">
				<view class="diygw-col-24" v-html="text1"></view>
			</view>
			<view v-if="tabs1Index == 1" class="flex-sub flex-direction-column padding-xs">
				<view class="flex diygw-col-24">
					<view class="diygw-avatar radius bg-none" style="background-image: url(/static/fa0b41ce9a38.jpg)"> </view>
				</view>
			</view>
			<view v-if="tabs1Index == 2" class="flex-sub flex-direction-column padding-xs"> </view>
			<view v-if="tabs1Index == 3" class="flex-sub flex-direction-column padding-xs"> </view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<view class="diygw-tabs text-center solid-bottom justify-around gradual-orange not-border">
				<view class="diygw-tab-item" :class="index == tabs2Index ? ' cur' : ''" v-for="(item, index) in tabs2Datas" :key="index" @click="changeTabs2(index)">
					{{ item.text }}
				</view>
			</view>
			<view v-if="tabs2Index == 0" class="flex-sub flex-direction-column padding-xs">
				<view class="diygw-col-24" v-html="text2"></view>
			</view>
			<view v-if="tabs2Index == 1" class="flex-sub flex-direction-column padding-xs">
				<view class="flex diygw-col-24">
					<view class="diygw-avatar radius bg-none" style="background-image: url(/static/fa0b41ce9a38.jpg)"> </view>
				</view>
			</view>
			<view v-if="tabs2Index == 2" class="flex-sub flex-direction-column padding-xs"> </view>
			<view v-if="tabs2Index == 3" class="flex-sub flex-direction-column padding-xs"> </view>
		</view>
		<view class="flex diygw-col-24 flex-direction-row">
			<view class="diygw-tabs text-center solid-right justify-around green not-border">
				<view class="diygw-tab-item" :class="index == tabs3Index ? ' cur' : ''" v-for="(item, index) in tabs3Datas" :key="index" @click="changeTabs3(index)">
					{{ item.text }}
				</view>
			</view>
			<view v-if="tabs3Index == 0" class="flex-sub flex-direction-column padding-xs">
				<view class="diygw-col-24" v-html="text3"></view>
			</view>
			<view v-if="tabs3Index == 1" class="flex-sub flex-direction-column padding-xs">
				<view class="flex diygw-col-24">
					<view class="diygw-avatar radius bg-none" style="background-image: url(/static/fa0b41ce9a38.jpg)"> </view>
				</view>
			</view>
			<view v-if="tabs3Index == 2" class="flex-sub flex-direction-column padding-xs"> </view>
			<view v-if="tabs3Index == 3" class="flex-sub flex-direction-column padding-xs"> </view>
		</view>
		<view class="flex diygw-col-24 flex-direction-row-reverse">
			<view class="diygw-tabs text-center solid-left justify-around green not-border">
				<view class="diygw-tab-item" :class="index == tabs4Index ? ' cur' : ''" v-for="(item, index) in tabs4Datas" :key="index" @click="changeTabs4(index)">
					{{ item.text }}
				</view>
			</view>
			<view v-if="tabs4Index == 0" class="flex-sub flex-direction-column padding-xs">
				<view class="diygw-col-24" v-html="text4"></view>
			</view>
			<view v-if="tabs4Index == 1" class="flex-sub flex-direction-column padding-xs">
				<view class="flex diygw-col-24">
					<view class="diygw-avatar radius bg-none" style="background-image: url(/static/fa0b41ce9a38.jpg)"> </view>
				</view>
			</view>
			<view v-if="tabs4Index == 2" class="flex-sub flex-direction-column padding-xs"> </view>
			<view v-if="tabs4Index == 3" class="flex-sub flex-direction-column padding-xs"> </view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column-reverse">
			<view class="diygw-tabs text-center solid-top justify-around green not-border">
				<view class="diygw-tab-item" :class="index == tabs5Index ? ' cur' : ''" v-for="(item, index) in tabs5Datas" :key="index" @click="changeTabs5(index)">
					{{ item.text }}
				</view>
			</view>
			<view v-if="tabs5Index == 0" class="tabs5-content flex-sub flex-direction-column padding-xs">
				<view class="diygw-col-24" v-html="text5"></view>
			</view>
			<view v-if="tabs5Index == 1" class="tabs5-content flex-sub flex-direction-column padding-xs">
				<view class="flex diygw-col-24">
					<view class="diygw-avatar radius bg-none" style="background-image: url(/static/fa0b41ce9a38.jpg)"> </view>
				</view>
			</view>
			<view v-if="tabs5Index == 2" class="tabs5-content flex-sub flex-direction-column padding-xs"> </view>
			<view v-if="tabs5Index == 3" class="tabs5-content flex-sub flex-direction-column padding-xs"> </view>
		</view>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {
				tabsDatas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
				tabsIndex: 0,
				text: `内容`,
				tabs1Datas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
				tabs1Index: 0,
				text1: `内容`,
				tabs2Datas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
				tabs2Index: 0,
				text2: `内容`,
				tabs3Datas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
				tabs3Index: 0,
				text3: `内容`,
				tabs4Datas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
				tabs4Index: 0,
				text4: `内容`,
				tabs5Datas: [{ text: `菜单一` }, { text: `菜单二` }, { text: `菜单三` }, { text: `菜单四` }],
				tabs5Index: 0,
				text5: `内容`
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
			changeTabs(index) {
				this.tabsIndex = index;
			},
			changeTabs1(index) {
				this.tabs1Index = index;
			},
			changeTabs2(index) {
				this.tabs2Index = index;
			},
			changeTabs3(index) {
				this.tabs3Index = index;
			},
			changeTabs4(index) {
				this.tabs4Index = index;
			},
			changeTabs5(index) {
				this.tabs5Index = index;
			}
		}
	};
</script>

<style lang="scss">
	.tabs5-content {
		min-height: 80px;
	}
</style>
