.class public Lcom/android/keyguard/sec/SecAttributionInfoView;
.super Landroid/widget/LinearLayout;
.source "SecAttributionInfoView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final KEY_LIVEWALLPAPER_ATTRIBUTION_URL:Ljava/lang/String; = "just_lock_yahoo_livewallpaper_attribution_url"

.field private static final KEY_LIVEWALLPAPER_LOCATION_URL:Ljava/lang/String; = "just_lock_yahoo_livewallpaper_location_url"

.field private static final KEY_WALLPAPER_INFO_LANDING_PAGE_URL:Ljava/lang/String; = "keyguard_wu_wallpaper_info_landing_page_url"

.field private static final KEY_WALLPAPER_INFO_LOGO_IMAGE_PATH:Ljava/lang/String; = "keyguard_wu_wallpaper_info_logo_image_path"

.field private static final KEY_WALLPAPER_INFO_PHOTOGRAPHER:Ljava/lang/String; = "keyguard_wu_wallpaper_info_cp_name"

.field private static final KEY_WALLPAPER_INFO_TITLE:Ljava/lang/String; = "keyguard_wu_wallpaper_info_title"

.field private static final TAG:Ljava/lang/String; = "SecAttributionInfoView"

.field private static mCocktailBarSize:I


# instance fields
.field private final MSG_DELAYED_START_ACTIVITY:I

.field private final START_ACTIVITY_DELAY:I

.field private isSupportMobileKeyboard:Z

.field private locationUrl:Ljava/lang/String;

.field private mAttributionRootView:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentMobileKeyboard:I

.field private mCurrentOrientation:I

.field mDelayedStartActivityHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mLandingPageUrl:Ljava/lang/String;

.field private mLiveviewAttributionView:Landroid/view/View;

.field private mLiveviewLocationView:Landroid/view/View;

.field private mLiveviewRootView:Landroid/view/View;

.field private mLogoChangeHandler:Landroid/os/Handler;

