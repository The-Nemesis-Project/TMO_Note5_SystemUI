.class public Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;
.super Lcom/sec/android/cover/sviewcover/SViewCoverActivity;
.source "SViewCoverMissedEventActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$4;,
        Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverMissedEventActivity"


# instance fields
.field private mCloseButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

.field private mMissedEventView:Landroid/widget/RelativeLayout;

.field private mNotiList:Landroid/widget/ListView;

.field private mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

.field private mRootBackGroundView:Landroid/widget/ImageView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mCloseButton:Landroid/widget/ImageView;

    .line 44
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    .line 49
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Lcom/sec/android/cover/manager/CoverPowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;
    .param p1, "x1"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->showCoverOpenPopup(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Lcom/sec/android/cover/manager/CoverMissedEventManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    return-object v0
.end method

.method private setBackGroundImage()V
    .locals 4

    .prologue
    .line 239
    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v1

    .line 240
    .local v1, "wallpaperManager":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    const/4 v0, 0x0

    .line 241
    .local v0, "wallpaper":I
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v0

    .line 243
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->getWallpaperDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    return-void
.end method

.method private showCoverOpenPopup(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V
    .locals 4
    .param p1, "type"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;

    .prologue
    .line 144
    const-string v1, "SViewCoverMissedEventActivity"

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

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "popupContentId":I
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$4;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverMissedEventActivity$PopupType:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_0
    if-nez v0, :cond_0

    .line 167
    :goto_1
    return-void

    .line 149
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_secured_popup:I

    .line 150
    goto :goto_0

    .line 152
    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_message:I

    .line 153
    goto :goto_0

    .line 155
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_call:I

    .line 156
    goto :goto_0

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected coverCloseEvent()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->coverCloseEvent()V

    .line 192
    return-void
.end method

.method protected coverOpenEvent()V
    .locals 5

    .prologue
    .line 196
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v2

    .line 198
    .local v2, "isCoverPopupShowing":Z
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->hasWindowFocus()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v3}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.skt.prod.dialer"

    const-string v4, "com.skt.prod.dialer.activities.main.MainActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    const-string v3, "INIT_MAIN_TYPE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string v3, "GOTO_ACTIVITY"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->finish()V

    .line 236
    return-void

    .line 210
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, "SViewCoverMissedEventActivity"

    const-string v4, "ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v1    # "intent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, "SViewCoverMissedEventActivity"

    const-string v4, "ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    const-string v3, "com.android.mms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v3, "fromScover"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 230
    :catch_2
    move-exception v0

    .line 231
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, "SViewCoverMissedEventActivity"

    const-string v4, "ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 66
    sget v0, Lcom/sec/android/sviewcover/R$id;->noti_item_list:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mNotiList:Landroid/widget/ListView;

    .line 67
    sget v0, Lcom/sec/android/sviewcover/R$id;->missed_event_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventView:Landroid/widget/RelativeLayout;

    .line 68
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missedevent_root_pattern:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    .line 71
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    .line 73
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mNotiList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventAdapter()Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mNotiList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_event_close_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mCloseButton:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mCloseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-static {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 141
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_missed_event_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->setContentView(I)V

    .line 61
    iput-object p0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->init()V

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 180
    invoke-static {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 181
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onDestroy()V

    .line 182
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onPause()V

    .line 187
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->setBackGroundImage()V

    .line 172
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->finish()V

    .line 176
    :cond_0
    return-void
.end method
