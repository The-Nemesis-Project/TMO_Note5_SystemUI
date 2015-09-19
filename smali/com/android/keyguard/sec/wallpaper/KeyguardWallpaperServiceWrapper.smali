.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
.super Ljava/lang/Object;
.source "KeyguardWallpaperServiceWrapper.java"

# interfaces
.implements Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;


# static fields
.field public static final COMMAND_CLEAN_UP:I = 0x3

.field public static final COMMAND_RESET:I = 0x2

.field public static final COMMAND_SCREEN_OFF:I = 0x6

.field public static final COMMAND_SCREEN_ON:I = 0x5

.field public static final COMMAND_SET_HIDDEN_FALSE:I = 0x7

.field public static final COMMAND_SHOW:I = 0x1

.field public static final COMMAND_UPDATE:I = 0x4

.field public static final COMMAND_WINDOW_ANIM_REMOVE:I = 0x9

.field public static final COMMAND_WINDOW_ANIM_SET:I = 0x8


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "KeyguardWallpaperServiceWrapper"

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->TAG:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->mService:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    .line 50
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->mService:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    invoke-interface {v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public executeCommand(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->mService:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;->executeCommand(I)V

    .line 61
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->mService:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    invoke-interface {v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;->getUnlockDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleUnlock(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->mService:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;->handleUnlock(Landroid/view/MotionEvent;)V

    .line 80
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->mService:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 67
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->mService:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    .line 74
    return-void
.end method

.method public setKeyguardWallpaperShowCallback(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->mService:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;->setKeyguardWallpaperShowCallback(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 96
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->mService:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 86
    return-void
.end method
