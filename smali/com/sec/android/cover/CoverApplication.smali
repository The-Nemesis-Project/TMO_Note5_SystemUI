.class public Lcom/sec/android/cover/CoverApplication;
.super Landroid/app/Application;
.source "CoverApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/sec/android/cover/CoverApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/CoverApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    sget-object v0, Lcom/sec/android/cover/CoverApplication;->TAG:Ljava/lang/String;

    const-string v1, "onCreate : Cover application created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {p0}, Lcom/sec/android/cover/CoverUtils$ASSERT;->init(Landroid/content/Context;)V

    .line 21
    return-void
.end method
