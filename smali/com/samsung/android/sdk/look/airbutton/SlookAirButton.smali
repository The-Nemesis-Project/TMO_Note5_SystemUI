.class public Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
.super Ljava/lang/Object;
.source "SlookAirButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_AUTO:I = -0x1

.field public static final DIRECTION_LEFT:I = 0x3

.field public static final DIRECTION_LOWER:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x4

.field public static final DIRECTION_UPPER:I = 0x1

.field public static final GRAVITY_AUTO:I = -0x1

.field public static final GRAVITY_BOTTOM:I = 0x2

.field public static final GRAVITY_HOVER_POINT:I = 0x5

.field public static final GRAVITY_LEFT:I = 0x3

.field public static final GRAVITY_RIGHT:I = 0x4

.field public static final GRAVITY_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AirButtonWidget"

.field public static final UI_TYPE_LIST:I = 0x2

.field public static final UI_TYPE_MENU:I = 0x1


# instance fields
.field private mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mItemSelectListener:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;

.field private mUIType:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "uiType"    # I

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mUIType:I

    .line 106
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_0
    if-nez p2, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    iput p3, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mUIType:I

    .line 143
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mItemSelectListener:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    return-object v0
.end method

.method public static isSupport()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 310
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    .line 312
    .local v0, "mSlook":Lcom/samsung/android/sdk/look/Slook;
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSupport(I)Z
    .locals 2
    .param p1, "ver"    # I

    .prologue
    const/4 v0, 0x1

    .line 299
    iget-object v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->dismiss()V

    goto :goto_0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->getDirection()I

    move-result v0

    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->getGravity()I

    move-result v0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    goto :goto_0
.end method

.method public isAutoControlEnabled()Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 388
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isBounceEffectEnabled()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isBounceEffectEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isScrollEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public moveAnimationIcon(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 417
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The mode is auto control. Please disable auto control."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The event isn\'t ACTION_HOVER_MOVE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverMove(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public setAutoControlEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 372
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setBounceEffectEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setBounceEffectEnabled(Z)V

    goto :goto_0
.end method

.method public setDirection(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 217
    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 220
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 228
    :pswitch_0
    const-string v0, "AirButtonWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The direction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") was wrong."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mUIType:I

    if-ne v0, v3, :cond_2

    if-eq p1, v3, :cond_1

    if-ne p1, v4, :cond_2

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Direction is wrong.you cann\'t use UPPER/LOWER direction with UI_TYPE_MENU."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mUIType:I

    if-ne v0, v4, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 237
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Direction is wrong.you cann\'t use LEFT/RIGHT direction with UI_TYPE_LIST."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setDirection(I)V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setGravity(I)V
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    const/4 v3, 0x1

    .line 174
    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 177
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 187
    :pswitch_0
    const-string v0, "AirButtonWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The gravity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") was wrong."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mUIType:I

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Gravity is wrong. You cann\'t use GRAVITY_LEFT/GRAVITY_RIGHT with UI_TYPE_MENU."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setGravity(I)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mItemSelectListener:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    .line 159
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mItemSelectListener:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$1;-><init>(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->setPosition(II)V

    goto :goto_0
.end method

.method public setScrollEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 275
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setScrollEnabled(Z)V

    goto :goto_0
.end method

.method public show(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 456
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The mode is auto control. Please disable auto control."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The event isn\'t TOOL_TYPE_STYLUS."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverButtonSecondary(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public startAnimationIcon(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 398
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The mode is auto control. Please disable auto control."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The event isn\'t ACTION_HOVER_ENTER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverEnter(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public stopAnimationIcon(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The mode is auto control. Please disable auto control."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The event isn\'t ACTION_HOVER_EXIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->mAirButtonImpl:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverExit(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method
