.class public Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;
.super Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
.source "SViewCoverZeroUnlockArea.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$3;,
        Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$LaunchTransitionCallback;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SViewCoverZeroUnlockArea"


# instance fields
.field private final MSG_THEME_UPDATE:I

.field private mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

.field private mChargingTextView:Landroid/widget/TextView;

.field private mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

.field private mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

.field private mContext:Landroid/content/Context;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

.field private mPreviewRootView:Landroid/view/ViewGroup;

.field private mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 101
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 66
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    .line 70
    const/16 v10, 0x3e8

    iput v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->MSG_THEME_UPDATE:I

    .line 72
    new-instance v10, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$1;

    invoke-direct {v10, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)V

    iput-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateHandler:Landroid/os/Handler;

    .line 86
    new-instance v10, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$2;

    invoke-direct {v10, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)V

    iput-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 102
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    .line 104
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    const-string v11, "keyguard"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/KeyguardManager;

    iput-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 107
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    .local v8, "screenWidth":I
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 110
    .local v7, "screenHeight":I
    if-ge v8, v7, :cond_0

    move v9, v8

    .line 111
    .local v9, "smallestWidth":I
    :goto_0
    int-to-float v10, v9

    const/high16 v11, 0x44870000    # 1080.0f

    div-float v6, v10, v11

    .line 113
    .local v6, "ratio":F
    const-string v10, "SViewCoverZeroUnlockArea"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "screenWidth : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v10, "SViewCoverZeroUnlockArea"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "screenHeight : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v10, "SViewCoverZeroUnlockArea"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ratio : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_first_border:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    float-to-int v0, v10

    .line 119
    .local v0, "circleUnlockMaxWidth":I
    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v10, v6

    float-to-int v5, v10

    .line 120
    .local v5, "outerStrokeWidth":I
    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v10, v6

    float-to-int v4, v10

    .line 122
    .local v4, "innerStrokeWidth":I
    new-instance v10, Lcom/samsung/android/visualeffect/EffectView;

    iget-object v11, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    .line 123
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/visualeffect/EffectView;->setEffect(I)V

    .line 125
    new-instance v1, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v1}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 126
    .local v1, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 127
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v0, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->circleUnlockMaxWidth:I

    .line 128
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v5, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->outerStrokeWidth:I

    .line 129
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v4, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->innerStrokeWidth:I

    .line 130
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    iput-object v11, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->lockSequenceImageId:[I

    .line 134
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    sget v11, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_arrow:I

    iput v11, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowId:I

    .line 135
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v10, v1}, Lcom/samsung/android/visualeffect/EffectView;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 138
    const-string v10, "SViewCoverZeroUnlockArea"

    const-string v11, "KeyguardEffectViewNone : setOuterCircleType"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v3, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v10, "setOuterCircleType"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v11, 0x63

    invoke-virtual {v10, v11, v3}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 143
    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_shortcut_min_width_offset:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v10}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setMinWidthOffset(I)V

    .line 145
    sget v10, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_arrow:I

    invoke-virtual {p0, v10}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setArrowForButton(I)V

    .line 146
    return-void

    .end local v0    # "circleUnlockMaxWidth":I
    .end local v1    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    .end local v3    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4    # "innerStrokeWidth":I
    .end local v5    # "outerStrokeWidth":I
    .end local v6    # "ratio":F
    .end local v9    # "smallestWidth":I
    :cond_0
    move v9, v7

    .line 110
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->refreshChildView()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private refreshChildView()V
    .locals 3

    .prologue
    .line 409
    const-string v0, "SViewCoverZeroUnlockArea"

    const-string v1, "refreshChildView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$color;->sview_cover_theme_charging_text_font_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    :cond_2
    return-void
.end method

