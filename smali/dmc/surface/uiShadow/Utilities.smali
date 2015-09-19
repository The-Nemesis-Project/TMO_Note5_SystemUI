.class public Ldmc/surface/uiShadow/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDpToPixel(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "DP"    # F

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "px":F
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 36
    :goto_0
    float-to-int v1, v0

    return v1

    .line 33
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDpToPixel(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "DP"    # I

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 22
    .local v0, "px":F
    const/4 v1, 0x1

    int-to-float v2, p1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 26
    :goto_0
    float-to-int v1, v0

    return v1

    .line 23
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getPixelToDp(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pixel"    # I

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 11
    .local v0, "dp":F
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 12
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v2, p1

    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    div-float v0, v2, v3

    .line 16
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    float-to-int v2, v0

    return v2

    .line 13
    :catch_0
    move-exception v2

    goto :goto_0
.end method
