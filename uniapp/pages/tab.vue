<template>
	<view class="container">
		<view class="flex diygw-col-24 flex-direction-column">
			<scroll-view scroll-x :scroll-into-view="'scroll-' + tabsIndex" scroll-with-animation class="diygw-tabs text-center justify-start scale-title small-border">
				<view :id="'scroll-' + index" class="diygw-tab-item" :class="index == tabsIndex ? 'cur text-green' : ''" v-for="(item, index) in tabsDatas" :key="index" @click="changeTabs" :data-index="index">
					{{ item.text }}
				</view>
			</scroll-view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<scroll-view scroll-x :scroll-into-view="'scroll-' + tabs1Index" scroll-with-animation class="diygw-tabs text-center justify-start scale-title small-border">
				<view :id="'scroll-' + index" class="diygw-tab-item" :class="index == tabs1Index ? 'cur text-red' : ''" v-for="(item, index) in tabs1Datas" :key="index" @click="changeTabs1" :data-index="index">
					{{ item.text }}
				</view>
			</scroll-view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<scroll-view scroll-x :scroll-into-view="'scroll-' + tabs4Index" scroll-with-animation class="diygw-tabs text-center justify-start gradual-orange scale-title small-border">
				<view :id="'scroll-' + index" class="diygw-tab-item" :class="index == tabs4Index ? 'radius cur' : ''" v-for="(item, index) in tabs4Datas" :key="index" @click="changeTabs4" :data-index="index">
					{{ item.text }}
				</view>
			</scroll-view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<scroll-view scroll-x :scroll-into-view="'scroll-' + tabs11Index" scroll-with-animation class="diygw-tabs text-center justify-start gradual-red small-border">
				<view :id="'scroll-' + index" class="diygw-tab-item" :class="index == tabs11Index ? ' cur' : ''" v-for="(item, index) in tabs11Datas" :key="index" @click="changeTabs11" :data-index="index">
					{{ item.text }}
				</view>
			</scroll-view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<scroll-view scroll-x :scroll-into-view="'scroll-' + tabs5Index" scroll-with-animation class="diygw-tabs text-center justify-start gradual-green scale-title small-border">
				<view :id="'scroll-' + index" class="diygw-tab-item" :class="index == tabs5Index ? 'radius cur' : ''" v-for="(item, index) in tabs5Datas" :key="index" @click="changeTabs5" :data-index="index">
					{{ item.text }}
				</view>
			</scroll-view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<scroll-view scroll-x :scroll-into-view="'scroll-' + tabs2Index" scroll-with-animation class="diygw-tabs text-center justify-start">
				<view :id="'scroll-' + index" class="diygw-tab-item" :class="index == tabs2Index ? 'cur text-gradual-green' : ''" v-for="(item, index) in tabs2Datas" :key="index" @click="changeTabs2" :data-index="index">
					{{ item.text }}
				</view>
			</scroll-view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<scroll-view scroll-x :scroll-into-view="'scroll-' + tabs3Index" scroll-with-animation class="diygw-tabs text-center justify-start scale-title small-border">
				<view :id="'scroll-' + index" class="diygw-tab-item" :class="index == tabs3Index ? 'bg-gradual-orange radius' : ''" v-for="(item, index) in tabs3Datas" :key="index" @click="changeTabs3" :data-index="index">
					{{ item.text }}
				</view>
			</scroll-view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<view class="diygw-tabs text-center solid-bottom justify-center small-border">
				<view class="diygw-tab-item" :class="index == tabs7Index ? 'cur text-gradual-green' : ''" v-for="(item, index) in tabs7Datas" :key="index" @click="changeTabs7" :data-index="index">
					{{ item.text }}
				</view>
			</view>
			<view class="">
				<view v-if="tabs7Index == 0" class="flex-sub">
					<view class="flex diygw-col-24">
						<view class="diygw-grid col-3">
							<view @tap="navigateTo" data-type="phone" data-phone="15913132246" class="diygw-grid-item">
								<view class="diygw-grid-inner grid1-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gh.png"></image>
										<view class="diygw-tag badge empty grid1-badge-0 red"></view>
									</view>
									<view class="diygw-grid-title"> 点击打电话 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="https://www.diygw.com" data-tip="" class="diygw-grid-item">
								<view class="diygw-grid-inner grid1-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_lj.png"></image>
									</view>
									<view class="diygw-grid-title"> 点击复制 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-grid-item">
								<view class="diygw-grid-inner grid1-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gd.png"></image>
									</view>
									<view class="diygw-grid-title"> 更多 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid1-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
									</view>
									<view class="diygw-grid-title"> 微信 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="luckyzf332" data-tip="复制成功，前往支付宝查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid1-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_zfb.png"></image>
									</view>
									<view class="diygw-grid-title"> 支付宝 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="280160522" data-tip="复制成功，前往QQ查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid1-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_QQ.png"></image>
									</view>
									<view class="diygw-grid-title"> QQ </view>
								</view>
							</view>
						</view>
					</view>
				</view>
				<view v-if="tabs7Index == 1" class="flex-sub">
					<view class="flex diygw-col-24 list1-clz">
						<view class="diygw-list small not-remark">
							<view @tap="navigateTo" data-type="page" data-url="/pages/app/index" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
								</view>
								<view class="content">
									<view class="title"> 壁纸主页 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/app/shop" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_hb.png"></image>
								</view>
								<view class="content">
									<view class="title"> 商城主页 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/index" style="" class="diygw-item col-100 row arrow solid-bottom list1-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bj.png"></image>
								</view>
								<view class="content">
									<view class="title"> 组件库演示 </view>
								</view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<view class="diygw-tabs text-center solid-bottom justify-center gradual-green small-border">
				<view class="diygw-tab-item" :class="index == tabs10Index ? ' cur' : ''" v-for="(item, index) in tabs10Datas" :key="index" @click="changeTabs10" :data-index="index">
					{{ item.text }}
				</view>
			</view>
			<view class="">
				<view v-if="tabs10Index == 0" class="flex-sub">
					<view class="flex diygw-col-24">
						<view class="diygw-grid col-3">
							<view @tap="navigateTo" data-type="phone" data-phone="15913132246" class="diygw-grid-item">
								<view class="diygw-grid-inner grid4-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gh.png"></image>
										<view class="diygw-tag badge empty grid4-badge-0 red"></view>
									</view>
									<view class="diygw-grid-title"> 点击打电话 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="https://www.diygw.com" data-tip="" class="diygw-grid-item">
								<view class="diygw-grid-inner grid4-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_lj.png"></image>
									</view>
									<view class="diygw-grid-title"> 点击复制 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-grid-item">
								<view class="diygw-grid-inner grid4-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gd.png"></image>
									</view>
									<view class="diygw-grid-title"> 更多 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid4-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
									</view>
									<view class="diygw-grid-title"> 微信 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="luckyzf332" data-tip="复制成功，前往支付宝查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid4-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_zfb.png"></image>
									</view>
									<view class="diygw-grid-title"> 支付宝 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="280160522" data-tip="复制成功，前往QQ查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid4-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_QQ.png"></image>
									</view>
									<view class="diygw-grid-title"> QQ </view>
								</view>
							</view>
						</view>
					</view>
				</view>
				<view v-if="tabs10Index == 1" class="flex-sub">
					<view class="flex diygw-col-24 list4-clz">
						<view class="diygw-list small not-remark">
							<view @tap="navigateTo" data-type="page" data-url="/pages/app/index" style="" class="diygw-item col-100 row arrow solid-bottom list4-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
								</view>
								<view class="content">
									<view class="title"> 壁纸主页 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/app/shop" style="" class="diygw-item col-100 row arrow solid-bottom list4-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_hb.png"></image>
								</view>
								<view class="content">
									<view class="title"> 商城主页 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/index" style="" class="diygw-item col-100 row arrow solid-bottom list4-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bj.png"></image>
								</view>
								<view class="content">
									<view class="title"> 组件库演示 </view>
								</view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column-reverse">
			<view class="diygw-tabs text-center solid-top justify-center small-border">
				<view class="diygw-tab-item" :class="index == tabs8Index ? 'cur text-green' : ''" v-for="(item, index) in tabs8Datas" :key="index" @click="changeTabs8" :data-index="index">
					{{ item.text }}
				</view>
			</view>
			<view class="">
				<view v-if="tabs8Index == 0" class="flex-sub">
					<view class="flex diygw-col-24">
						<view class="diygw-grid col-3">
							<view @tap="navigateTo" data-type="phone" data-phone="15913132246" class="diygw-grid-item">
								<view class="diygw-grid-inner grid2-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gh.png"></image>
										<view class="diygw-tag badge empty grid2-badge-0 red"></view>
									</view>
									<view class="diygw-grid-title"> 点击打电话 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="https://www.diygw.com" data-tip="" class="diygw-grid-item">
								<view class="diygw-grid-inner grid2-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_lj.png"></image>
									</view>
									<view class="diygw-grid-title"> 点击复制 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-grid-item">
								<view class="diygw-grid-inner grid2-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gd.png"></image>
									</view>
									<view class="diygw-grid-title"> 更多 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid2-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
									</view>
									<view class="diygw-grid-title"> 微信 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="luckyzf332" data-tip="复制成功，前往支付宝查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid2-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_zfb.png"></image>
									</view>
									<view class="diygw-grid-title"> 支付宝 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="280160522" data-tip="复制成功，前往QQ查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid2-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_QQ.png"></image>
									</view>
									<view class="diygw-grid-title"> QQ </view>
								</view>
							</view>
						</view>
					</view>
				</view>
				<view v-if="tabs8Index == 1" class="flex-sub">
					<view class="flex diygw-col-24 list2-clz">
						<view class="diygw-list small not-remark">
							<view @tap="navigateTo" data-type="page" data-url="/pages/app/index" style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
								</view>
								<view class="content">
									<view class="title"> 壁纸主页 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/app/shop" style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_hb.png"></image>
								</view>
								<view class="content">
									<view class="title"> 商城主页 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/index" style="" class="diygw-item col-100 row arrow solid-bottom list2-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bj.png"></image>
								</view>
								<view class="content">
									<view class="title"> 组件库演示 </view>
								</view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24 flex-direction-row">
			<scroll-view scroll-y :scroll-into-view="'scroll-' + tabs6Index" scroll-with-animation class="diygw-tabs text-center solid-right justify-center small-border">
				<view :id="'scroll-' + index" class="diygw-tab-item" :class="index == tabs6Index ? 'cur text-green' : ''" v-for="(item, index) in tabs6Datas" :key="index" @click="changeTabs6" :data-index="index">
					{{ item.text }}
				</view>
			</scroll-view>
			<view class="flex1">
				<view v-if="tabs6Index == 0" class="flex-sub">
					<view class="flex diygw-col-24">
						<view class="diygw-grid col-3">
							<view @tap="navigateTo" data-type="phone" data-phone="15913132246" class="diygw-grid-item">
								<view class="diygw-grid-inner grid10-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gh.png"></image>
										<view class="diygw-tag badge empty grid10-badge-0 red"></view>
									</view>
									<view class="diygw-grid-title"> 点击打电话 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="https://www.diygw.com" data-tip="" class="diygw-grid-item">
								<view class="diygw-grid-inner grid10-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_lj.png"></image>
									</view>
									<view class="diygw-grid-title"> 点击复制 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-grid-item">
								<view class="diygw-grid-inner grid10-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gd.png"></image>
									</view>
									<view class="diygw-grid-title"> 更多 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid10-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
									</view>
									<view class="diygw-grid-title"> 微信 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="luckyzf332" data-tip="复制成功，前往支付宝查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid10-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_zfb.png"></image>
									</view>
									<view class="diygw-grid-title"> 支付宝 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="280160522" data-tip="复制成功，前往QQ查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid10-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_QQ.png"></image>
									</view>
									<view class="diygw-grid-title"> QQ </view>
								</view>
							</view>
						</view>
					</view>
				</view>
				<view v-if="tabs6Index == 1" class="flex-sub">
					<view class="flex diygw-col-24 list8-clz">
						<view class="diygw-list small not-remark">
							<view @tap="navigateTo" data-type="page" data-url="/pages/app/index" style="" class="diygw-item col-100 row arrow solid-bottom list8-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
								</view>
								<view class="content">
									<view class="title"> 壁纸主页 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/app/shop" style="" class="diygw-item col-100 row arrow solid-bottom list8-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_hb.png"></image>
								</view>
								<view class="content">
									<view class="title"> 商城主页 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/index" style="" class="diygw-item col-100 row arrow solid-bottom list8-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bj.png"></image>
								</view>
								<view class="content">
									<view class="title"> 组件库演示 </view>
								</view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
		</view>
		<view class="flex diygw-col-24 flex-direction-row-reverse">
			<scroll-view scroll-y :scroll-into-view="'scroll-' + tabs9Index" scroll-with-animation class="diygw-tabs text-center solid-left justify-center small-border">
				<view :id="'scroll-' + index" class="diygw-tab-item" :class="index == tabs9Index ? 'cur text-green' : ''" v-for="(item, index) in tabs9Datas" :key="index" @click="changeTabs9" :data-index="index">
					{{ item.text }}
				</view>
			</scroll-view>
			<view class="flex1">
				<view v-if="tabs9Index == 0" class="flex-sub">
					<view class="flex diygw-col-24">
						<view class="diygw-grid col-3">
							<view @tap="navigateTo" data-type="phone" data-phone="15913132246" class="diygw-grid-item">
								<view class="diygw-grid-inner grid3-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gh.png"></image>
										<view class="diygw-tag badge empty grid3-badge-0 red"></view>
									</view>
									<view class="diygw-grid-title"> 点击打电话 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="https://www.diygw.com" data-tip="" class="diygw-grid-item">
								<view class="diygw-grid-inner grid3-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_lj.png"></image>
									</view>
									<view class="diygw-grid-title"> 点击复制 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/page/page" class="diygw-grid-item">
								<view class="diygw-grid-inner grid3-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_gd.png"></image>
									</view>
									<view class="diygw-grid-title"> 更多 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="15913132246" data-tip="复制成功，前往微信查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid3-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_weixin.png"></image>
									</view>
									<view class="diygw-grid-title"> 微信 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="luckyzf332" data-tip="复制成功，前往支付宝查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid3-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_zfb.png"></image>
									</view>
									<view class="diygw-grid-title"> 支付宝 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="copy" data-copy="280160522" data-tip="复制成功，前往QQ查找" class="diygw-grid-item">
								<view class="diygw-grid-inner grid3-item-clz">
									<view class="diygw-grid-icon diygw-avatar radius">
										<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon2/icon2_QQ.png"></image>
									</view>
									<view class="diygw-grid-title"> QQ </view>
								</view>
							</view>
						</view>
					</view>
				</view>
				<view v-if="tabs9Index == 1" class="flex-sub">
					<view class="flex diygw-col-24 list3-clz">
						<view class="diygw-list small not-remark">
							<view @tap="navigateTo" data-type="page" data-url="/pages/app/index" style="" class="diygw-item col-100 row arrow solid-bottom list3-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_fs.png"></image>
								</view>
								<view class="content">
									<view class="title"> 壁纸主页 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/app/shop" style="" class="diygw-item col-100 row arrow solid-bottom list3-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_hb.png"></image>
								</view>
								<view class="content">
									<view class="title"> 商城主页 </view>
								</view>
							</view>
							<view @tap="navigateTo" data-type="page" data-url="/pages/index" style="" class="diygw-item col-100 row arrow solid-bottom list3-item-clz">
								<view class="diygw-avatar radius">
									<image mode="aspectFit" class="diygw-avatar-img radius" src="https://lib.diygw.com/static/icon/icon1/icon1_bj.png"></image>
								</view>
								<view class="content">
									<view class="title"> 组件库演示 </view>
								</view>
							</view>
						</view>
					</view>
				</view>
			</view>
		</view>
		<view class="flex diygw-col-24">
			<view class="diygw-pzx" style="border-bottom: 10px solid #eee"></view>
		</view>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {
				tabsDatas: [{ text: `关注` }, { text: `推荐` }, { text: `热榜` }, { text: `搞笑` }, { text: `视频` }, { text: `科技` }, { text: `音乐` }],
				tabsIndex: 0,
				tabs1Datas: [{ text: `关注` }, { text: `推荐` }, { text: `热榜` }, { text: `搞笑` }, { text: `视频` }, { text: `科技` }, { text: `音乐` }],
				tabs1Index: 0,
				tabs4Datas: [{ text: `关注` }, { text: `推荐` }, { text: `热榜` }, { text: `搞笑` }, { text: `视频` }, { text: `科技` }, { text: `音乐` }],
				tabs4Index: 0,
				tabs11Datas: [{ text: `关注` }, { text: `推荐` }, { text: `热榜` }, { text: `搞笑` }, { text: `视频` }, { text: `科技` }, { text: `音乐` }],
				tabs11Index: 0,
				tabs5Datas: [{ text: `关注` }, { text: `推荐` }, { text: `热榜` }, { text: `搞笑` }, { text: `视频` }, { text: `科技` }, { text: `音乐` }],
				tabs5Index: 0,
				tabs2Datas: [{ text: `关注` }, { text: `推荐` }, { text: `热榜` }, { text: `搞笑` }, { text: `视频` }, { text: `科技` }, { text: `音乐` }],
				tabs2Index: 0,
				tabs3Datas: [{ text: `关注` }, { text: `推荐` }, { text: `热榜` }, { text: `搞笑` }, { text: `视频` }, { text: `科技` }, { text: `音乐` }],
				tabs3Index: 0,
				tabs7Datas: [{ text: `关注` }, { text: `推荐` }],
				tabs7Index: 0,
				tabs10Datas: [{ text: `整体导航背景` }, { text: `推荐` }],
				tabs10Index: 0,
				tabs8Datas: [{ text: `标题在下方` }, { text: `推荐` }],
				tabs8Index: 0,
				tabs6Datas: [{ text: `标题左边` }, { text: `推荐` }],
				tabs6Index: 0,
				tabs9Datas: [{ text: `标题右边` }, { text: `推荐` }],
				tabs9Index: 0
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
			},
			changeTabs1(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabs1Index) return;
				this.setData({
					tabs1Index: index
				});
			},
			changeTabs4(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabs4Index) return;
				this.setData({
					tabs4Index: index
				});
			},
			changeTabs11(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabs11Index) return;
				this.setData({
					tabs11Index: index
				});
			},
			changeTabs5(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabs5Index) return;
				this.setData({
					tabs5Index: index
				});
			},
			changeTabs2(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabs2Index) return;
				this.setData({
					tabs2Index: index
				});
			},
			changeTabs3(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabs3Index) return;
				this.setData({
					tabs3Index: index
				});
			},
			changeTabs7(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabs7Index) return;
				this.setData({
					tabs7Index: index
				});
			},
			changeTabs10(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabs10Index) return;
				this.setData({
					tabs10Index: index
				});
			},
			changeTabs8(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabs8Index) return;
				this.setData({
					tabs8Index: index
				});
			},
			changeTabs6(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabs6Index) return;
				this.setData({
					tabs6Index: index
				});
			},
			changeTabs9(evt) {
				let { index } = evt.currentTarget.dataset;
				if (index == this.tabs9Index) return;
				this.setData({
					tabs9Index: index
				});
			}
		}
	};
</script>

<style lang="scss" scoped>
	.grid1-badge-0 {
		right: 2rpx !important;
		top: 2rpx !important;
	}
	.list1-clz {
		background-color: rgba(255, 255, 255, 1);
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 10px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.grid4-badge-0 {
		right: 2rpx !important;
		top: 2rpx !important;
	}
	.list4-clz {
		background-color: rgba(255, 255, 255, 1);
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 10px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.grid2-badge-0 {
		right: 2rpx !important;
		top: 2rpx !important;
	}
	.list2-clz {
		background-color: rgba(255, 255, 255, 1);
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 10px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.grid10-badge-0 {
		right: 2rpx !important;
		top: 2rpx !important;
	}
	.list8-clz {
		background-color: rgba(255, 255, 255, 1);
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 10px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.grid3-badge-0 {
		right: 2rpx !important;
		top: 2rpx !important;
	}
	.list3-clz {
		background-color: rgba(255, 255, 255, 1);
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		box-shadow: 0px 1px 3px rgba(31, 31, 31, 0.16);
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 10px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
</style>
