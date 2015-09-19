.class public Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;
.super Landroid/widget/FrameLayout;
.source "XmlParserView.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field public static final AUTUMN_EFFECT:I = 0x53

.field protected static final DEFAULT_PACKAGE_DENSITY:F = 4.0f

.field protected static final DEFAULT_PACKAGE_HEIGHT:F = 640.0f

.field protected static final DEFAULT_PACKAGE_WIDTH:F = 360.0f

.field public static final SPRING_EFFECT:I = 0x51

.field public static final SUMMER_EFFECT:I = 0x52

.field public static final WINTER_EFFECT:I = 0x54


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

.field private mContext:Landroid/content/Context;

.field private mDeviceDensity:F

.field private mDeviceHeight:F

.field private mDeviceWidth:F

.field private mIsAnimationPlay:Z

.field private mIsParserSuccess:Z

.field private mPackageDensity:F

.field private mPackageHeight:F

.field private mPackageName:Ljava/lang/String;

.field private mPackageWidth:F

.field private mUnlockEffectType:I

.field private mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x44200000    # 640.0f

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v1, 0x40800000    # 4.0f

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "XmlParserView"

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->TAG:Ljava/lang/String;

    .line 31
    iput-boolean v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z

    .line 32
    iput-boolean v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    .line 44
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceWidth:F

    .line 45
    iput v3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceHeight:F

    .line 46
    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    .line 48
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    .line 49
    iput v3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    .line 50
    iput v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageDensity:F

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xml"    # Ljava/lang/String;
    .param p3, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x44200000    # 640.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v3, 0x40800000    # 4.0f

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v2, "XmlParserView"

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->TAG:Ljava/lang/String;

    .line 31
    iput-boolean v6, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z

    .line 32
    iput-boolean v6, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    .line 44
    iput v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceWidth:F

    .line 45
    iput v5, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceHeight:F

    .line 46
    iput v3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    .line 48
    iput v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    .line 49
    iput v5, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    .line 50
    iput v3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageDensity:F

    .line 59
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    .line 62
    const-string v2, "XmlParserView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XmlName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Default package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->setBackgroundColor(I)V

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, "apkContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->parserAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    .line 68
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 84
    .end local v0    # "apkContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 74
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v1

    .line 76
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_6
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .param p1, "pak"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDevicePixelX(F)F
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 1059
    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceWidth:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getDevicePixelY(F)F
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 1063
    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceHeight:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 969
    const-string v0, "XmlParserView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->stopAnimation()V

    .line 971
    return-void
.end method

.method public getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1055
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 1002
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUnlockEffect()I
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    return v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1037
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1020
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1026
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1009
    return-void
.end method

.method public isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 1051
    const/4 v0, 0x1

    return v0
.end method

.method public isParserSuccess()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z

    return v0
.end method

