<view class="flex diygw-col-24">
  <view catchtap="play" class="{{['diygw-avatar','music-avatar','radius','margin-right-xs',avatarType=='icon'?icon:'',backgroundClazz,avatarType!='img'&&backgroundClazz==''?'gradual-green':'',avatarType=='img'&&backgroundClazz==''?'bg-none':'',sizeClz,isPlaying?'music-play':'music-pause']}}" style="{{avatarBackgroundColor?'background-color:'+avatarBackgroundColor+' !important;':''}}{{avatarColor?'color:'+avatarColor+' !important;':''}}{{avatarType!='img'?'background-image:none !important;':''}}" bindtap="__e">
    <block qq:if="{{avatarType=='img'}}">
      <image class="diygw-avatar-img radius" mode="aspectFit" src="{{poster}}"></image>
    </block>
    <block qq:if="{{avatarType=='text'}}">
      <view>{{text}}</view>
    </block>
  </view>
  <block qq:if="{{isTitle||isSilder}}">
    <view class="{{['flex','flex-direction-column','flex-sub',isTitle&&isSilder?'justify-between':'justify-center']}}">
      <block qq:if="{{isTitle}}">
        <view>{{author}}</view>
      </block>
      <block qq:if="{{isSilder}}">
        <view class="flex align-center flex-sub" >
          <view class="flex-shrink-0 margin-right-lg">{{ currentTimeStr }}</view>
          <slider class="flex-sub" value="{{position}}" min="0" max="100" active-color="{{activeColor}}" bindchange="onchange"></slider>
          <view class="flex-shrink-0 margin-left-xs margin-right-xs">{{ durationStr }}</view>
        </view>
      </block>
    </view>
  </block>
</view>