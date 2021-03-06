.class public Lcom/android/keyguard/sec/FontEffectUtil;
.super Ljava/lang/Object;
.source "FontEffectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;,
        Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;,
        Lcom/android/keyguard/sec/FontEffectUtil$Stroke;,
        Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FontEffectParsingInfo"

.field private static mInstance:Lcom/android/keyguard/sec/FontEffectUtil;


# instance fields
.field public mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

.field public mIsSetDropShadow:Z

.field public mIsSetLinearGradient:Z

.field public mIsSetOuterGlow:Z

.field public mIsSetStroke:Z

.field public mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

.field public mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

.field public mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetDropShadow:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetStroke:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetOuterGlow:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetLinearGradient:Z

    .line 51
    new-instance v0, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;-><init>(Lcom/android/keyguard/sec/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    .line 52
    new-instance v0, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;-><init>(Lcom/android/keyguard/sec/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    .line 53
    new-instance v0, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;-><init>(Lcom/android/keyguard/sec/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    .line 54
    new-instance v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;-><init>(Lcom/android/keyguard/sec/FontEffectUtil;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    .line 55
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/FontEffectUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Lcom/android/keyguard/sec/FontEffectUtil;->mInstance:Lcom/android/keyguard/sec/FontEffectUtil;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/keyguard/sec/FontEffectUtil;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/FontEffectUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/FontEffectUtil;->mInstance:Lcom/android/keyguard/sec/FontEffectUtil;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/FontEffectUtil;->mInstance:Lcom/android/keyguard/sec/FontEffectUtil;

    return-object v0
.end method

.method private isAvailable()Z
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetDropShadow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetOuterGlow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetStroke:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    .line 182
    :cond_1
    const-string v0, "FontEffectParsingInfo"

    const-string v1, "Font effect is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseStringToColor(Ljava/lang/String;)I
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 188
    .local v2, "i":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "hex":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, "result":I
    return v1
.end method

.method private stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "tokenizer"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 198
    .local v2, "strSplit":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 199
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v2
.end method


# virtual methods
.method public parsingFontEffectString(Ljava/lang/String;)Z
    .locals 14
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 78
    const/4 v6, 0x0

    .line 79
    .local v6, "isparsed":Z
    const-string v7, "|"

    invoke-direct {p0, p1, v7}, Lcom/android/keyguard/sec/FontEffectUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "firstSplite":[Ljava/lang/String;
    if-eqz v2, :cond_6

    array-length v7, v2

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 82
    aget-object v7, v2, v10

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "finalSplit":[Ljava/lang/String;
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetDropShadow:Z

    .line 84
    const-string v7, "FontEffectParsingInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-boolean v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetDropShadow:Z

    if-eqz v7, :cond_0

    .line 87
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    aget-object v8, v1, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->offset:F

    .line 88
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    aget-object v8, v1, v12

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->softness:F

    .line 89
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    aget-object v8, v1, v13

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->blendingOpacity:F

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 93
    aget-object v7, v2, v11

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v7, "FontEffectParsingInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetStroke:Z

    .line 96
    iget-boolean v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetStroke:Z

    if-eqz v7, :cond_1

    .line 98
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    aget-object v8, v1, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->size:F

    .line 99
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    aget-object v8, v1, v12

    invoke-direct {p0, v8}, Lcom/android/keyguard/sec/FontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->color:I

    .line 100
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    aget-object v8, v1, v13

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->blendingOpacity:F

    .line 102
    :cond_1
    const/4 v1, 0x0

    .line 104
    aget-object v7, v2, v12

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v7, "FontEffectParsingInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetOuterGlow:Z

    .line 107
    iget-boolean v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetOuterGlow:Z

    if-eqz v7, :cond_2

    .line 109
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    aget-object v8, v1, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->size:F

    .line 110
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    aget-object v8, v1, v12

    invoke-direct {p0, v8}, Lcom/android/keyguard/sec/FontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->color:I

    .line 111
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    aget-object v8, v1, v13

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->blendingOpacity:F

    .line 113
    :cond_2
    const/4 v1, 0x0

    .line 115
    aget-object v7, v2, v13

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v7, "FontEffectParsingInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EFFECT_SPLIT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetLinearGradient:Z

    .line 118
    iget-boolean v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v7, :cond_4

    .line 121
    const/4 v4, 0x1

    .line 123
    .local v4, "index":I
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aget-object v8, v1, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->scale:F

    .line 124
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aget-object v7, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    .local v0, "arraySize":I
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    new-array v8, v0, [I

    iput-object v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->colors:[I

    .line 127
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    new-array v8, v0, [F

    iput-object v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->alphas:[F

    .line 128
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    new-array v8, v0, [F

    iput-object v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->positions:[F

    .line 130
    const/4 v3, 0x0

    .local v3, "i":I
    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 131
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->colors:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aget-object v8, v1, v5

    invoke-direct {p0, v8}, Lcom/android/keyguard/sec/FontEffectUtil;->parseStringToColor(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    .line 132
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->alphas:[F

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    aget-object v8, v1, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v3

    .line 133
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v7, v7, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->positions:[F

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aget-object v8, v1, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v3

    .line 130
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 136
    :cond_3
    array-length v7, v1

    if-ge v5, v7, :cond_5

    .line 137
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    aget-object v8, v1, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->blendingOpacity:F

    .line 142
    .end local v0    # "arraySize":I
    .end local v3    # "i":I
    .end local v5    # "index":I
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 143
    const/4 v6, 0x1

    .line 147
    .end local v1    # "finalSplit":[Ljava/lang/String;
    :goto_2
    const-string v7, "FontEffectParsingInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isparsed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v6

    .line 139
    .restart local v0    # "arraySize":I
    .restart local v1    # "finalSplit":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "index":I
    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->blendingOpacity:F

    goto :goto_1

    .line 145
    .end local v0    # "arraySize":I
    .end local v1    # "finalSplit":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "index":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public setTextFontEffect(Landroid/widget/TextView;)V
    .locals 7
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/keyguard/sec/FontEffectUtil;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetDropShadow:Z

    if-eqz v0, :cond_2

    .line 157
    const/high16 v1, 0x43120000    # 146.0f

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    iget v2, v0, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->offset:F

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    iget v3, v0, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->softness:F

    const/high16 v4, -0x1000000

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mDropShadow:Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;

    iget v5, v0, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->blendingOpacity:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 161
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetOuterGlow:Z

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    iget v0, v0, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->size:F

    iget-object v1, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    iget v1, v1, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->color:I

    iget-object v2, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mOuterGlow:Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;

    iget v2, v2, Lcom/android/keyguard/sec/FontEffectUtil$OuterGlow;->blendingOpacity:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->addOuterGlowTextEffect(FIF)I

    .line 166
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetStroke:Z

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    iget v0, v0, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->size:F

    iget-object v1, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    iget v1, v1, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->color:I

    iget-object v2, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mStroke:Lcom/android/keyguard/sec/FontEffectUtil$Stroke;

    iget v2, v2, Lcom/android/keyguard/sec/FontEffectUtil$Stroke;->blendingOpacity:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 170
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mIsSetLinearGradient:Z

    if-eqz v0, :cond_0

    .line 171
    const/high16 v1, 0x42b40000    # 90.0f

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget v2, v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->scale:F

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v3, v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->colors:[I

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v4, v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->alphas:[F

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget-object v5, v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->positions:[F

    iget-object v0, p0, Lcom/android/keyguard/sec/FontEffectUtil;->mLinearGradient:Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;

    iget v6, v0, Lcom/android/keyguard/sec/FontEffectUtil$LinearGradient;->blendingOpacity:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->addLinearGradientTextEffect(FF[I[F[FF)I

    goto :goto_0
.end method