.method public parserAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;
    .locals 31
    .param p1, "apkContext"    # Landroid/content/Context;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/16 v28, 0x0

    .line 139
    .local v28, "view":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;
    const/16 v24, 0x0

    .line 140
    .local v24, "scene":Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;
    const/4 v13, 0x0

    .line 142
    .local v13, "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    const/16 v23, 0x0

    .line 143
    .local v23, "res":Landroid/content/res/Resources;
    const/16 v30, 0x0

    .line 145
    .local v30, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v29, -0x2

    .line 146
    .local v29, "width":I
    const/16 v18, -0x2

    .line 148
    .local v18, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    .line 149
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/sec/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceWidth:F

    .line 150
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/sec/opentheme/common/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceHeight:F

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 153
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    const-string v6, "xml"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v30

    .line 155
    new-instance v5, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-direct {v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    .line 157
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v16

    .line 158
    .local v16, "eventType":I
    :goto_0
    const/4 v5, 0x1

    move/from16 v0, v16

    if-eq v0, v5, :cond_dd

    .line 159
    if-nez v16, :cond_1

    .line 942
    :cond_0
    :goto_1
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    goto :goto_0

    .line 161
    :cond_1
    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_ce

    .line 162
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 163
    .local v26, "startName":Ljava/lang/String;
    const-string v5, "screen"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 164
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 165
    .local v14, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 166
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 167
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 168
    .local v27, "value":Ljava/lang/String;
    const-string v5, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    .line 170
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPackageWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 171
    :cond_3
    const-string v5, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 172
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    .line 173
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPackageHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageHeight:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 174
    :cond_4
    const-string v5, "density"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageDensity:F

    .line 176
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPackageDensity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageDensity:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 179
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_5
    const-string v5, "view"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 181
    new-instance v28, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;

    .end local v28    # "view":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;-><init>(Landroid/content/Context;)V

    .line 183
    .restart local v28    # "view":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 184
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 185
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 186
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 187
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "img"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 188
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_6
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 192
    :cond_7
    const-string v5, "x"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 193
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setX(F)V

    goto :goto_5

    .line 194
    :cond_8
    const-string v5, "y"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 195
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setY(F)V

    goto :goto_5

    .line 196
    :cond_9
    const-string v5, "width"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 197
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v29, v0

    goto :goto_5

    .line 198
    :cond_a
    const-string v5, "height"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 199
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v18, v0

    goto :goto_5

    .line 200
    :cond_b
    const-string v5, "pivotX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 201
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setPivotX(F)V

    goto :goto_5

    .line 202
    :cond_c
    const-string v5, "pivotY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 203
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setPivotY(F)V

    goto/16 :goto_5

    .line 204
    :cond_d
    const-string v5, "alpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 205
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setAlpha(F)V

    goto/16 :goto_5

    .line 206
    :cond_e
    const-string v5, "scaleX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 207
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setScaleX(F)V

    goto/16 :goto_5

    .line 208
    :cond_f
    const-string v5, "scaleY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 209
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setScaleY(F)V

    goto/16 :goto_5

    .line 212
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_10
    const-string v5, "scene"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 214
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 215
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_6
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 216
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 217
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 218
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 219
    const-string v5, "snow"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 221
    new-instance v25, Lcom/android/keyguard/sec/opentheme/xmlparser/SnowView;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/opentheme/xmlparser/SnowView;-><init>(Landroid/content/Context;)V

    .line 222
    .local v25, "snow":Lcom/android/keyguard/sec/opentheme/xmlparser/SnowView;
    move-object/from16 v24, v25

    .line 223
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;)V

    .line 224
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 226
    const/16 v5, 0x54

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    .line 215
    .end local v25    # "snow":Lcom/android/keyguard/sec/opentheme/xmlparser/SnowView;
    :cond_11
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 227
    :cond_12
    const-string v5, "rain"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 229
    new-instance v22, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;-><init>(Landroid/content/Context;)V

    .line 230
    .local v22, "rain":Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;
    move-object/from16 v24, v22

    .line 231
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;)V

    .line 232
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 234
    const/16 v5, 0x52

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto :goto_7

    .line 235
    .end local v22    # "rain":Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;
    :cond_13
    const-string v5, "leaf"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 237
    new-instance v20, Lcom/android/keyguard/sec/opentheme/xmlparser/LeafView;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/opentheme/xmlparser/LeafView;-><init>(Landroid/content/Context;)V

    .line 238
    .local v20, "leaf":Lcom/android/keyguard/sec/opentheme/xmlparser/LeafView;
    move-object/from16 v24, v20

    .line 239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;)V

    .line 240
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 242
    const/16 v5, 0x53

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto :goto_7

    .line 243
    .end local v20    # "leaf":Lcom/android/keyguard/sec/opentheme/xmlparser/LeafView;
    :cond_14
    const-string v5, "flower"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 245
    new-instance v17, Lcom/android/keyguard/sec/opentheme/xmlparser/FlowerView;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/opentheme/xmlparser/FlowerView;-><init>(Landroid/content/Context;)V

    .line 246
    .local v17, "flower":Lcom/android/keyguard/sec/opentheme/xmlparser/FlowerView;
    move-object/from16 v24, v17

    .line 247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;)V

    .line 248
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 250
    const/16 v5, 0x51

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto/16 :goto_7

    .line 254
    .end local v14    # "count":I
    .end local v17    # "flower":Lcom/android/keyguard/sec/opentheme/xmlparser/FlowerView;
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_15
    const-string v5, "rotate"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 255
    const/4 v13, 0x0

    .line 256
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 257
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 258
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_8
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 259
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 260
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 261
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 262
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    .line 258
    :cond_16
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 263
    :cond_17
    const-string v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 264
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_9

    .line 265
    :cond_18
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 266
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_9

    .line 267
    :cond_19
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 268
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_9

    .line 269
    :cond_1a
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 270
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_9

    .line 271
    :cond_1b
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 272
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_9

    .line 273
    :cond_1c
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 275
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 276
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_9

    .line 278
    :cond_1d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_9

    .line 281
    :cond_1e
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 283
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 284
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 286
    :cond_1f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 289
    :cond_20
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 291
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 292
    :cond_21
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 293
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_9

    .line 296
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_22
    const-string v5, "parabola"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 297
    const/4 v13, 0x0

    .line 298
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 299
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 300
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_a
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 301
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 302
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 303
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 304
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    .line 300
    :cond_23
    :goto_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 305
    :cond_24
    const-string v5, "xFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 306
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_b

    .line 307
    :cond_25
    const-string v5, "xTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 308
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_b

    .line 309
    :cond_26
    const-string v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 310
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_b

    .line 311
    :cond_27
    const-string v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 312
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_b

    .line 313
    :cond_28
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 314
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_b

    .line 315
    :cond_29
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 316
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_b

    .line 317
    :cond_2a
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 318
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_b

    .line 319
    :cond_2b
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 320
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_b

    .line 321
    :cond_2c
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 323
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 324
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 326
    :cond_2d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 329
    :cond_2e
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 331
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 332
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 334
    :cond_2f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 337
    :cond_30
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 339
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 340
    :cond_31
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 341
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    .line 345
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_32
    const-string v5, "sinX"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 346
    const/4 v13, 0x0

    .line 347
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 348
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 349
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_c
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 350
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 351
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 352
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 353
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    .line 349
    :cond_33
    :goto_d
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 354
    :cond_34
    const-string v5, "adjust"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 355
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->adjust:F

    goto :goto_d

    .line 356
    :cond_35
    const-string v5, "xFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 357
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_d

    .line 358
    :cond_36
    const-string v5, "xTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 359
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_d

    .line 360
    :cond_37
    const-string v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 361
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_d

    .line 362
    :cond_38
    const-string v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 363
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_d

    .line 364
    :cond_39
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 365
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_d

    .line 366
    :cond_3a
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 367
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_d

    .line 368
    :cond_3b
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 369
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_d

    .line 370
    :cond_3c
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 371
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_d

    .line 372
    :cond_3d
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 374
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 375
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 377
    :cond_3e
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 380
    :cond_3f
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 382
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 383
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 385
    :cond_40
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 388
    :cond_41
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 390
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 391
    :cond_42
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 392
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_d

    .line 395
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_43
    const-string v5, "sinY"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 396
    const/4 v13, 0x0

    .line 397
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 398
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 399
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_e
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 400
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 401
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 402
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 403
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    .line 399
    :cond_44
    :goto_f
    add-int/lit8 v19, v19, 0x1

    goto :goto_e

    .line 404
    :cond_45
    const-string v5, "adjust"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 405
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->adjust:F

    goto :goto_f

    .line 406
    :cond_46
    const-string v5, "yFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 407
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_f

    .line 408
    :cond_47
    const-string v5, "yTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 409
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_f

    .line 410
    :cond_48
    const-string v5, "yOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 411
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_f

    .line 412
    :cond_49
    const-string v5, "xOffSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 413
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_f

    .line 414
    :cond_4a
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 415
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_f

    .line 416
    :cond_4b
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 417
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_f

    .line 418
    :cond_4c
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 419
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_f

    .line 420
    :cond_4d
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 421
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_f

    .line 422
    :cond_4e
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 424
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 425
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 427
    :cond_4f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 430
    :cond_50
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 432
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 433
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 435
    :cond_51
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 438
    :cond_52
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 440
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 441
    :cond_53
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 442
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_f

    .line 445
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_54
    const-string v5, "round"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 446
    const/4 v13, 0x0

    .line 447
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 448
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 449
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_10
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 450
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 451
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 452
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "r"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 453
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->r:F

    .line 449
    :cond_55
    :goto_11
    add-int/lit8 v19, v19, 0x1

    goto :goto_10

    .line 455
    :cond_56
    const-string v5, "a"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 456
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->a:F

    goto :goto_11

    .line 458
    :cond_57
    const-string v5, "b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 459
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->b:F

    goto :goto_11

    .line 461
    :cond_58
    const-string v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 462
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_11

    .line 463
    :cond_59
    const-string v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 464
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_11

    .line 465
    :cond_5a
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 466
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_11

    .line 467
    :cond_5b
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 468
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_11

    .line 469
    :cond_5c
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 470
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_11

    .line 471
    :cond_5d
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 472
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_11

    .line 473
    :cond_5e
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 475
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 476
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 478
    :cond_5f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 481
    :cond_60
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 483
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 484
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 486
    :cond_61
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 489
    :cond_62
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 491
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 492
    :cond_63
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 493
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    .line 497
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_64
    const-string v5, "ellipse"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 498
    const/4 v13, 0x0

    .line 499
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 500
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 501
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_12
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 502
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 503
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 504
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "ra"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 505
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->ra:F

    .line 501
    :cond_65
    :goto_13
    add-int/lit8 v19, v19, 0x1

    goto :goto_12

    .line 507
    :cond_66
    const-string v5, "rb"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 508
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->rb:F

    goto :goto_13

    .line 510
    :cond_67
    const-string v5, "a"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 511
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->a:F

    goto :goto_13

    .line 513
    :cond_68
    const-string v5, "b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 514
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->b:F

    goto :goto_13

    .line 516
    :cond_69
    const-string v5, "fromDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 517
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_13

    .line 518
    :cond_6a
    const-string v5, "toDegrees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 519
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_13

    .line 520
    :cond_6b
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 521
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_13

    .line 522
    :cond_6c
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 523
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_13

    .line 524
    :cond_6d
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 525
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_13

    .line 526
    :cond_6e
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 527
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto/16 :goto_13

    .line 528
    :cond_6f
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 530
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 531
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 533
    :cond_70
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 536
    :cond_71
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 538
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 539
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 541
    :cond_72
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 544
    :cond_73
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 546
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 547
    :cond_74
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 548
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_13

    .line 552
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_75
    const-string v5, "alpha"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 553
    const/4 v13, 0x0

    .line 554
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 555
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 556
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_14
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 557
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 558
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 559
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromAlpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 560
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    .line 556
    :cond_76
    :goto_15
    add-int/lit8 v19, v19, 0x1

    goto :goto_14

    .line 561
    :cond_77
    const-string v5, "toAlpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 562
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_15

    .line 563
    :cond_78
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 564
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_15

    .line 565
    :cond_79
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 566
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_15

    .line 567
    :cond_7a
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 568
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_15

    .line 569
    :cond_7b
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 570
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_15

    .line 571
    :cond_7c
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 573
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 574
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_15

    .line 576
    :cond_7d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_15

    .line 579
    :cond_7e
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 581
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 582
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 584
    :cond_7f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 587
    :cond_80
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 589
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 590
    :cond_81
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 591
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_15

    .line 595
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_82
    const-string v5, "translateX"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 596
    const/4 v13, 0x0

    .line 597
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 598
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 599
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_16
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 600
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 601
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 602
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromXDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 603
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    .line 599
    :cond_83
    :goto_17
    add-int/lit8 v19, v19, 0x1

    goto :goto_16

    .line 604
    :cond_84
    const-string v5, "toXDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 605
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_17

    .line 606
    :cond_85
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 607
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_17

    .line 608
    :cond_86
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 609
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_17

    .line 610
    :cond_87
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 611
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_17

    .line 612
    :cond_88
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 613
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_17

    .line 614
    :cond_89
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 616
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 617
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_17

    .line 619
    :cond_8a
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 622
    :cond_8b
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 624
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 625
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 627
    :cond_8c
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 630
    :cond_8d
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 632
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 633
    :cond_8e
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 634
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    .line 637
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_8f
    const-string v5, "translateY"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 638
    const/4 v13, 0x0

    .line 639
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 640
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 641
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_18
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 642
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 643
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 644
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromYDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 645
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    .line 641
    :cond_90
    :goto_19
    add-int/lit8 v19, v19, 0x1

    goto :goto_18

    .line 646
    :cond_91
    const-string v5, "toYDelta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 647
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_19

    .line 648
    :cond_92
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 649
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_19

    .line 650
    :cond_93
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 651
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_19

    .line 652
    :cond_94
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 653
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_19

    .line 654
    :cond_95
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 655
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_19

    .line 656
    :cond_96
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 658
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 659
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_19

    .line 661
    :cond_97
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 664
    :cond_98
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 666
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 667
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 669
    :cond_99
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 672
    :cond_9a
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 674
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 675
    :cond_9b
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 676
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_19

    .line 679
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_9c
    const-string v5, "scaleX"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 680
    const/4 v13, 0x0

    .line 681
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 682
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 683
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1a
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 684
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 685
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 686
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromXScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 687
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    .line 683
    :cond_9d
    :goto_1b
    add-int/lit8 v19, v19, 0x1

    goto :goto_1a

    .line 688
    :cond_9e
    const-string v5, "toXScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 689
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_1b

    .line 690
    :cond_9f
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 691
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_1b

    .line 692
    :cond_a0
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 693
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_1b

    .line 694
    :cond_a1
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 695
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_1b

    .line 696
    :cond_a2
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 697
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_1b

    .line 698
    :cond_a3
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 700
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 701
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1b

    .line 703
    :cond_a4
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1b

    .line 706
    :cond_a5
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 708
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 709
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 711
    :cond_a6
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 714
    :cond_a7
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 716
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 717
    :cond_a8
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 718
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1b

    .line 721
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_a9
    const-string v5, "scaleY"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 722
    const/4 v13, 0x0

    .line 723
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 724
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 725
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1c
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 726
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 727
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 728
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "fromYScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 729
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    .line 725
    :cond_aa
    :goto_1d
    add-int/lit8 v19, v19, 0x1

    goto :goto_1c

    .line 730
    :cond_ab
    const-string v5, "toYScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 731
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_1d

    .line 732
    :cond_ac
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 733
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_1d

    .line 734
    :cond_ad
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 735
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_1d

    .line 736
    :cond_ae
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 737
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_1d

    .line 738
    :cond_af
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 739
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_1d

    .line 740
    :cond_b0
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 742
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 743
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1d

    .line 745
    :cond_b1
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1d

    .line 748
    :cond_b2
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 750
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 751
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 753
    :cond_b3
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 756
    :cond_b4
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 758
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 759
    :cond_b5
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 760
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1d

    .line 763
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_b6
    const-string v5, "ImageResource"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 764
    const/4 v13, 0x0

    .line 765
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 766
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 767
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1e
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 768
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 769
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 770
    .restart local v27    # "value":Ljava/lang/String;
    const-string v5, "length"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 771
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->length:I

    .line 767
    :cond_b7
    :goto_1f
    add-int/lit8 v19, v19, 0x1

    goto :goto_1e

    .line 772
    :cond_b8
    const-string v5, "image"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 774
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageViewId:I

    goto :goto_1f

    .line 777
    :cond_b9
    const-string v5, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 778
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_1f

    .line 779
    :cond_ba
    const-string v5, "repeatCount"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 780
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_1f

    .line 781
    :cond_bb
    const-string v5, "repeatMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 782
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_1f

    .line 783
    :cond_bc
    const-string v5, "delay"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 784
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_1f

    .line 785
    :cond_bd
    const-string v5, "accelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 787
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 788
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1f

    .line 790
    :cond_be
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 793
    :cond_bf
    const-string v5, "decelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 795
    const-string v5, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 796
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 798
    :cond_c0
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 801
    :cond_c1
    const-string v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 803
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 804
    :cond_c2
    const-string v5, "normalSpeed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 805
    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1f

    .line 809
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_c3
    const-string v5, "frame"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 810
    const/4 v13, 0x0

    .line 811
    new-instance v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    .end local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-direct {v13}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    .line 812
    .restart local v13    # "animation":Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 813
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_20
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 814
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 815
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 816
    .local v27, "value":I
    const-string v5, "top"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 817
    move/from16 v0, v27

    iput v0, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->top:I

    .line 813
    :cond_c4
    :goto_21
    add-int/lit8 v19, v19, 0x1

    goto :goto_20

    .line 818
    :cond_c5
    const-string v5, "minInterval"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 819
    move/from16 v0, v27

    iput v0, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->minInterval:I

    goto :goto_21

    .line 823
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "value":I
    :cond_c6
    const-string v5, "item"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 825
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    .line 826
    .restart local v14    # "count":I
    if-eqz v13, :cond_0

    .line 827
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_22
    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 828
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 829
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v27

    .line 830
    .local v27, "value":Ljava/lang/String;
    const-string v5, "XmlParserView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const-string v5, "frameSize"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 832
    iget-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_c7
    :goto_23
    add-int/lit8 v19, v19, 0x1

    goto :goto_22

    .line 833
    :cond_c8
    const-string v5, "image"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 834
    iget-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    const-string v6, "drawable"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 837
    :cond_c9
    const-string v5, "background"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 838
    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->backgroundId:I

    goto :goto_23

    .line 841
    :cond_ca
    const-string v5, "x"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 842
    iget-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 843
    :cond_cb
    const-string v5, "y"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 844
    iget-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 845
    :cond_cc
    const-string v5, "scale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 846
    iget-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 847
    :cond_cd
    const-string v5, "startIndex"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 848
    iget-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    .line 854
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v26    # "startName":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_ce
    const/4 v5, 0x3

    move/from16 v0, v16

    if-ne v0, v5, :cond_0

    .line 855
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 856
    .local v15, "endName":Ljava/lang/String;
    const-string v5, "view"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 857
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 858
    const/16 v29, -0x2

    .line 859
    const/16 v18, -0x2

    goto/16 :goto_1

    .line 860
    :cond_cf
    const-string v5, "rotate"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 861
    if-eqz v13, :cond_0

    .line 862
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "rotation"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 865
    :cond_d0
    const-string v5, "parabola"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 866
    if-eqz v13, :cond_0

    .line 867
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "parabola"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 870
    :cond_d1
    const-string v5, "sinX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 871
    if-eqz v13, :cond_0

    .line 872
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "sinX"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 875
    :cond_d2
    const-string v5, "sinY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 876
    if-eqz v13, :cond_0

    .line 877
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "sinY"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 880
    :cond_d3
    const-string v5, "round"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 881
    if-eqz v13, :cond_0

    .line 882
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "round"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 885
    :cond_d4
    const-string v5, "ellipse"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 886
    if-eqz v13, :cond_0

    .line 887
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "ellipse"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 890
    :cond_d5
    const-string v5, "alpha"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 891
    if-eqz v13, :cond_0

    .line 892
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "alpha"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 895
    :cond_d6
    const-string v5, "translateX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 896
    if-eqz v13, :cond_0

    .line 897
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "x"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 900
    :cond_d7
    const-string v5, "translateY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 901
    if-eqz v13, :cond_0

    .line 902
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "y"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 905
    :cond_d8
    const-string v5, "scaleX"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 906
    if-eqz v13, :cond_0

    .line 907
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "scaleX"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 910
    :cond_d9
    const-string v5, "scaleY"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 911
    if-eqz v13, :cond_0

    .line 912
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "scaleY"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 915
    :cond_da
    const-string v5, "ImageResource"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 916
    if-eqz v28, :cond_db

    .line 917
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setApkContext(Landroid/content/Context;)V

    .line 920
    :cond_db
    if-eqz v13, :cond_0

    .line 921
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string v6, "ImageResource"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 925
    :cond_dc
    const-string v5, "frame"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 926
    const/4 v4, 0x0

    .line 927
    .local v4, "mFrame":Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;
    if-eqz v13, :cond_0

    .line 929
    new-instance v4, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    .end local v4    # "mFrame":Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;
    iget v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->backgroundId:I

    iget-object v7, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v8, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    iget-object v9, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    iget-object v10, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    iget-object v11, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    iget-object v12, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 934
    .restart local v4    # "mFrame":Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;
    iget v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->top:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;->setTop(I)V

    .line 935
    iget v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->minInterval:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;->setMinInterval(I)V

    .line 936
    const/4 v5, -0x2

    const/4 v6, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    .line 938
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addSprite(Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;)V

    goto/16 :goto_1

    .line 945
    .end local v4    # "mFrame":Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;
    .end local v15    # "endName":Ljava/lang/String;
    :cond_dd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    return-object v5
.end method

.method public pauseAnimation()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "XmlParserView"

    const-string v1, "pauseAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->pauseAnimation()V

    .line 117
    :cond_0
    return-void
.end method

.method public playAnimation()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    if-nez v0, :cond_0

    .line 95
    const-string v0, "XmlParserView"

    const-string v1, "playAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->playAnimation()V

    .line 99
    :cond_0
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 1015
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 964
    return-void
.end method

.method public resumeAnimation()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "XmlParserView"

    const-string v1, "resumeAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->resumeAnimation()V

    .line 108
    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 989
    const-string v0, "XmlParserView"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->stopAnimation()V

    .line 991
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 982
    const-string v0, "XmlParserView"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->playAnimation()V

    .line 984
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1048
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 1033
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 955
    const-string v0, "XmlParserView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->playAnimation()V

    .line 958
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 997
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "XmlParserView"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->stopAnimation()V

    .line 127
    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 977
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 1043
    return-void
.end method
