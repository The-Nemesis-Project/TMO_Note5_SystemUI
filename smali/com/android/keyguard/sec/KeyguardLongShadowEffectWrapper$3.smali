.class Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$3;
.super Ljava/lang/Object;
.source "KeyguardLongShadowEffectWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateImageViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$3;->this$0:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$3;->this$0:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    # getter for: Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->access$100(Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;)Ldmc/surface/uiShadow/LongShadowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$3;->this$0:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    # getter for: Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mShadowView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->access$200(Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldmc/surface/uiShadow/LongShadowManager;->UpdateImageViews(Landroid/widget/ImageView;)V

    .line 116
    return-void
.end method