.method private updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V
    .locals 3
    .param p1, "isPressedButton"    # Z
    .param p2, "container"    # Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    .prologue
    .line 197
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 200
    .local v0, "alpha":F
    :goto_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$3;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverAbstractUnlockArea$Container:[I

    invoke-virtual {p2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    :cond_0
    :goto_1
    return-void

    .line 197
    .end local v0    # "alpha":F
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 202
    .restart local v0    # "alpha":F
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAlpha(F)V

    goto :goto_1

    .line 208
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAlpha(F)V

    goto :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleHide()V
    .locals 1

    .prologue
    .line 189
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->resetPreviewView()V

    .line 194
    :cond_0
    return-void
.end method

.method public handleShow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setVisibility(I)V

    .line 183
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V

    .line 184
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V

    .line 185
    return-void
.end method

.method public handleUnlock(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;)V
    .locals 2
    .param p1, "moveToPage"    # Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 159
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 162
    :cond_0
    return-void
.end method

.method public initMultiTouched()V
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V

    .line 276
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 330
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->onAttachedToWindow()V

    .line 331
    const-string v0, "SViewCoverZeroUnlockArea"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 334
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->onDetachedFromWindow()V

    .line 340
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cleanUp()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cleanUp()V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 349
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    sget v0, Lcom/sec/android/sviewcover/R$id;->sec_cover_camera_circle:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .line 150
    sget v0, Lcom/sec/android/sviewcover/R$id;->sec_cover_contact_circle:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .line 152
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 153
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 154
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->onWindowFocusChanged(Z)V

    .line 355
    if-nez p1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->reset()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->reset()V

    .line 364
    :cond_1
    return-void
.end method

.method public resetPreviewView()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->resetPreviewView()V

    .line 405
    :cond_0
    return-void
.end method

.method public setArrowForButton(I)V
    .locals 2
    .param p1, "arrowForButtonId"    # I

    .prologue
    .line 322
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 323
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 324
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowForButtonId:I

    .line 325
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 326
    return-void
.end method

.method public setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
    .locals 6
    .param p1, "container"    # Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
    .param p2, "visibility"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    sget-object v3, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$3;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverAbstractUnlockArea$Container:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 282
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "set_shortcuts_mode"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 285
    .local v0, "cameraEnabled":Z
    :goto_1
    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v2, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "cameraEnabled":Z
    :cond_1
    move v0, v2

    .line 283
    goto :goto_1

    .line 288
    .restart local v0    # "cameraEnabled":Z
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v2, v5}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    goto :goto_0

    .line 294
    .end local v0    # "cameraEnabled":Z
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v3, :cond_0

    .line 295
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    .local v1, "isSecure":Z
    :goto_2
    if-nez v1, :cond_4

    .line 298
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v2, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "isSecure":Z
    :cond_3
    move v1, v2

    .line 295
    goto :goto_2

    .line 300
    .restart local v1    # "isSecure":Z
    :cond_4
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v2, v5}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 7
    .param p1, "view"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 220
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_effect_view_container:I

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 223
    .local v0, "effectViewContainer":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 225
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    sget v2, Lcom/sec/android/sviewcover/R$id;->battery_charging:I

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    .line 233
    .end local v0    # "effectViewContainer":Landroid/view/ViewGroup;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 235
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setEffectView(Lcom/samsung/android/visualeffect/EffectView;)V

    .line 236
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setEffectView(Lcom/samsung/android/visualeffect/EffectView;)V

    .line 242
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 244
    :cond_3
    return-void
.end method

.method public setMinWidthOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 315
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 316
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 317
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->minWidthOffset:I

    .line 318
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 319
    return-void
.end method

.method public setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
    .locals 0
    .param p1, "container"    # Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
    .param p2, "visibility"    # I

    .prologue
    .line 312
    return-void
.end method

.method public setPageNavigationVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 271
    return-void
.end method

.method public setPagerNavigation(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;)V
    .locals 0
    .param p1, "sViewCoverPagerNavigation"    # Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    .prologue
    .line 167
    return-void
.end method

.method public setPreviewRootView(Landroid/widget/FrameLayout;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/FrameLayout;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    .line 250
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportPreviewShortcut()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    .line 252
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 253
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    const-string v0, "SViewCoverZeroUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviewContainer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewContainer(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewAnimationController(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewContainer(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewAnimationController(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;)V

    .line 266
    :cond_1
    return-void
.end method

.method public setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V
    .locals 1
    .param p1, "type"    # Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V

    .line 397
    :cond_0
    return-void
.end method

.method public startPreviewAnimation(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v0, :cond_0

    .line 386
    const-string v0, "SViewCoverZeroUnlockArea"

    const-string v1, "startPreviewAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->startAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    .line 389
    :cond_0
    return-void
.end method

.method public updateNotiArea(II)V
    .locals 0
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    .line 177
    return-void
.end method

.method public updateNotiPageButton(II)V
    .locals 0
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    .line 172
    return-void
.end method
