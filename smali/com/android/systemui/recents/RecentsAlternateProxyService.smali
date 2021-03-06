.class public Lcom/android/systemui/recents/RecentsAlternateProxyService;
.super Landroid/app/Service;
.source "RecentsAlternateProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsAlternateProxyService$H;
    }
.end annotation


# static fields
.field private static final MSG_BOOTCOMPLETED:I = 0x6

.field private static final MSG_CONFIGURATIONCHANGED:I = 0x5

.field private static final MSG_HIDE_RECENT_APPS:I = 0x2

.field private static final MSG_PRELOAD_RECENT_APPS:I = 0x4

.field private static final MSG_SHOW_RECENT_APPS:I = 0x1

.field private static final MSG_TOGGLE_RECENT_APPS:I = 0x3

.field public static final TAG:Ljava/lang/String; = "RecentsAlternateProxyService"


# instance fields
.field mBinder:Lcom/android/systemui/recents/IRecentsAlternateProxyService$Stub;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;-><init>(Lcom/android/systemui/recents/RecentsAlternateProxyService;Lcom/android/systemui/recents/RecentsAlternateProxyService$1;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;-><init>(Lcom/android/systemui/recents/RecentsAlternateProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mBinder:Lcom/android/systemui/recents/IRecentsAlternateProxyService$Stub;

    .line 123
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsAlternateProxyService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public configurationChanged()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->configurationChanged()V

    .line 86
    return-void
.end method

.method public hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->hideRecents(ZZ)V

    .line 74
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    const-string v0, "RecentsAlternateProxyService"

    const-string v1, "onBind is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mBinder:Lcom/android/systemui/recents/IRecentsAlternateProxyService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    const-string v0, "RecentsAlternateProxyService"

    const-string v1, "onCreate is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v2}, Lcom/android/systemui/recent/Recents;->getRecentsComponent(Landroid/content/Context;ZZ)Lcom/android/systemui/recents/AlternateRecentsComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "RecentsAlternateProxyService"

    const-string v1, "onDestroy is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 60
    return-void
.end method

.method public preloadRecents()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->preloadRecents()V

    .line 82
    return-void
.end method

.method public showRecents(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->showRecents(Z)V

    .line 70
    return-void
.end method

.method public toggleRecents()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->toggleRecents()V

    .line 78
    return-void
.end method
