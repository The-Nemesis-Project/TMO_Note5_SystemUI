.class public Lcom/android/systemui/crop/ScaledCropView;
.super Landroid/widget/FrameLayout;
.source "ScaledCropView.java"


# instance fields
.field private mCropView:Lcom/android/systemui/crop/CropView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/crop/ScaledCropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/crop/ScaledCropView;->mCropView:Lcom/android/systemui/crop/CropView;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/systemui/crop/ScaledCropView;->mCropView:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/crop/CropView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public setCropView(Lcom/android/systemui/crop/CropView;)V
    .locals 0
    .param p1, "cropView"    # Lcom/android/systemui/crop/CropView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui/crop/ScaledCropView;->mCropView:Lcom/android/systemui/crop/CropView;

    .line 35
    return-void
.end method
