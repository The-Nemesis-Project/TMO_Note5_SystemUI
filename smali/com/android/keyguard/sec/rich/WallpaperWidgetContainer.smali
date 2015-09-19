.class public Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidgetContainer.java"


# static fields
.field private static final COLLAPSED:I = 0x2

.field private static final EXPANDED:I = 0x0

.field private static final EXPANDING:I = 0x1

.field private static final INTENT_WALLPAPER_NEXT_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.next_wallpaper_changing"

.field private static final INTENT_WALLPAPER_PINUP_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.wallpaper_pinup"

.field private static final INTENT_WALLPAPER_UPDATE_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.wallpaper_changing"

.field private static final MORE_CLOSE_IMAGE:I

.field private static final MORE_OPEN_IMAGE:I

.field private static final MSG_COLLAPSED:I = 0x3ea

.field private static final MSG_EXPANDED:I = 0x3e9

.field private static final MSG_EXPANDING:I = 0x3e8

.field private static final MSG_NEXT:I = 0x3ec

.field private static final MSG_PINUP:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "WallpaperWidgetContainer"


# instance fields
.field private mBackgroundAnim:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

.field private mMoreButton:Landroid/widget/ImageView;

.field private mNextButton:Landroid/view/View;

.field private mPinButton:Landroid/widget/ImageView;

.field private mPinUpState:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mQueueImg:Landroid/view/View;

.field private mQueueLayout:Landroid/view/ViewGroup;

.field private mShouldShowAttributionInfoView:Z

