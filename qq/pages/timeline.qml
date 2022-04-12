<view class="container">
	<view class="flex diygw-col-24">
		<view class="diygw-timeline">
			<view qq:for="{{timelineDatas}}" qq:for-item="item" qq:for-index="index" data-key="index" class="{{item.clazz}}" style="{{item.style}}">
				<view class="content shadow-blur {{item.backgroundClazz}}" style="{{item.backgroundStyle}}">
					<rich-text nodes="{{item.content}}"></rich-text>
				</view>
			</view>
		</view>
	</view>
	<view class="clearfix"></view>
</view>