.field private mLogoFileObserverRegistered:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mMobileKeyboard:Z

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPhotographer:Landroid/widget/TextView;

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCocktailBarSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    .line 84
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentOrientation:I

    .line 87
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->isSupportMobileKeyboard:Z

    .line 88
    iput v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentMobileKeyboard:I

    .line 89
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mMobileKeyboard:Z

    .line 91
    new-instance v2, Lcom/android/keyguard/sec/SecAttributionInfoView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$1;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    .line 101
    const/16 v2, 0x2711

    iput v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->MSG_DELAYED_START_ACTIVITY:I

    .line 102
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->START_ACTIVITY_DELAY:I

    .line 103
    new-instance v2, Lcom/android/keyguard/sec/SecAttributionInfoView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$2;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mDelayedStartActivityHandler:Landroid/os/Handler;

    .line 183
    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    .line 184
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 185
    .local v0, "winMng":Landroid/view/WindowManager;
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mDisplay:Landroid/view/Display;

    .line 188
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->isSupportMobileKeyboard:Z

    .line 189
    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->isSupportMobileKeyboard:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mMobileKeyboard:Z

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecAttributionInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecAttributionInfoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateLogoImage(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecAttributionInfoView;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/os/Handler;
    .param p4, "x4"    # Ljava/lang/Runnable;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/SecAttributionInfoView;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecAttributionInfoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLandingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecAttributionInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateOrientation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecAttributionInfoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/SecAttributionInfoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/SecAttributionInfoView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->launchBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecAttributionInfoView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    return-object v0
.end method

.method private launchBrowser(Ljava/lang/String;)V
    .locals 1
    .param p1, "landingPageUrl"    # Ljava/lang/String;

    .prologue
    .line 553
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->launchLandingPage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerLogoImageFileObserver()V
    .locals 5

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 521
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    .line 523
    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/SecAttributionInfoView$9;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecAttributionInfoView$9;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    .line 531
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "worker"    # Landroid/os/Handler;
    .param p4, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    .line 119
    new-instance v4, Landroid/os/UserHandle;

    const/4 v0, -0x2

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 120
    .local v4, "user":Landroid/os/UserHandle;
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 122
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v6

    .line 124
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "SecAttributionInfoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find the component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/SecAttributionInfoView$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SecAttributionInfoView$3;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private unregisterLogoImageFileObserver()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    goto :goto_0
.end method

.method private updateAttributionInfo()V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    .line 386
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateAttributionInfoView()V

    .line 387
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateTitle()V

    .line 388
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updatePhotographer()V

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateLogoImage(Z)V

    .line 390
    return-void
.end method

.method private updateAttributionInfoView()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 393
    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->shoudNotDisplayView()Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v4

    .line 398
    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 399
    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 400
    const/4 v0, 0x0

    .line 406
    :cond_2
    :goto_2
    if-nez v0, :cond_6

    .line 407
    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 408
    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_4
    move v0, v5

    .line 396
    goto :goto_1

    .line 402
    .restart local v0    # "enabled":Z
    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v0

    goto :goto_2

    .line 414
    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "keyguard_wu_wallpaper_info_title"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "imageTitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "logoFilePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "keyguard_wu_wallpaper_info_cp_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "imageCPName":Ljava/lang/String;
    const-string v6, "SecAttributionInfoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imageTitle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", logoFilePath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", imageCPName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 428
    .local v4, "noInformationToShow":Z
    :cond_9
    :goto_3
    if-eqz v4, :cond_b

    .line 429
    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 430
    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .end local v4    # "noInformationToShow":Z
    :cond_a
    move v4, v5

    .line 424
    goto :goto_3

    .line 432
    .restart local v4    # "noInformationToShow":Z
    :cond_b
    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_c

    .line 433
    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 435
    :cond_c
    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    new-instance v6, Lcom/android/keyguard/sec/SecAttributionInfoView$8;

    invoke-direct {v6, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$8;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private updateLiveviewViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 324
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->shoudNotDisplayView()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, 0x1

    .line 329
    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 330
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v0

    .line 332
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mMobileKeyboard:Z

    if-eqz v2, :cond_7

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 334
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 337
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_6
    move v0, v1

    .line 327
    goto :goto_1

    .line 344
    .restart local v0    # "enabled":Z
    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    .line 345
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 348
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/sec/SecAttributionInfoView$6;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$6;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    :cond_9
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/sec/SecAttributionInfoView$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$7;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateLogoImage(Z)V
    .locals 4
    .param p1, "updatedByFileChanged"    # Z

    .prologue
    .line 490
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "logoFilePath":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 497
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 499
    .local v1, "logoImageBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 500
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 504
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateAttributionInfoView()V

    goto :goto_0

    .line 509
    .end local v1    # "logoImageBitmap":Landroid/graphics/Bitmap;
    :cond_3
    if-nez p1, :cond_4

    .line 510
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->registerLogoImageFileObserver()V

    .line 512
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOrientation()V
    .locals 4

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 567
    .local v0, "ori":I
    iget v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentOrientation:I

    if-eq v0, v1, :cond_0

    .line 568
    const-string v1, "SecAttributionInfoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change orientation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iput v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentOrientation:I

    .line 570
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->adjustCocktailBarMargin()V

    goto :goto_0
.end method

.method private updatePhotographer()V
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_wu_wallpaper_info_cp_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "imageCPName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 471
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_wu_wallpaper_info_title"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "imageTitle":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected adjustCocktailBarMargin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 576
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 582
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 585
    .local v1, "layoutParamsLiveView":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 589
    iget v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 590
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 591
    sget v2, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 592
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 593
    sget v2, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 601
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 595
    :cond_2
    sget v2, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 596
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 597
    sget v2, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 598
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method public launchLandingPage(Ljava/lang/String;)V
    .locals 4
    .param p1, "landingPageUrl"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLandingPageUrl:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v1, Lcom/android/keyguard/sec/SecAttributionInfoView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$4;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    .line 176
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 209
    const-string v4, "SecAttributionInfoView"

    const-string v5, "onAttachedToWindow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 214
    .local v1, "inflator":Landroid/view/LayoutInflater;
    sget v4, Lcom/android/keyguard/R$layout;->sec_attribution_info_view:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 216
    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 219
    sget v4, Lcom/android/keyguard/R$id;->attribution_info_rootview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    .line 220
    sget v4, Lcom/android/keyguard/R$id;->attribution_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    .line 221
    sget v4, Lcom/android/keyguard/R$id;->attribution_photographer:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    .line 222
    sget v4, Lcom/android/keyguard/R$id;->attribution_logo:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    .line 224
    sget v4, Lcom/android/keyguard/R$id;->liveview_hidden_rootview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    .line 225
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_yahoo_livewallpaper_location_url"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    .line 227
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 228
    sget v4, Lcom/android/keyguard/R$id;->liveview_hidden_locationview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    .line 230
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_yahoo_livewallpaper_attribution_url"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "attributionUrl":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 233
    sget v4, Lcom/android/keyguard/R$id;->liveview_hidden_attributionview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    .line 235
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setRippleBackgroudcolor(Landroid/view/View;)V

    .line 236
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setRippleBackgroudcolor(Landroid/view/View;)V

    .line 237
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setRippleBackgroudcolor(Landroid/view/View;)V

    .line 239
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 240
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 241
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    :cond_4
    :goto_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/sec/SecAttributionInfoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->update()V

    .line 252
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_5

    .line 253
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setAttributionInfoView(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    .line 255
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 256
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v4, :cond_6

    .line 257
    new-instance v4, Lcom/android/keyguard/sec/SecAttributionInfoView$5;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/sec/SecAttributionInfoView$5;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 265
    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 267
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->enable()V

    .line 270
    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateOrientation()V

    .line 273
    :cond_8
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    goto/16 :goto_0

    .line 243
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 295
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 296
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    .line 297
    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentMobileKeyboard:I

    .line 298
    iget v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentMobileKeyboard:I

    if-ne v0, v2, :cond_1

    .line 299
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mMobileKeyboard:Z

    .line 303
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateLiveviewViews()V

    .line 305
    :cond_0
    return-void

    .line 301
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mMobileKeyboard:Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    const-string v0, "SecAttributionInfoView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setAttributionInfoView(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    .line 285
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 287
    iput-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 290
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 291
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 615
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 609
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 205
    :cond_2
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "securityContainer"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p2, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 310
    iput-object p2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 311
    return-void
.end method

.method setRippleBackgroudcolor(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 618
    if-nez p1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 622
    .local v0, "d":Landroid/graphics/drawable/RippleDrawable;
    if-eqz v0, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->dynamiclock_ripple_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public shoudNotDisplayView()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isMusicBackgroundSet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateLiveviewViews()V

    .line 318
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateAttributionInfo()V

    goto :goto_0
.end method
