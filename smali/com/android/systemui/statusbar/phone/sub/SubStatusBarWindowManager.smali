.class public Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;
.super Ljava/lang/Object;
.source "SubStatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubStatusBarWindowManager"


# instance fields
.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

.field private final mKeyguardScreenRotation:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mSubStatusBarWindowView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mKeyguardScreenRotation:Z

    .line 63
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mBarHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->getScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 137
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyHeight(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sViewCoverShowing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sAppCoverShowing:Z

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 230
    .local v0, "useFullScreen":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 233
    :cond_1
    return-void

    .end local v0    # "useFullScreen":Z
    :cond_2
    move v0, v1

    .line 227
    goto :goto_0

    .restart local v0    # "useFullScreen":Z
    :cond_3
    move v2, v1

    .line 231
    goto :goto_1
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    const v2, -0x20001

    .line 164
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardNeedsInput:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarFocusable:Z

    if-eqz v0, :cond_2

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 9
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarExpanded:Z

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardFadingAway:Z

    if-eqz v5, :cond_1

    :cond_0
    move v1, v4

    .line 181
    .local v1, "expanded":Z
    :goto_0
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v5, :cond_2

    .line 182
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 221
    :goto_1
    const-string v3, "SubStatusBarWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyHeight h = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarExpanded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fa = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardFadingAway:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ac = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sAppCoverShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sViewCoverShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .end local v1    # "expanded":Z
    :cond_1
    move v1, v3

    .line 178
    goto :goto_0

    .line 184
    .restart local v1    # "expanded":Z
    :cond_2
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarExpanded:Z

    if-eqz v5, :cond_3

    .line 185
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 189
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    const v6, 0x7f0e0418

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 191
    .local v2, "mSubStatusBar":Landroid/view/View;
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v7, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v6, v3

    aput v8, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 192
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 193
    new-instance v3, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 205
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "mSubStatusBar":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    const v6, 0x7f0e0418

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 206
    .restart local v2    # "mSubStatusBar":Landroid/view/View;
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v7, [F

    aput v8, v6, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 207
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 208
    new-instance v3, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    .line 236
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->isSupportNotificationOnCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    const v2, -0x100001

    .line 116
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isHomeWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 124
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->isDisableStatusBarTransparent:Z

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 133
    :cond_1
    :goto_1
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1
.end method

.method private getScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)I
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    .line 140
    const/4 v0, -0x1

    .line 142
    .local v0, "orientation":I
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mKeyguardScreenRotation:Z

    if-eqz v1, :cond_0

    .line 144
    const/4 v0, 0x2

    .line 152
    :goto_0
    return v0

    .line 146
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0b0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public add(Landroid/view/View;I)V
    .locals 9
    .param p1, "statusBarView"    # Landroid/view/View;
    .param p2, "barHeight"    # I

    .prologue
    .line 82
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SubStatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManagerImpl;

    .line 100
    .local v8, "wm":Landroid/view/WindowManagerImpl;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    .line 101
    .local v7, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 102
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v8, v6}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v8

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    .line 105
    iput p2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mBarHeight:I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v0, v1}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method

.method public getScreenOrientation(Z)I
    .locals 1
    .param p1, "isOccluded"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardOccluded:Z

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    return v0
.end method

.method public getSubStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    return-object v0
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->bouncerShowing:Z

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 299
    return-void
.end method

.method public setCoverShowing(ZZI)V
    .locals 2
    .param p1, "sViewShowing"    # Z
    .param p2, "sAppShowing"    # Z
    .param p3, "coverType"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sViewCoverShowing:Z

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sAppCoverShowing:Z

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isFlipCover:Z

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 317
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1
    .param p1, "keyguardFadingAway"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardFadingAway:Z

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 304
    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardNeedsInput:Z

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 278
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardOccluded:Z

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 273
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardShowing:Z

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    const v2, 0x7f0e0421

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 262
    .local v0, "subKeyguardWallpaperLayout":Landroid/widget/FrameLayout;
    if-eqz p1, :cond_1

    .line 263
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 268
    .end local v0    # "subKeyguardWallpaperLayout":Landroid/widget/FrameLayout;
    :cond_0
    :goto_0
    return-void

    .line 265
    .restart local v0    # "subKeyguardWallpaperLayout":Landroid/widget/FrameLayout;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyguardUserActivityTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-wide p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 294
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->qsExpanded:Z

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 309
    return-void
.end method

.method public setStatusBarExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarExpanded:Z

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarFocusable:Z

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 284
    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarFocusable:Z

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 289
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarState:I

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 326
    return-void
.end method
