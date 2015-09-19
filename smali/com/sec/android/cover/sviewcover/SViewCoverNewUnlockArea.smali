.class public Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
.super Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
.source "SViewCoverNewUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$16;,
        Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SViewCoverNewUnlockArea"


# instance fields
.field private final IN_ANIMATION_DURATION:I

.field private final OUT_ANIMATION_DURATION:I

.field private circleAnimationMax:F

.field private circleAnimationMin:F

.field private dragAnimationValue:F

.field private fillAnimationValueMax:F

.field private mArrowCamera:Landroid/widget/ImageView;

.field private mArrowNoti:Landroid/widget/ImageView;

.field private mArrowSetting:Landroid/widget/ImageView;

.field private mCameraBgNormal:Landroid/widget/ImageView;

.field private mCameraBgPressed:Landroid/widget/ImageView;

.field private mCameraButton:Landroid/widget/ImageView;

.field private mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

.field private mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mCameraContainer:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDistance:D

.field private mIsFirstNoti:Z

.field private mIsMultiTouched:Z

.field private mNotiBgNormal:Landroid/widget/ImageView;

.field private mNotiBgPressed:Landroid/widget/ImageView;

.field private mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

.field private mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mNotiContainer:Landroid/widget/RelativeLayout;

.field private mNotiMultiContainer:Landroid/widget/LinearLayout;

.field private mNotiMultiMissedCallCount:Landroid/widget/TextView;

.field private mNotiMultiMissedCallImage:Landroid/widget/ImageView;

.field private mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

.field private mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

.field private mNotiSingleContainer:Landroid/widget/LinearLayout;

.field private mNotiSingleEventCount:Landroid/widget/TextView;

.field private mNotiSingleEventImage:Landroid/widget/ImageView;

.field private mOnHoverListenr:Landroid/view/View$OnHoverListener;

.field private mRatio:F

.field private mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

.field private mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mSecondBorder:D

.field private mSettingBgNormal:Landroid/widget/ImageView;

.field private mSettingBgPressed:Landroid/widget/ImageView;

.field private mSettingButton:Landroid/widget/ImageView;

.field private mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

.field private mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mSettingContainer:Landroid/widget/RelativeLayout;

.field private mShortcutStartX:F

.field private mShortcutStartY:F

.field private mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

.field private mTouchedShortcut:Ljava/lang/String;

