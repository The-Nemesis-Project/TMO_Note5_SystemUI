.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;
.super Landroid/os/Handler;
.source "KeyguardEffectViewWaterColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 448
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 457
    :goto_0
    return-void

    .line 451
    :pswitch_0
    const-string v0, "WaterColor_Keyguard"

    const-string v1, "removeView mImageView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;

    iget-object v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->removeView(Landroid/view/View;)V

    .line 454
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;

    iput-object v2, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
