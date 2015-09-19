.class public Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;
.super Lcom/sec/android/cover/clearcover/ClearCoverPage;
.source "ClearCoverZeroPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$4;,
        Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static WALLPAPER_COLOR_BLACK:I

.field private static WALLPAPER_COLOR_BLUE:I

.field private static WALLPAPER_COLOR_GOLD:I

.field private static WALLPAPER_COLOR_GREEN:I

.field private static WALLPAPER_COLOR_SILVER:I


# instance fields
.field private mClockWidget:Landroid/view/View;

.field private mDualClockWidget:Landroid/view/View;

.field private mMissedCallCountTextView:Landroid/widget/TextView;

.field private mMissedViewClickListener:Landroid/view/View$OnClickListener;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mUnreadMessageCountTextView:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    .line 66
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 90
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$2;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 99
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedViewClickListener:Landroid/view/View$OnClickListener;

    .line 139
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    .line 141
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_silver:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_SILVER:I

    .line 143
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_BLACK:I

    .line 145
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_BLUE:I

    .line 147
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_GREEN:I

    .line 149
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_gold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_GOLD:I

    .line 151
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->setClockVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->updateMissedEvent()V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;
    .param p1, "x1"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private gotoOpenPage()V
    .locals 4

    .prologue
    .line 343
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 347
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoOpenPage() mPendingIntent sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    .line 353
    :cond_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method private setClockVisibility()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "dualclock_menu_settings"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 192
    .local v0, "isDualClock":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v1

    .line 194
    .local v1, "isRoaming":Z
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClockVisibility : isDualClock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 197
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isDualClock":Z
    .end local v1    # "isRoaming":Z
    :cond_1
    move v0, v2

    .line 189
    goto :goto_0

    .line 202
    .restart local v0    # "isDualClock":Z
    .restart local v1    # "isRoaming":Z
    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;)V
    .locals 4
    .param p1, "type"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;

    .prologue
    .line 300
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showCoverOpenPopup() type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "popupContentId":I
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$4;->$SwitchMap$com$sec$android$cover$clearcover$ClearCoverZeroPage$PopupType:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 317
    :goto_0
    if-nez v0, :cond_0

    .line 323
    :goto_1
    return-void

    .line 305
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_secured_popup:I

    .line 306
    goto :goto_0

    .line 308
    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_message:I

    .line 309
    goto :goto_0

    .line 311
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_call:I

    .line 312
    goto :goto_0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    goto :goto_1

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateMissedEvent()V
    .locals 15

    .prologue
    const/16 v14, 0x3e7

    const/16 v13, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 210
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    const-string v10, "updateMissedEvent()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v9

    const-string v10, "new_message"

    invoke-virtual {v9, v10}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v4

    .line 214
    .local v4, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v9

    const-string v10, "missed_call"

    invoke-virtual {v9, v10}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v1

    .line 217
    .local v1, "callRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    const/4 v3, 0x1

    .line 219
    .local v3, "enableNoti":Z
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_show_notifications"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-ne v9, v7, :cond_4

    move v3, v7

    .line 226
    :goto_0
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enableNoti = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v6, 0x0

    .line 229
    .local v6, "unreadMessageCount":I
    if-eqz v4, :cond_0

    .line 230
    iget v6, v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    .line 232
    :cond_0
    const/4 v5, 0x0

    .line 233
    .local v5, "missedCallCount":I
    if-eqz v1, :cond_1

    .line 234
    iget v5, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    .line 237
    :cond_1
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unreadMessageCount =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", missedCallCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-nez v3, :cond_5

    .line 242
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 243
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :cond_2
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_3

    .line 246
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :cond_3
    :goto_1
    return-void

    .end local v5    # "missedCallCount":I
    .end local v6    # "unreadMessageCount":I
    :cond_4
    move v3, v8

    .line 219
    goto :goto_0

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateNotiArea() can not found setting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 251
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v5    # "missedCallCount":I
    .restart local v6    # "unreadMessageCount":I
    :cond_5
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    .line 252
    if-gtz v6, :cond_7

    .line 253
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :goto_2
    if-le v6, v14, :cond_9

    .line 268
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    const-string v10, "%d+"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 275
    if-gtz v5, :cond_a

    .line 276
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :goto_4
    if-le v5, v14, :cond_c

    .line 291
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    const-string v10, "%d+"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 254
    :cond_7
    if-ne v6, v7, :cond_8

    .line 255
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$string;->clearcover_1_unread_message:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 260
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_8
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$string;->clearcover_n_unread_messages:I

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 270
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_9
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    const-string v10, "%d"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 277
    :cond_a
    if-ne v5, v7, :cond_b

    .line 278
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$string;->clearcover_1_missed_call:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 283
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_b
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$string;->clearcover_n_missed_calls:I

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 293
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_c
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    const-string v10, "%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected getUpdateMonitorCallback()Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-object v0
.end method

.method protected onCoverEvent()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->isCoverOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->gotoOpenPage()V

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->setBackgroundColor()V

    .line 338
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->updateMissedEvent()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onFinishInflate()V

    .line 156
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->setVisibility(I)V

    .line 159
    sget v0, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    .line 160
    sget v0, Lcom/sec/android/sviewcover/R$id;->dual_clock_time_and_date:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 168
    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 169
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "volume"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 173
    :cond_2
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_missed_call_count:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_unread_message_count:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 180
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->setClockVisibility()V

    .line 184
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->updateMissedEvent()V

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->requestRemoteViews()V

    .line 186
    return-void
.end method

.method protected setBackgroundColor()V
    .locals 5

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->isCoverOpen()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 358
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    const-string v3, "setBackgroundColor() return : cover open"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mBackgroundView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 363
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    const-string v3, "setBackgroundColor() return : mBackgroundView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v1

    .line 368
    .local v1, "currentCoverColor":I
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "s_view_cover_skin_color"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "backgroundColor":I
    packed-switch v1, :pswitch_data_0

    .line 389
    :pswitch_0
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_SILVER:I

    .line 393
    :goto_1
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBackgroundColor() currentCoverColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", backgroundColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 374
    :pswitch_1
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_SILVER:I

    .line 375
    goto :goto_1

    .line 377
    :pswitch_2
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_BLACK:I

    .line 378
    goto :goto_1

    .line 380
    :pswitch_3
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_BLUE:I

    .line 381
    goto :goto_1

    .line 383
    :pswitch_4
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_GREEN:I

    .line 384
    goto :goto_1

    .line 386
    :pswitch_5
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_GOLD:I

    .line 387
    goto :goto_1

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
