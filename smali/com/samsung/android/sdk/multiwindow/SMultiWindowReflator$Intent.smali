.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;
.super Ljava/lang/Object;
.source "SMultiWindowReflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intent"
.end annotation


# static fields
.field public static EXTRA_WINDOW_DEFAULT_SIZE:Ljava/lang/String;

.field public static EXTRA_WINDOW_LAST_SIZE:Ljava/lang/String;

.field public static EXTRA_WINDOW_MODE:Ljava/lang/String;

.field public static EXTRA_WINDOW_POSITION:Ljava/lang/String;

.field public static EXTRA_WINDOW_SCALE:Ljava/lang/String;

.field static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 93
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "EXTRA_WINDOW_MODE"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "EXTRA_WINDOW_POSITION"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "EXTRA_WINDOW_DEFAULT_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "EXTRA_WINDOW_LAST_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "EXTRA_WINDOW_SCALE"

    aput-object v6, v4, v5

    sput-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    .line 102
    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v4

    .line 103
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 105
    :try_start_0
    const-class v4, Landroid/content/Intent;

    sget-object v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 106
    .local v3, "src":Ljava/lang/reflect/Field;
    const-class v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;

    sget-object v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 107
    .local v1, "dst":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "dst":Ljava/lang/reflect/Field;
    .end local v3    # "src":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void

    .line 110
    :catch_0
    move-exception v4

    goto :goto_1

    .line 109
    :catch_1
    move-exception v4

    goto :goto_1

    .line 108
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
