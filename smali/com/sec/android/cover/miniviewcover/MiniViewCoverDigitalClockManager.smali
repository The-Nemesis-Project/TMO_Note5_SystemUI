.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;
.super Ljava/lang/Object;
.source "MiniViewCoverDigitalClockManager.java"


# static fields
.field public static final DIGITAL_CLOCK_DISABLED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MiniViewCoverDigitalClockManager"

.field private static mInstance:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDigitalClockStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mInstance:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mContext:Landroid/content/Context;

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mDigitalClockStyles:Ljava/util/List;

    .line 26
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$array;->s_view_cover_digital_clock_styles:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 29
    .local v1, "stylesArray":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mDigitalClockStyles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mInstance:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mInstance:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mInstance:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentStyleIndex()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentStylePreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->getCurrentStyleIndex()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 94
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->digital_clock_preview_none:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->getCurrentStyleResId()I

    move-result v2

    .line 97
    .local v2, "styleResId":I
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 98
    .local v1, "style":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    .line 99
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 100
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public getCurrentStyleResId()I
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->getCurrentStyleIndex()I

    move-result v0

    .line 86
    .local v0, "styleIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 89
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mDigitalClockStyles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getDigitalClockStyleNames()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mDigitalClockStyles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v0, "digitalClockStyleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$array;->s_view_cover_digital_clock_styles:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 69
    .local v4, "stylesArray":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_2

    .line 70
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 71
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 72
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 74
    .local v3, "style":Landroid/content/res/TypedArray;
    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "style":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    return-object v0
.end method

.method public getStylePreviewDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "styleIndex"    # I

    .prologue
    .line 107
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->digital_clock_preview_none:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mDigitalClockStyles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 111
    const-string v3, "MiniViewCoverDigitalClockManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Style "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not defined"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->digital_clock_preview_none:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mDigitalClockStyles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 115
    .local v2, "styleResId":I
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 116
    .local v1, "style":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    .line 117
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 118
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->getCurrentStyleIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentStyleIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mDigitalClockStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 56
    const-string v0, "MiniViewCoverDigitalClockManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "MiniViewCoverDigitalClockManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New digital clock style index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "com.sec.android.cover.sviewcover.DIGITAL_CLOCK_STYLE"

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
