.class public Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;
.super Landroid/widget/FrameLayout;
.source "FloatingKeyButtonLayout.java"


# static fields
.field public static final POSITION_LEFT_BOTTOM:I = 0x1

.field public static final POSITION_LEFT_TOP:I = 0x0

.field public static final POSITION_RIGHT_BOTTOM:I = 0x3

.field public static final POSITION_RIGHT_TOP:I = 0x2


# instance fields
.field private mDistanceToMove:F

.field private mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

.field private mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private mFloatingTriggerButton:Landroid/widget/ImageView;

.field private mHideButton:Landroid/widget/ImageView;

.field private mHideButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIsMenuVisible:Z

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsMenuVisible:Z

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButtonClickListener:Landroid/view/View$OnClickListener;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->hide()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->collapseAndRemoveExpandedWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->hideAndRemoveExpandedWindow()V

    return-void
.end method

.method private collapseAndRemoveExpandedWindow()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->collapseAndRemoveExpandedWindow()V

    .line 369
    return-void
.end method

.method private collapseAnim()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xe9

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 281
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v9, [F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    aput v2, v5, v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v2, v6

    :goto_0
    aput v2, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 286
    .local v0, "animatorX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    new-instance v2, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$2;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 310
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsMenuVisible:Z

    if-eqz v2, :cond_2

    .line 311
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v9, [F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v2

    aput v2, v5, v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v2, v6

    :goto_1
    aput v2, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 317
    .local v1, "animatorY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 319
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 323
    .end local v1    # "animatorY":Landroid/animation/ObjectAnimator;
    :goto_2
    return-void

    .line 281
    .end local v0    # "animatorX":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v2, v6

    goto :goto_0

    .line 311
    .restart local v0    # "animatorX":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v2, v6

    goto :goto_1

    .line 321
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    goto :goto_2
.end method

.method private expand()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->expandAnim()V

    .line 185
    return-void
.end method

.method private expandAnim()V
    .locals 13

    .prologue
    .line 200
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 201
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 204
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v8, 0xe9

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 206
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v11

    aput v11, v10, v7

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    add-float/2addr v7, v12

    :goto_0
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 211
    .local v1, "animatorX1":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    add-float/2addr v7, v12

    :goto_1
    aput v7, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    sub-float/2addr v7, v12

    :goto_2
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 216
    .local v2, "animatorX2":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    sub-float/2addr v7, v12

    :goto_3
    aput v7, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    :goto_4
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 222
    .local v3, "animatorX3":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xe9

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    const-wide/16 v8, 0xa6

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    const-wide/16 v8, 0xa6

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 225
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    const-wide/16 v8, 0xe9

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 230
    const-wide/16 v8, 0x190

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 232
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 233
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 234
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 236
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsMenuVisible:Z

    if-eqz v7, :cond_a

    .line 237
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 239
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v11

    aput v11, v10, v7

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    sub-float/2addr v7, v12

    :goto_5
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 244
    .local v4, "animatorY1":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    sub-float/2addr v7, v12

    :goto_6
    aput v7, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    add-float/2addr v7, v12

    :goto_7
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 250
    .local v5, "animatorY2":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    add-float/2addr v7, v12

    :goto_8
    aput v7, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    :goto_9
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 257
    .local v6, "animatorY3":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xe9

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 258
    const-wide/16 v8, 0xa6

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 259
    const-wide/16 v8, 0xa6

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 260
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    const-wide/16 v8, 0xe9

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 265
    const-wide/16 v8, 0x190

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 267
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 268
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 269
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 271
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(F)V

    .line 276
    .end local v4    # "animatorY1":Landroid/animation/ObjectAnimator;
    .end local v5    # "animatorY2":Landroid/animation/ObjectAnimator;
    .end local v6    # "animatorY3":Landroid/animation/ObjectAnimator;
    :goto_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 278
    return-void

    .line 206
    .end local v1    # "animatorX1":Landroid/animation/ObjectAnimator;
    .end local v2    # "animatorX2":Landroid/animation/ObjectAnimator;
    .end local v3    # "animatorX3":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    sub-float/2addr v7, v12

    goto/16 :goto_0

    .line 211
    .restart local v1    # "animatorX1":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    sub-float/2addr v7, v12

    goto/16 :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    add-float/2addr v7, v12

    goto/16 :goto_2

    .line 216
    .restart local v2    # "animatorX2":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    add-float/2addr v7, v12

    goto/16 :goto_3

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    goto/16 :goto_4

    .line 239
    .restart local v3    # "animatorX3":Landroid/animation/ObjectAnimator;
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    add-float/2addr v7, v12

    goto/16 :goto_5

    .line 244
    .restart local v4    # "animatorY1":Landroid/animation/ObjectAnimator;
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    add-float/2addr v7, v12

    goto/16 :goto_6

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    sub-float/2addr v7, v12

    goto/16 :goto_7

    .line 250
    .restart local v5    # "animatorY2":Landroid/animation/ObjectAnimator;
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    sub-float/2addr v7, v12

    goto/16 :goto_8

    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    goto/16 :goto_9

    .line 274
    .end local v4    # "animatorY1":Landroid/animation/ObjectAnimator;
    .end local v5    # "animatorY2":Landroid/animation/ObjectAnimator;
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method private hide()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->hideAnim()V

    .line 189
    return-void
.end method

.method private hideAndRemoveExpandedWindow()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->hideAndRemoveExpandedWindow()V

    .line 365
    return-void
.end method

.method private hideAnim()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x14d

    const/4 v5, 0x2

    .line 326
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 329
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 330
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 331
    new-instance v2, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$3;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 352
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsMenuVisible:Z

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 355
    .local v1, "animatorZ":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 356
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 361
    .end local v1    # "animatorZ":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 326
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 353
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isBottom()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 192
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isButtonClicked(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "result":Z
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 112
    .local v0, "hitRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    or-int/2addr v1, v2

    .line 114
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHitRect(Landroid/graphics/Rect;)V

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    or-int/2addr v1, v2

    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHitRect(Landroid/graphics/Rect;)V

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    or-int/2addr v1, v2

    .line 119
    return v1
.end method

.method private isHideButtonClicked(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "result":Z
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 103
    .local v0, "hitRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 106
    return v1
.end method

.method private isLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 196
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public die()V
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerImpl;

    .line 61
    .local v2, "windowManager":Landroid/view/WindowManagerImpl;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 62
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 63
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v2, v0}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v2

    .line 65
    invoke-virtual {v2, p0}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->expand()V

    .line 148
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const v5, 0x7f0a00c6

    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 154
    const v4, 0x7f0e00f9

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    .line 155
    const v4, 0x7f0e00fc

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingTriggerButton:Landroid/widget/ImageView;

    .line 156
    const v4, 0x7f0e00fa

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 157
    const v4, 0x7f0e00f8

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 159
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    .local v1, "drawableHide":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingTriggerButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 161
    .local v3, "drawableTrigger":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    .local v0, "drawableBack":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 164
    .local v2, "drawableMenu":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 173
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c04ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    .line 177
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 127
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isHideButtonClicked(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->collapseAnim()V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 84
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isButtonClicked(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->collapseAnim()V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFloatingBackKeyLayout(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p1, "f"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .line 181
    return-void
.end method

.method public setKeysPosition(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "position"    # I

    .prologue
    .line 69
    iput p3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setX(F)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setY(F)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setX(F)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setY(F)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 77
    return-void
.end method

.method public setMenuVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 373
    return-void
.end method
