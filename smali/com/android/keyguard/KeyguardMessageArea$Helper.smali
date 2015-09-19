.class public Lcom/android/keyguard/KeyguardMessageArea$Helper;
.super Ljava/lang/Object;
.source "KeyguardMessageArea.java"

# interfaces
.implements Lcom/android/keyguard/SecurityMessageDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# instance fields
.field mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    .line 163
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_bouncer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_1

    .line 167
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_signature:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_2

    .line 171
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_backup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_3

    .line 175
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_backup_pin_usa:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_4

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find keyguard_message_area in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_4
    return-void
.end method


# virtual methods
.method public hideBouncer(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->showMessage(I)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->access$300(Lcom/android/keyguard/KeyguardMessageArea;I)V

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 271
    return-void
.end method

.method public removeShortcutMessage()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 292
    return-void
.end method

.method public setMessage(IIZ)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "iconResId"    # I
    .param p3, "important"    # Z

    .prologue
    const/4 v2, 0x0

    .line 252
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput p2, v0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2, v2, v2, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 258
    :cond_0
    return-void
.end method

.method public setMessage(IZ)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "important"    # Z

    .prologue
    .line 223
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "isDuplicatedMessage":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 226
    .local v2, "msg":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const/4 v1, 0x1

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v2, v3, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 229
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    .line 230
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 232
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPoorPerformanceModel()Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 236
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 237
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardMessageArea;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    .end local v0    # "fadeIn":Landroid/view/animation/Animation;
    .end local v1    # "isDuplicatedMessage":Z
    .end local v2    # "msg":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public varargs setMessage(IZ[Ljava/lang/Object;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "important"    # Z
    .param p3, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 244
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 249
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;IZ)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "iconResId"    # I
    .param p3, "important"    # Z

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object p1, v1, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 211
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput p2, v1, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    .line 212
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 213
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, p2, v2, v2, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 215
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->length()I

    move-result v1

    const/16 v2, 0x46

    if-le v1, v2, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float v0, v1, v2

    .line 217
    .local v0, "sizeIndex":F
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x41700000    # 15.0f

    div-float v3, v0, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(F)V

    .line 220
    .end local v0    # "sizeIndex":F
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;Z)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z

    .prologue
    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "isDuplicatedMessage":Z
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object p1, v2, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 193
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    .line 194
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 196
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPoorPerformanceModel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 200
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 201
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAnimation(Landroid/view/animation/Animation;)V

    .line 202
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardMessageArea;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    .end local v0    # "fadeIn":Landroid/view/animation/Animation;
    .end local v1    # "isDuplicatedMessage":Z
    :cond_1
    return-void
.end method

.method public setMessageAreaVisiblity(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 300
    :cond_0
    if-eqz p1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShortcutMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 280
    if-lez p1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 282
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    .line 284
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 287
    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public setShortcutMessageLayout()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->setShortcutReleasedLayout()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageArea;->access$200(Lcom/android/keyguard/KeyguardMessageArea;)V

    .line 185
    return-void
.end method

.method public setTimeout(I)V
    .locals 4
    .param p1, "timeoutMs"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    int-to-long v2, p1

    iput-wide v2, v0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 276
    return-void
.end method

.method public showBouncer(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 262
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->hideMessage(IZ)V
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->access$000(Lcom/android/keyguard/KeyguardMessageArea;IZ)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 265
    return-void
.end method
