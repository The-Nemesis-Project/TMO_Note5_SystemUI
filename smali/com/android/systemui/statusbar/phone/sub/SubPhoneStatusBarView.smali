.class public Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;
.super Landroid/widget/FrameLayout;
.source "SubPhoneStatusBarView.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SubPhoneStatusBarView"


# instance fields
.field mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    .line 35
    return-void
.end method