.field private mUnlockLayout:Landroid/view/View;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private strokeAnimationValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    .line 106
    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    .line 107
    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    .line 109
    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMin:F

    .line 111
    const/16 v0, 0x29a

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->IN_ANIMATION_DURATION:I

    .line 112
    const/16 v0, 0x14d

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->OUT_ANIMATION_DURATION:I

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    .line 115
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 116
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 117
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 127
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 129
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 545
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$6;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$6;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mOnHoverListenr:Landroid/view/View$OnHoverListener;

    .line 144
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    .line 147
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setupStylizedClockStyle()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;
    .param p3, "x3"    # [Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->resetCircleAnimator()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAllAnimator()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgNormal:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    .param p2, "x2"    # F
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setCameraIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaExceptNotiButtons(F)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isTalkBackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMin:F

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaAndVisibility(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMax:F

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    return v0
.end method

.method static synthetic access$4102(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->fillAnimationValueMax:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$802(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;D)D
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # D

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cancelAllAnimator()V
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1139
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1140
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1141
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1142
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1143
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1144
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 1150
    :cond_0
    return-void
.end method

.method private closeCircleEffect(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "outAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1096
    if-nez p1, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1100
    :cond_0
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMax:F

    .line 1101
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->fillAnimationValueMax:F

    .line 1102
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private hideNotiPageButton()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 770
    :cond_0
    return-void
.end method

.method private hideSettingPageButton()V
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 783
    :cond_0
    return-void
.end method

.method private initCircleEffect()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    .line 908
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 909
    .local v7, "dm":Landroid/util/DisplayMetrics;
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 910
    .local v10, "screenWidth":I
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 912
    .local v9, "screenHeight":I
    if-ge v10, v9, :cond_3

    move v11, v10

    .line 913
    .local v11, "smallestWidth":I
    :goto_0
    int-to-float v0, v11

    const/high16 v1, 0x44870000    # 1080.0f

    div-float v8, v0, v1

    .line 915
    .local v8, "ratio":F
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v8

    float-to-int v4, v0

    .line 916
    .local v4, "outerStrokeWidth":I
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v8

    float-to-int v5, v0

    .line 918
    .local v5, "innerStrokeWidth":I
    iget-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v12

    double-to-int v2, v0

    .line 919
    .local v2, "circleMaxWidth":I
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_circle_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sub-int v3, v0, v5

    .line 923
    .local v3, "circleMinWidth":I
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_circle_camera_point_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 926
    .local v6, "pointX":I
    const-string v0, "SViewCoverNewUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "center is "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", maxwidth : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ",  minWidth : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 931
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 933
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    .line 936
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 947
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 950
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAllAnimator()V

    .line 951
    return-void

    .end local v2    # "circleMaxWidth":I
    .end local v3    # "circleMinWidth":I
    .end local v4    # "outerStrokeWidth":I
    .end local v5    # "innerStrokeWidth":I
    .end local v6    # "pointX":I
    .end local v8    # "ratio":F
    .end local v11    # "smallestWidth":I
    :cond_3
    move v11, v9

    .line 912
    goto/16 :goto_0
.end method

.method private isGuestMode()Z
    .locals 3

    .prologue
    .line 755
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 756
    const-string v0, "SViewCoverNewUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityManager.getCurrentUser() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRTL()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1383
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 1384
    .local v0, "value":B
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 1388
    :cond_1
    return v1
.end method

.method private isTalkBackEnabled()Z
    .locals 3

    .prologue
    .line 1329
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1332
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    .line 1337
    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private varargs playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    .locals 8
    .param p1, "isPlay"    # Z
    .param p2, "side"    # Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;
    .param p3, "otherViews"    # [Landroid/view/View;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    .line 820
    if-eqz p3, :cond_2

    .line 821
    move-object v0, p3

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 822
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 823
    if-ne p1, v7, :cond_1

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 821
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 823
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 828
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    sget-object v4, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    if-ne p2, v4, :cond_5

    .line 829
    if-ne p1, v7, :cond_4

    move v4, v5

    :goto_2
    invoke-direct {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaRightSideButtons(F)V

    .line 837
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v4, v6

    .line 829
    goto :goto_2

    .line 830
    :cond_5
    sget-object v4, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    if-ne p2, v4, :cond_7

    .line 831
    if-ne p1, v7, :cond_6

    :goto_4
    invoke-direct {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaLeftSideButtons(F)V

    goto :goto_3

    :cond_6
    move v5, v6

    goto :goto_4

    .line 832
    :cond_7
    sget-object v4, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Up:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    if-ne p2, v4, :cond_3

    .line 833
    if-ne p1, v7, :cond_8

    :goto_5
    invoke-direct {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaExceptNotiButtons(F)V

    goto :goto_3

    :cond_8
    move v5, v6

    goto :goto_5
.end method

.method private resetCircleAnimator()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x29a

    const-wide/16 v4, 0x14d

    const-wide/16 v2, 0x0

    .line 1106
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1108
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1109
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1111
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1112
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1113
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1114
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1116
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1117
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1118
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1119
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1121
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1122
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1123
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1124
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1126
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1127
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1128
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1129
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1131
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1132
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1133
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1134
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1135
    return-void
.end method

.method private setAllAnimator()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 955
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 956
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$7;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$7;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 965
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 966
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$8;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$8;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 975
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 976
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$9;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$9;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 986
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 987
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$10;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 998
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$11;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$11;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1017
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 1018
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$12;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$12;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1028
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$13;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$13;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1047
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 1048
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$14;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$14;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1059
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$15;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$15;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1077
    return-void

    .line 955
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 965
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 975
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 986
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1017
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1047
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setAlphaAndVisibility(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    const/16 v0, 0x8

    .line 1153
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_2

    .line 1154
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1155
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    :cond_1
    :goto_0
    return-void

    .line 1158
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1159
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setAlphaExceptNotiButtons(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 860
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 867
    :cond_1
    return-void
.end method

.method private setAlphaLeftSideButtons(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 840
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 847
    :cond_1
    return-void
.end method

.method private setAlphaRightSideButtons(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 850
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 857
    :cond_1
    return-void
.end method

.method private setCameraContainerVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 881
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 882
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "set_shortcuts_mode"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 884
    .local v0, "cameraEnabled":Z
    :cond_0
    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 885
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 890
    .end local v0    # "cameraEnabled":Z
    :cond_1
    :goto_0
    return-void

    .line 887
    .restart local v0    # "cameraEnabled":Z
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCameraIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 538
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v0

    .line 539
    .local v0, "scm":Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isAnalogClock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setNotiContainerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 893
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 896
    :cond_0
    return-void
.end method

.method private setSettingContainerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 875
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 878
    :cond_0
    return-void
.end method

.method private setupStylizedClockStyle()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1167
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v5

    .line 1168
    .local v5, "mgr":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v7, "music_controller"

    invoke-virtual {v5, v7}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v2

    .line 1169
    .local v2, "isMusicPlayerEnable":Z
    const-string v7, "voice_recorder"

    invoke-virtual {v5, v7}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v3

    .line 1170
    .local v3, "isVoiceMemoEnable":Z
    const-string v7, "SViewCoverNewUnlockArea"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupStylizedClockStyle() isMusicPlayerEnable ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    if-eqz v3, :cond_0

    .line 1172
    const/4 v2, 0x1

    .line 1175
    :cond_0
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    .line 1176
    if-nez v2, :cond_e

    .line 1177
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallImage:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 1178
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8, v10}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockSingleMissedEventsDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1182
    :cond_1
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8, v11}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockSingleMissedEventsDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1184
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockMissedEventsTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1186
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockMissedEventsTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1198
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_4

    .line 1199
    const/4 v6, 0x0

    .line 1200
    .local v6, "missedCallCount":I
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v1

    .line 1202
    .local v1, "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v7, "missed_call"

    invoke-virtual {v1, v7}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v4

    .line 1204
    .local v4, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v4, :cond_3

    .line 1205
    iget-boolean v7, v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v7, :cond_3

    .line 1206
    iget v6, v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    .line 1209
    :cond_3
    const-string v7, "SViewCoverNewUnlockArea"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupStylizedClockStyle -> missedCallCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    if-nez v2, :cond_10

    .line 1211
    if-lez v6, :cond_f

    .line 1212
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8, v10}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockSingleMissedEventsDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1221
    :goto_1
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockMissedEventsTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1235
    .end local v1    # "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    .end local v4    # "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    .end local v6    # "missedCallCount":I
    :cond_4
    :goto_2
    if-eqz v2, :cond_12

    .line 1236
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    .line 1237
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$drawable;->main_circle_ic_settings:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1241
    :cond_5
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_6

    .line 1242
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_camera:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1257
    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgNormal:Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    .line 1258
    if-eqz v2, :cond_14

    .line 1259
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_01_default:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1266
    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;

    if-eqz v7, :cond_8

    .line 1267
    if-eqz v2, :cond_15

    .line 1268
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_01_default:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1275
    :cond_8
    :goto_5
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    .line 1276
    if-eqz v2, :cond_16

    .line 1277
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_01_default:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1284
    :cond_9
    :goto_6
    sget v7, Lcom/sec/android/sviewcover/R$id;->s_view_cover_car_mode_layout:I

    invoke-virtual {p0, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1285
    .local v0, "Carmodetv":Landroid/widget/TextView;
    if-eqz v0, :cond_d

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_d

    .line 1286
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/CoverUtils;->isCarMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1287
    const-string v7, "SViewCoverNewUnlockArea"

    const-string v8, "Disable unlock area by CarMode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1289
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_a

    .line 1290
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1292
    :cond_a
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_b

    .line 1293
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1295
    :cond_b
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_c

    .line 1296
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1298
    :cond_c
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_d

    .line 1299
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1317
    :cond_d
    :goto_7
    return-void

    .line 1189
    .end local v0    # "Carmodetv":Landroid/widget/TextView;
    :cond_e
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallImage:Landroid/widget/ImageView;

    sget v8, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_missed_call_1:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1190
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

    sget v8, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_message_1:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1191
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$color;->sview_cover_wallpaper_title_text_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1193
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$color;->sview_cover_wallpaper_title_text_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1216
    .restart local v1    # "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    .restart local v4    # "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    .restart local v6    # "missedCallCount":I
    :cond_f
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8, v11}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockSingleMissedEventsDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1224
    :cond_10
    if-lez v6, :cond_11

    .line 1225
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    sget v8, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_missed_call_1:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1230
    :goto_8
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$color;->sview_cover_wallpaper_title_text_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 1227
    :cond_11
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    sget v8, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_message_1:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1246
    .end local v1    # "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    .end local v4    # "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    .end local v6    # "missedCallCount":I
    :cond_12
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_13

    .line 1247
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockSettingsDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    :cond_13
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_6

    .line 1252
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockCameraDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 1262
    :cond_14
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1271
    :cond_15
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 1280
    :cond_16
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 1302
    .restart local v0    # "Carmodetv":Landroid/widget/TextView;
    :cond_17
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1303
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_18

    .line 1304
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1306
    :cond_18
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_19

    .line 1307
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1309
    :cond_19
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1a

    .line 1310
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1312
    :cond_1a
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_d

    .line 1313
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_7
.end method

.method private showNotiPageButton()V
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 764
    :cond_0
    return-void
.end method

.method private showSettingPageButton()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 777
    :cond_0
    return-void
.end method

.method private updateDragCircle(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V
    .locals 1
    .param p1, "circleEffect"    # Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    .param p2, "ratio"    # F
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 1080
    if-nez p1, :cond_0

    .line 1093
    :goto_0
    return-void

    .line 1084
    :cond_0
    if-eqz p3, :cond_1

    .line 1085
    const v0, 0x3e99999a    # 0.3f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 1086
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;->dragAnimationUpdate(F)V

    goto :goto_0

    .line 1088
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 810
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setVisibility(I)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 817
    return-void
.end method

.method public handleHideIconsOnly()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 789
    :cond_0
    return-void
.end method

.method public handleShow()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 799
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 801
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    .line 803
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 804
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 805
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 806
    return-void
.end method

.method public handleShowIconsOnly()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 795
    :cond_0
    return-void
.end method

.method public handleUnlock(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;)V
    .locals 2
    .param p1, "moveToPage"    # Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 584
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 593
    :cond_1
    return-void
.end method

.method public initMultiTouched()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1321
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    .line 1322
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    .line 1323
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    .line 1324
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V

    .line 1325
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    invoke-direct {p0, v4, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 1326
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 569
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->onAttachedToWindow()V

    .line 571
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 572
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 576
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->onDetachedFromWindow()V

    .line 578
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 579
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 151
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_thrid_level_layout:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    .line 152
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_0
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_thrid_level_area:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    .line 158
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_single_event_image:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    .line 160
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_missed_call_image:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallImage:Landroid/widget/ImageView;

    .line 162
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_unread_message_image:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageImage:Landroid/widget/ImageView;

    .line 165
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_single_event_count:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    .line 167
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_missed_call_count:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    .line 169
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_unread_message_count:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    .line 172
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_area:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    .line 173
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_camera_area:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    .line 175
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_thrid_level_right:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    .line 177
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_thrid_level_left:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    .line 178
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_setting:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    .line 180
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_camera_bg_pressed:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    .line 182
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_noti_bg_pressed:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    .line 183
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_bg_pressed:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    .line 185
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_bg_normal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;

    .line 186
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_noti_bg_normal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;

    .line 187
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_camera_bg_normal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraBgNormal:Landroid/widget/ImageView;

    .line 189
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->initCircleEffect()V

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_camera:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    .local v0, "cameraNormal":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_camera_press:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 195
    .local v1, "cameraPessed":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_camera_button:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    .line 196
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mOnHoverListenr:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 197
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_single_event_layout:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    .line 292
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mOnHoverListenr:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 293
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$3;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_multi_event_layout:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    .line 377
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mOnHoverListenr:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 378
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 460
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_button:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    .line 461
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mOnHoverListenr:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 462
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 534
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setupStylizedClockStyle()V

    .line 535
    return-void
.end method

.method public setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
    .locals 2
    .param p1, "container"    # Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
    .param p2, "visibility"    # I

    .prologue
    .line 1342
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$16;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverAbstractUnlockArea$Container:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1357
    :goto_0
    return-void

    .line 1344
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setCameraContainerVisibility(I)V

    goto :goto_0

    .line 1348
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setSettingContainerVisibility(I)V

    goto :goto_0

    .line 1352
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setNotiContainerVisibility(I)V

    goto :goto_0

    .line 1342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 872
    return-void
.end method

.method public setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
    .locals 2
    .param p1, "container"    # Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
    .param p2, "visibility"    # I

    .prologue
    .line 1361
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$16;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverAbstractUnlockArea$Container:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1380
    :goto_0
    return-void

    .line 1363
    :pswitch_0
    if-nez p2, :cond_0

    .line 1364
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto :goto_0

    .line 1366
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideSettingPageButton()V

    goto :goto_0

    .line 1371
    :pswitch_1
    if-nez p2, :cond_1

    .line 1372
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showNotiPageButton()V

    goto :goto_0

    .line 1374
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    goto :goto_0

    .line 1361
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPageNavigationVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 900
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 904
    :cond_0
    return-void
.end method

.method public setPagerNavigation(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;)V
    .locals 0
    .param p1, "sViewCoverPagerNavigation"    # Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    .line 598
    return-void
.end method

.method protected startCameraActivity()V
    .locals 4

    .prologue
    .line 555
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 556
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 557
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 558
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v2, "covermode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 561
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverNewUnlockArea"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNotiArea(II)V
    .locals 10
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    .line 610
    const/4 v3, 0x1

    .line 611
    .local v3, "showContent":Z
    const/4 v2, 0x1

    .line 613
    .local v2, "enableNoti":Z
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_allow_private_notifications"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 616
    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    .line 623
    :goto_1
    if-lez p1, :cond_9

    if-lez p2, :cond_9

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_button_accessibiliy:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    .local v0, "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 627
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 629
    const/16 v4, 0x63

    if-le p1, v4, :cond_3

    .line 630
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 631
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 632
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x63

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    :goto_2
    const-string v4, " 99+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :goto_3
    const/16 v4, 0x63

    if-le p2, v4, :cond_6

    .line 647
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 648
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 649
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x63

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    :goto_4
    const-string v4, " 99+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :goto_5
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 665
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isGuestMode()Z

    move-result v4

    if-nez v4, :cond_8

    .line 666
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showNotiPageButton()V

    .line 735
    :goto_6
    if-nez v2, :cond_15

    .line 737
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 750
    :goto_7
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setupStylizedClockStyle()V

    .line 751
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->invalidate()V

    .line 752
    return-void

    .line 613
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 616
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 618
    :catch_0
    move-exception v1

    .line 619
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "SViewCoverNewUnlockArea"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNotiArea() can not found setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 634
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    const-string v5, "99+"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 638
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 639
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    :goto_8
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 641
    :cond_4
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 651
    :cond_5
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    const-string v5, "99+"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 655
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 656
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    :goto_9
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 658
    :cond_7
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 668
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 669
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto/16 :goto_6

    .line 672
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_button_accessibiliy:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 675
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 676
    if-gtz p1, :cond_a

    if-lez p2, :cond_14

    .line 677
    :cond_a
    if-lez p1, :cond_f

    .line 678
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_missed_call_1:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 680
    const/16 v4, 0x63

    if-le p1, v4, :cond_d

    .line 681
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 682
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x63

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    :goto_a
    const-string v4, " 99+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_b
    :goto_b
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isGuestMode()Z

    move-result v4

    if-nez v4, :cond_13

    .line 723
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showNotiPageButton()V

    goto/16 :goto_6

    .line 684
    :cond_c
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    const-string v5, "99+"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 689
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 690
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :goto_c
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 692
    :cond_e
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 698
    :cond_f
    if-lez p2, :cond_b

    .line 699
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventImage:Landroid/widget/ImageView;

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_message_1:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 701
    const/16 v4, 0x63

    if-le p2, v4, :cond_11

    .line 702
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 703
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x63

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    :goto_d
    const-string v4, " 99+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :goto_e
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 705
    :cond_10
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    const-string v5, "99+"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 710
    :cond_11
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 711
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    :goto_f
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 713
    :cond_12
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 726
    :cond_13
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 727
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto/16 :goto_6

    .line 730
    :cond_14
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 731
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto/16 :goto_6

    .line 738
    :cond_15
    if-nez v3, :cond_16

    .line 740
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 741
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 745
    :cond_16
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 746
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 747
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public updateNotiPageButton(II)V
    .locals 2
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    .line 602
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->updateNotiArea(II)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 606
    :cond_0
    return-void
.end method
