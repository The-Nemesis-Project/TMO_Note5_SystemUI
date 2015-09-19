.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 2191
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2192
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 13
    .param p1, "selfChange"    # Z

    .prologue
    const/16 v10, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2195
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2197
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "emergency_mode"

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v12

    invoke-static {v9, v11, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v7, :cond_a

    move v2, v7

    .line 2198
    .local v2, "mEnabled":Z
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v9, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 2199
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEmergencyMode(Z)V

    .line 2201
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setEmergencyMode(Z)V

    .line 2203
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v9, :cond_0

    .line 2204
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setEmergencyMode(Z)V

    .line 2208
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 2209
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2210
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2211
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    .line 2221
    :cond_1
    :goto_1
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v9, :cond_e

    .line 2222
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    if-eqz v9, :cond_2

    .line 2223
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2224
    .local v3, "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingDivider:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2226
    .local v4, "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_d

    .line 2227
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2228
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2235
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2236
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingDivider:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2240
    .end local v3    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    if-eqz v9, :cond_3

    .line 2241
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v9, v11}, Lcom/android/systemui/cover/SViewCoverLauncher;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 2258
    :cond_3
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v11, 0x7f0e03d4

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2259
    .local v0, "dateTimeView":Landroid/view/View;
    if-eqz v2, :cond_10

    move v9, v8

    :goto_4
    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 2260
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 2261
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v9

    if-nez v9, :cond_4

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v9, :cond_4

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowEditIcon:Z

    if-eqz v9, :cond_11

    :cond_4
    move v9, v10

    :goto_5
    invoke-virtual {v11, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQsEditButtonVisibility(I)V

    .line 2264
    :cond_5
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v9, :cond_6

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowEditIcon:Z

    if-eqz v9, :cond_6

    .line 2265
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v9

    if-eqz v9, :cond_12

    move v9, v10

    :goto_6
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2268
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v2, :cond_13

    :goto_7
    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z
    invoke-static {v9, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 2269
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    .line 2272
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    .line 2274
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v1

    .line 2275
    .local v1, "isKskEnabled":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sFinderButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    .line 2276
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v9, 0x7f0e005f

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-nez v2, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    move v8, v10

    :cond_8
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2279
    :cond_9
    return-void

    .end local v0    # "dateTimeView":Landroid/view/View;
    .end local v1    # "isKskEnabled":Z
    .end local v2    # "mEnabled":Z
    :cond_a
    move v2, v8

    .line 2197
    goto/16 :goto_0

    .line 2212
    .restart local v2    # "mEnabled":Z
    :cond_b
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v9

    if-nez v9, :cond_c

    .line 2213
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2214
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    goto/16 :goto_1

    .line 2216
    :cond_c
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQsPanelOnKeyguard(Z)V

    goto/16 :goto_1

    .line 2230
    .restart local v3    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2231
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x7f0c03e2

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2232
    const v9, 0x7f0c0329

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    .line 2244
    .end local v3    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_e
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v9, :cond_3

    .line 2245
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2246
    .restart local v6    # "res":Landroid/content/res/Resources;
    if-eqz v2, :cond_f

    .line 2247
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2248
    .local v5, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const v9, 0x7f0c04e0

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 2250
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 2252
    .end local v5    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_f
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setMumButtonVisibility()V

    goto/16 :goto_3

    .end local v6    # "res":Landroid/content/res/Resources;
    .restart local v0    # "dateTimeView":Landroid/view/View;
    :cond_10
    move v9, v7

    .line 2259
    goto/16 :goto_4

    :cond_11
    move v9, v8

    .line 2261
    goto/16 :goto_5

    :cond_12
    move v9, v8

    .line 2265
    goto/16 :goto_6

    :cond_13
    move v7, v8

    .line 2268
    goto/16 :goto_7
.end method
