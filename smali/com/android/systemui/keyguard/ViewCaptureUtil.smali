.class public Lcom/android/systemui/keyguard/ViewCaptureUtil;
.super Ljava/lang/Object;
.source "ViewCaptureUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewCaptureUtil"


# instance fields
.field private LANDSCAPE_CAPTURE_IMAGE_PATH:Ljava/lang/String;

.field private final LAND_FILE_NAME:Ljava/lang/String;

.field private PORTRAIT_CAPTURE_IMAGE_PATH:Ljava/lang/String;

.field private final PORT_FILE_NAME:Ljava/lang/String;

.field private final PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

.field private S_VIEW_COVER_CAPTURE_IMAGE_PATH:Ljava/lang/String;

.field private final S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

.field private components:[Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mIsCovered:Z

.field private mKeyguardBottomArea:Landroid/view/View;

.field private mMobileKeyboardIsCovered:Z

.field private mRoot:Landroid/view/View;

.field private mSecKeyguardClockView:Landroid/view/View;

.field private originViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Landroid/view/View;
    .param p3, "bottom"    # Landroid/view/View;
    .param p4, "root"    # Landroid/view/View;
    .param p5, "isCover"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORTRAIT_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->LANDSCAPE_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->S_VIEW_COVER_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    .line 35
    const-string v0, "lockscreen_capture_port.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME:Ljava/lang/String;

    .line 36
    const-string v0, "lockscreen_capture_land.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->LAND_FILE_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "lockscreen_capture_port_keyboard.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

    .line 38
    const-string v0, "s_view_cover_capture.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    .line 55
    iput-object p4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRoot:Landroid/view/View;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mSecKeyguardClockView:Landroid/view/View;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mKeyguardBottomArea:Landroid/view/View;

    .line 58
    iput-boolean p5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getCoverState()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/res/Configuration;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private arrangeComponents(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 115
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gtz v5, :cond_1

    .line 116
    :cond_0
    const-string v5, "ViewCaptureUtil"

    const-string v6, "root view is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 139
    :goto_0
    return-object v0

    .line 121
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v5, :cond_3

    .line 122
    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getWindowWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    array-length v5, v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    array-length v6, v6

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    array-length v5, v5

    if-eqz v5, :cond_4

    .line 130
    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    array-length v3, v5

    .line 131
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 132
    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    .line 133
    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 131
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 124
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 138
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private arrangeComponents(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "firstBmp"    # Landroid/graphics/Bitmap;
    .param p4, "secondBmp"    # Landroid/graphics/Bitmap;
    .param p5, "firstView"    # Landroid/view/View;
    .param p6, "secondView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 144
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_1

    .line 145
    :cond_0
    const-string v4, "ViewCaptureUtil"

    const-string v5, "root view is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 186
    :goto_0
    return-object v0

    .line 150
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_2

    .line 151
    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getWindowWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-nez p3, :cond_3

    move-object v0, v3

    .line 159
    goto :goto_0

    .line 153
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 161
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    if-eqz p3, :cond_4

    if-eqz p5, :cond_4

    .line 162
    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, p3, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    :cond_4
    if-eqz p4, :cond_5

    if-eqz p6, :cond_5

    .line 174
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_6

    .line 175
    const-string v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCoverState.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", secondView.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v4

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    .line 182
    .local v2, "topMargin":I
    :goto_2
    invoke-virtual {p6}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-virtual {v1, p4, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 185
    .end local v2    # "topMargin":I
    :cond_5
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 178
    :cond_6
    const-string v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "root.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", secondView.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    .restart local v2    # "topMargin":I
    goto :goto_2
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 291
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "t":Ljava/io/IOException;
    const-string v1, "ViewCaptureUtil"

    const-string v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getCoverState()V
    .locals 5

    .prologue
    .line 298
    const-string v3, "cover"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 299
    .local v0, "coverManager":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_0

    .line 301
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 302
    .local v1, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v1, :cond_0

    .line 303
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v1    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_0
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ViewCaptureUtil"

    const-string v4, "RemoteException in getCoverState: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getSavePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 281
    const-string v0, "/storage/emulated/"

    .line 282
    .local v0, "LOCK_PREVIEW_PATH":Ljava/lang/String;
    const-string v1, "/Android/data/com.android.systemui/cache/"

    .line 284
    .local v1, "LOCK_PREVIEW_PATH2":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 285
    .local v2, "currentUserId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    const-string v2, "ViewCaptureUtil"

    const-string v3, "bmp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 224
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 225
    const-string v0, "s_view_cover_capture.png"

    .line 250
    .local v0, "fileName":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_2
    iget v2, p3, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_0

    .line 241
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v2, :cond_4

    .line 242
    const-string v0, "lockscreen_capture_port_keyboard.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 229
    .end local v0    # "fileName":Ljava/lang/String;
    :pswitch_0
    const-string v0, "lockscreen_capture_land.png"

    .line 230
    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 233
    .end local v0    # "fileName":Ljava/lang/String;
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v2, :cond_3

    .line 234
    const-string v0, "lockscreen_capture_port_keyboard.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 236
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_3
    const-string v0, "lockscreen_capture_port.png"

    .line 238
    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 244
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_4
    const-string v0, "lockscreen_capture_port.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    const-string v4, "ViewCaptureUtil"

    const-string v5, "bmp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v2, 0x0

    .line 196
    .local v2, "out":Ljava/io/BufferedOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "SCREENSHOT_FILE_PATH":Ljava/lang/String;
    const-string v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capture image path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x4000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 202
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 203
    const-string v4, "ViewCaptureUtil"

    const-string v5, "save captured file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    invoke-static {v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 208
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "ViewCaptureUtil"

    const-string v5, "saveScreenshot exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 204
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method private setSavePath()V
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockscreen_capture_port.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORTRAIT_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockscreen_capture_land.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->LANDSCAPE_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s_view_cover_capture.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->S_VIEW_COVER_CAPTURE_IMAGE_PATH:Ljava/lang/String;

    .line 278
    return-void
.end method

.method private viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x3f59999a    # 0.85f

    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :cond_2

    .line 78
    :cond_0
    const-string v2, "ViewCaptureUtil"

    const-string v3, "view is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    .line 103
    :cond_1
    :goto_0
    return-object v0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    iput-boolean v7, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    .line 86
    instance-of v2, p1, Lcom/android/keyguard/sec/SecKeyguardClockView;

    if-eqz v2, :cond_3

    .line 87
    const-string v2, "ViewCaptureUtil"

    const-string v3, "scale clock view area for mobile keyboard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 100
    :cond_3
    :goto_1
    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 90
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-ne v2, v7, :cond_5

    .line 91
    iput-boolean v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    .line 92
    instance-of v2, p1, Lcom/android/keyguard/sec/SecKeyguardClockView;

    if-eqz v2, :cond_3

    .line 93
    const-string v2, "ViewCaptureUtil"

    const-string v3, "scale clock view area for S View Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 97
    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    goto :goto_1
.end method


# virtual methods
.method public varargs prepareBitmaps([Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->components:[Landroid/graphics/Bitmap;

    .line 67
    return-void
.end method

.method public varargs prepareViews([Landroid/view/View;)V
    .locals 1
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->originViews:[Landroid/view/View;

    .line 74
    return-void
.end method

.method public screenCapture()V
    .locals 10

    .prologue
    .line 254
    const-string v0, "ViewCaptureUtil"

    const-string v1, "try capture the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->setSavePath()V

    .line 256
    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "savePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mSecKeyguardClockView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 258
    .local v3, "clockView":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mKeyguardBottomArea:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 259
    .local v4, "bottomView":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRoot:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mSecKeyguardClockView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mKeyguardBottomArea:Landroid/view/View;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->arrangeComponents(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 261
    .local v8, "lockscreenCapture":Landroid/graphics/Bitmap;
    new-instance v7, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/systemui/keyguard/ViewCaptureUtil$1;-><init>(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 271
    .local v7, "captureTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v7, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 272
    return-void
.end method
