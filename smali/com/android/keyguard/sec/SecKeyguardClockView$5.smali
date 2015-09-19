.class Lcom/android/keyguard/sec/SecKeyguardClockView$5;
.super Landroid/os/AsyncTask;
.source "SecKeyguardClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardClockView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 223
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 226
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1300(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_cover_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1500(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_name"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1600(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dualclock_menu_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1700(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "homecity_timezone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1800(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_show_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2000(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mCurrentOrientation:I
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1902(Lcom/android/keyguard/sec/SecKeyguardClockView;I)I

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->shouldEnableKeyguardScreenRotation()Z
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$2100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsRotationEnabled:Z

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 223
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateClock()V

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateCMASText()Z

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$900(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshTravelInfo()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$000(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    .line 252
    return-void
.end method