.field private mState:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWidgetItems:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_more_close:I

    sput v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    .line 46
    sget v0, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_more_open:I

    sput v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->MORE_OPEN_IMAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    .line 62
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mShouldShowAttributionInfoView:Z

    .line 251
    new-instance v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$3;-><init>(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 269
    new-instance v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;-><init>(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setVisibilityView(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->startBackgroundAnim(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->startRemoteAnimation(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setPinUpState(Z)V

    return-void
.end method

.method private calculateDstPosition(F)F
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 219
    iget v3, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownY:F

    sub-float v0, p1, v3

    .line 220
    .local v0, "dstPoint":F
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v1

    .line 222
    .local v1, "maxPoint":F
    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    move v1, v2

    .line 228
    .end local v1    # "maxPoint":F
    :cond_0
    :goto_0
    return v1

    .line 224
    .restart local v1    # "maxPoint":F
    :cond_1
    cmpl-float v2, v0, v1

    if-gtz v2, :cond_0

    move v1, v0

    .line 228
    goto :goto_0
.end method

.method private createMoreButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 108
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    .line 109
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 112
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 114
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method private createWidgetItem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->createMoreButton()V

    .line 120
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$layout;->sec_wallpaper_widget_background:I

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 121
    .local v0, "widgetBackground":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 123
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$layout;->sec_wallpaper_widget_remote:I

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 124
    .local v1, "widgetRemote":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->pin_button:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    .line 127
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->next_button:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    .line 128
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->menu_queue:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    .line 129
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->queue_layout:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueLayout:Landroid/view/ViewGroup;

    .line 131
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$1;-><init>(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$2;-><init>(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setPinUpState(Z)V

    .line 147
    return-void
.end method

.method private getMaxPosition()F
    .locals 4

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->getMoreImageSize()I

    move-result v1

    .line 214
    .local v1, "viewHeight":I
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->wallpaper_widget_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 215
    .local v0, "containerHeight":I
    sub-int v2, v0, v1

    int-to-float v2, v2

    return v2
.end method

.method private getMoreImageSize()I
    .locals 4

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 209
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    return v1
.end method

.method private relayoutParam(Z)V
    .locals 4
    .param p1, "expanding"    # Z

    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 363
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->wallpaper_widget_width_include_ripple:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 364
    .local v1, "rippleWidth":I
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 366
    if-eqz p1, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->wallpaper_widget_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 371
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->requestLayout()V

    .line 374
    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->getMoreImageSize()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private setBackgroundVisibility(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 350
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v4, Lcom/android/keyguard/R$id;->wallpaper_widget_background:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 351
    .local v0, "backgroundView":Landroid/widget/FrameLayout;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 353
    if-nez p1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 351
    goto :goto_0

    .line 355
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setMoreButtonVisibility(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->MORE_OPEN_IMAGE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    :goto_1
    return-void

    .line 336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private setPinUpState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 319
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_pinned_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setWidgetEnabled(Z)V

    .line 326
    :cond_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_pinup_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 324
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setRemoteButtonVisibility(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 345
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    return-void

    :cond_0
    move v0, v2

    .line 345
    goto :goto_0

    :cond_1
    move v1, v2

    .line 346
    goto :goto_1
.end method

.method private setVisibilityView(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 329
    iput p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    .line 330
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setMoreButtonVisibility(I)V

    .line 331
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setRemoteButtonVisibility(I)V

    .line 332
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->relayoutParam(Z)V

    .line 333
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSmooth(ILandroid/view/View;)V
    .locals 4
    .param p1, "expanding"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    .line 421
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 422
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .line 424
    .local v1, "fadeAnim":Landroid/animation/ObjectAnimator;
    if-nez p1, :cond_0

    .line 425
    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 430
    :goto_0
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 431
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 432
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 433
    return-void

    .line 427
    :cond_0
    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_0

    .line 425
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 427
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startBackgroundAnim(I)V
    .locals 11
    .param p1, "state"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 377
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    .line 378
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 380
    :cond_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    .line 381
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v5, Lcom/android/keyguard/R$id;->wallpaper_widget_background:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 382
    .local v1, "backgroundView":Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/view/View;->setPivotY(F)V

    .line 383
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 385
    if-ne p1, v7, :cond_1

    .line 386
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setBackgroundVisibility(I)V

    .line 387
    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleY(F)V

    .line 388
    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v6, v5, v10

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 389
    .local v3, "visibilityAnim":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    const-string v5, "alpha"

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 390
    .local v2, "blinkAnim":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v4}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 391
    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 392
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 393
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 403
    .end local v2    # "blinkAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 404
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 405
    return-void

    .line 395
    .end local v3    # "visibilityAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 396
    const-string v4, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 397
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    const-string v4, "scaleY"

    new-array v5, v7, [F

    const v6, 0x3f333333    # 0.7f

    aput v6, v5, v10

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 398
    .restart local v3    # "visibilityAnim":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v4}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    new-instance v4, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v4}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 400
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 389
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 396
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startRemoteAnimation(I)V
    .locals 2
    .param p1, "expanding"    # I

    .prologue
    .line 408
    iget v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    if-ne v0, p1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setVisibilityView(I)V

    .line 412
    if-nez p1, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->showSmooth(ILandroid/view/View;)V

    .line 414
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->showSmooth(ILandroid/view/View;)V

    goto :goto_0

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0
.end method


# virtual methods
.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    .line 91
    sget v0, Lcom/android/keyguard/R$id;->keyguard_widget_grid:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->setContainer(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->shouldShowAttributionInfoView()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mShouldShowAttributionInfoView:Z

    .line 99
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mShouldShowAttributionInfoView:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "WallpaperWidgetContainer"

    const-string v1, "mShouldShowAttributionInfoView() add widget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->createWidgetItem()V

    .line 102
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setVisibilityView(I)V

    .line 103
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setBackgroundVisibility(I)V

    .line 105
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 243
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 249
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 234
    const-string v0, "WallpaperWidgetContainer"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->init()V

    .line 237
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x3ea

    .line 151
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v5, :cond_0

    .line 152
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v10}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 153
    :cond_0
    iget-boolean v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mShouldShowAttributionInfoView:Z

    if-nez v5, :cond_2

    .line 198
    :cond_1
    :goto_0
    return v10

    .line 156
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 158
    .local v0, "action":I
    iget v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    if-eqz v5, :cond_1

    .line 159
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownX:F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownY:F

    goto :goto_0

    .line 165
    :pswitch_1
    iget v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 166
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 169
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->calculateDstPosition(F)F

    move-result v2

    .line 172
    .local v2, "dst":F
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    div-float v5, v2, v5

    sub-float v1, v11, v5

    .line 174
    .local v1, "alpha":F
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 175
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0

    .line 178
    .end local v1    # "alpha":F
    .end local v2    # "dst":F
    :pswitch_2
    iget v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownX:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_1

    iget v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownY:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v4

    .line 180
    .local v4, "maxPoint":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownY:F

    sub-float v3, v5, v6

    .line 182
    .local v3, "dstPoint":F
    cmpl-float v5, v3, v4

    if-lez v5, :cond_5

    .line 183
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 185
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 186
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setY(F)V

    .line 187
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 192
    .end local v3    # "dstPoint":F
    .end local v4    # "maxPoint":F
    :pswitch_3
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onOutsideTouch()V
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    :cond_0
    return-void
.end method

.method public setWidgetEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .end local p1    # "enabled":Z
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 313
    :cond_1
    return-void
.end method
