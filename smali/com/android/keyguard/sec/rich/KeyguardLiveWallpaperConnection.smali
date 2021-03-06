.class public Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "KeyguardLiveWallpaperConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final BIND_SERVICE_RETRY_DELAY:I

.field private final TAG:Ljava/lang/String;

.field private mBindServiceRetryHandler:Landroid/os/Handler;

.field mConnected:Z

.field private final mContext:Landroid/content/Context;

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field private final mIntent:Landroid/content/Intent;

.field mIsConnecting:Z

.field mIsVisible:Z

.field private final mParentView:Landroid/view/View;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field mUnbindService:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 38
    const-string v0, "KeyguardLiveWallpaperConnection"

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->TAG:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsConnecting:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mUnbindService:Z

    .line 51
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->BIND_SERVICE_RETRY_DELAY:I

    .line 52
    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection$1;-><init>(Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 63
    iput-object p3, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mParentView:Landroid/view/View;

    .line 64
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 4
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 154
    :try_start_0
    const-string v1, "KeyguardLiveWallpaperConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach Engine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mParentView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->isShowingAndLcdOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public connect()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    const-string v2, "KeyguardLiveWallpaperConnection"

    const-string v3, "connect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsConnecting:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    if-eqz v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsConnecting:Z

    .line 74
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, p0, v1, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const-string v0, "KeyguardLiveWallpaperConnection"

    const-string v2, "bind service was called"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 83
    const-string v1, "KeyguardLiveWallpaperConnection"

    const-string v2, "disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    if-nez v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mUnbindService:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 0
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 171
    return-void
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v11, 0x0

    .line 97
    const-string v0, "KeyguardLiveWallpaperConnection"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 101
    :try_start_0
    iget-object v10, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mParentView:Landroid/view/View;

    .line 102
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 103
    .local v9, "root":Landroid/view/View;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 104
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x832

    const/4 v4, 0x1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    :cond_0
    const-string v0, "KeyguardLiveWallpaperConnection"

    const-string v1, "onServiceConnected completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v9    # "root":Landroid/view/View;
    .end local v10    # "view":Landroid/view/View;
    :goto_0
    iput-boolean v11, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsConnecting:Z

    .line 123
    return-void

    .line 113
    :catch_0
    move-exception v8

    .line 114
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "KeyguardLiveWallpaperConnection"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 126
    const-string v1, "KeyguardLiveWallpaperConnection"

    const-string v2, "onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mUnbindService:Z

    if-nez v1, :cond_0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_1

    .line 138
    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V

    .line 139
    const-string v1, "KeyguardLiveWallpaperConnection"

    const-string v2, "Engine is destroied."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :goto_1
    iput-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 147
    :cond_1
    iput-boolean v3, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mUnbindService:Z

    .line 148
    iput-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 149
    iput-boolean v3, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    .line 150
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setVisibility(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    .line 174
    const-string v1, "KeyguardLiveWallpaperConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    if-ne p1, v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    .line 181
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method
