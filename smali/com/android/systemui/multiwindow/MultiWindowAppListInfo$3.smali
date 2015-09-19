.class final Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$3;
.super Landroid/database/ContentObserver;
.source "MultiWindowAppListInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    .line 250
    :try_start_0
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$200()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 251
    .local v0, "MultiWindowEnabled":I
    if-nez v0, :cond_0

    .line 252
    const-string v3, "Recents_MultiWindowAppListInfo"

    const-string v4, "MultiWindow setting off"

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.systemui.recents.CLOSE_RECENTS_MULTIWINDOW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "closeIntent":Landroid/content/Intent;
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$100()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 256
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->release()V

    .line 257
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$200()Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$300()Landroid/database/ContentObserver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 258
    const/4 v3, 0x0

    # setter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$202(Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 260
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$100()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$100()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0    # "MultiWindowEnabled":I
    .end local v1    # "closeIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
