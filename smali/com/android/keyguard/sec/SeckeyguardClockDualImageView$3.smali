.class Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;
.super Landroid/database/ContentObserver;
.source "SeckeyguardClockDualImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x65

    const/16 v3, 0x64

    const/16 v5, 0x66

    .line 220
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 221
    if-nez p2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v2, "lock_screen_date_and_year"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 230
    :cond_3
    const-string v2, "lock_screen_show_clock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 236
    :cond_5
    const-string v2, "white_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 237
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$500(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_7

    :goto_1
    # setter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUseBlackTextOnWhiteWallpaper:Z
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$402(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;Z)Z

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 237
    goto :goto_1

    .line 242
    :cond_8
    const-string v0, "lock_screen_clock_size"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # getter for: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
