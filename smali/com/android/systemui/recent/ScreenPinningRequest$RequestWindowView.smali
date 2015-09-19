.class Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;
.super Landroid/widget/FrameLayout;
.source "ScreenPinningRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/ScreenPinningRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestWindowView"
.end annotation


# static fields
.field private static final OFFSET_DP:I = 0x60


# instance fields
.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private mLayout:Landroid/view/ViewGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCancel:Z

.field private final mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/recent/ScreenPinningRequest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/ScreenPinningRequest;Landroid/content/Context;Z)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showCancel"    # Z

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recent/ScreenPinningRequest;

    .line 135
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 266
    new-instance v0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$2;-><init>(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 275
    new-instance v0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$3;-><init>(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->setClickable(Z)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iput-boolean p3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mShowCancel:Z

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->isLandscapePhone(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private inflateView(Z)V
    .locals 9
    .param p1, "isLandscape"    # Z

    .prologue
    const v8, 0x7f0e0359

    const/4 v0, 0x4

    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz p1, :cond_0

    const v3, 0x7f0400a7

    :goto_0
    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    .line 201
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 203
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 205
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0e034f

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 206
    .local v1, "buttons":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutDirection(I)V

    .line 208
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0e0355

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutDirection(I)V

    .line 212
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->swapChildrenIfRtlAndVertical(Landroid/view/View;)V

    .line 214
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0e0358

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recent/ScreenPinningRequest;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-boolean v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mShowCancel:Z

    if-eqz v3, :cond_1

    .line 217
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recent/ScreenPinningRequest;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recent/ScreenPinningRequest;

    # getter for: Lcom/android/systemui/recent/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v3}, Lcom/android/systemui/recent/ScreenPinningRequest;->access$200(Lcom/android/systemui/recent/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const v2, 0x7f0d04ec

    .line 227
    .local v2, "description":I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0e0357

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recent/ScreenPinningRequest;

    # getter for: Lcom/android/systemui/recent/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v3}, Lcom/android/systemui/recent/ScreenPinningRequest;->access$200(Lcom/android/systemui/recent/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    .local v0, "backBgVisibility":I
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0e0352

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0e0351

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recent/ScreenPinningRequest;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recent/ScreenPinningRequest;->getRequestLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-void

    .line 197
    .end local v0    # "backBgVisibility":I
    .end local v1    # "buttons":Landroid/view/View;
    .end local v2    # "description":I
    :cond_0
    const v3, 0x7f0400a4

    goto/16 :goto_0

    .line 220
    .restart local v1    # "buttons":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 224
    :cond_2
    const v2, 0x7f0d04eb

    goto :goto_2

    .restart local v2    # "description":I
    :cond_3
    move v0, v4

    .line 229
    goto :goto_3
.end method

.method private isLandscapePhone(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 189
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private swapChildrenIfRtlAndVertical(Landroid/view/View;)V
    .locals 6
    .param p1, "group"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 238
    iget-object v4, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 254
    :cond_0
    return-void

    :cond_1
    move-object v3, p1

    .line 242
    check-cast v3, Landroid/widget/LinearLayout;

    .line 243
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 244
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 245
    .local v0, "childCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .local v1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 247
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 250
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 251
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x42c00000    # 96.0f

    const/4 v7, 0x0

    .line 144
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 145
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recent/ScreenPinningRequest;

    # getter for: Lcom/android/systemui/recent/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v5}, Lcom/android/systemui/recent/ScreenPinningRequest;->access$000(Lcom/android/systemui/recent/ScreenPinningRequest;)Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 147
    .local v1, "density":F
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->isLandscapePhone(Landroid/content/Context;)Z

    move-result v3

    .line 149
    .local v3, "isLandscape":Z
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->inflateView(Z)V

    .line 150
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 152
    .local v0, "bgColor":I
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 154
    if-eqz v3, :cond_0

    .line 155
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    mul-float v6, v8, v1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 159
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 167
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    .line 168
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$1;-><init>(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 175
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 176
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 181
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    return-void

    .line 157
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    mul-float v6, v8, v1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_1
.end method

.method protected onConfigurationChanged()V
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->removeAllViews()V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->isLandscapePhone(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->inflateView(Z)V

    .line 264
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    return-void
.end method
