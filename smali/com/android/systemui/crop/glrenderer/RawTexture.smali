.class public Lcom/android/systemui/crop/glrenderer/RawTexture;
.super Lcom/android/systemui/crop/glrenderer/BasicTexture;
.source "RawTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RawTexture"


# instance fields
.field private mIsFlipped:Z

.field private final mOpaque:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "opaque"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/crop/glrenderer/BasicTexture;-><init>()V

    .line 31
    iput-boolean p3, p0, Lcom/android/systemui/crop/glrenderer/RawTexture;->mOpaque:Z

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/crop/glrenderer/RawTexture;->setSize(II)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getTarget()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0xde1

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/crop/glrenderer/RawTexture;->mIsFlipped:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/crop/glrenderer/RawTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/android/systemui/crop/glrenderer/GLCanvas;)Z
    .locals 2
    .param p1, "canvas"    # Lcom/android/systemui/crop/glrenderer/GLCanvas;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/crop/glrenderer/RawTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    .line 61
    :cond_0
    const-string v0, "RawTexture"

    const-string v1, "lost the content due to context change"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepare(Lcom/android/systemui/crop/glrenderer/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/systemui/crop/glrenderer/GLCanvas;

    .prologue
    .line 50
    invoke-interface {p1}, Lcom/android/systemui/crop/glrenderer/GLCanvas;->getGLId()Lcom/android/systemui/crop/glrenderer/GLId;

    move-result-object v0

    .line 51
    .local v0, "glId":Lcom/android/systemui/crop/glrenderer/GLId;
    invoke-interface {v0}, Lcom/android/systemui/crop/glrenderer/GLId;->generateTexture()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/crop/glrenderer/RawTexture;->mId:I

    .line 52
    const/16 v1, 0x1908

    const/16 v2, 0x1401

    invoke-interface {p1, p0, v1, v2}, Lcom/android/systemui/crop/glrenderer/GLCanvas;->initializeTextureSize(Lcom/android/systemui/crop/glrenderer/BasicTexture;II)V

    .line 53
    invoke-interface {p1, p0}, Lcom/android/systemui/crop/glrenderer/GLCanvas;->setTextureParameters(Lcom/android/systemui/crop/glrenderer/BasicTexture;)V

    .line 54
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/crop/glrenderer/RawTexture;->mState:I

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/crop/glrenderer/RawTexture;->setAssociatedCanvas(Lcom/android/systemui/crop/glrenderer/GLCanvas;)V

    .line 56
    return-void
.end method

.method public setIsFlippedVertically(Z)V
    .locals 0
    .param p1, "isFlipped"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/crop/glrenderer/RawTexture;->mIsFlipped:Z

    .line 47
    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
