.class Lcom/android/keyguard/KeyguardUniversalLockView$8;
.super Ljava/lang/Object;
.source "KeyguardUniversalLockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$8;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 576
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 577
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$8;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3000(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$8;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3000(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 579
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$8;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3000(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 581
    :cond_0
    return-void
.end method
