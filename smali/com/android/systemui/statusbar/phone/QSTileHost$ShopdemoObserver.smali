.class Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;
.super Landroid/database/ContentObserver;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShopdemoObserver"
.end annotation


# instance fields
.field private mShopdemoRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 2

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 465
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 466
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 481
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$800(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "shopdemo"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 482
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$800(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_active_app_list"

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$700(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "TileList":Ljava/lang/String;
    const-string v4, "PersonalMode;MobileData;WiFiHotspot;"

    .line 484
    .local v4, "removeTileList":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v1, v2

    .line 485
    .local v5, "tile":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 486
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # invokes: Lcom/android/systemui/statusbar/phone/QSTileHost;->removeTileSpecs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v5, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$900(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v5    # "tile":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$600(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_active_app_list"

    const/4 v8, -0x2

    invoke-static {v6, v7, v0, v8}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 491
    .end local v0    # "TileList":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "removeTileList":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->mShopdemoRegistered:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$600(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 473
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->mShopdemoRegistered:Z

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$800(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "shopdemo"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$ShopdemoObserver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$700(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 477
    return-void
.end method
