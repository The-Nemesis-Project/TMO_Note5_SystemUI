.class public Lcom/android/systemui/qs/tiles/FloatingMessageTile;
.super Lcom/android/systemui/qs/QSTile;
.source "FloatingMessageTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final AIRMESSAGE_STATUS:Ljava/lang/String; = "airmessage_on"

.field private static final ASG_SETTING_CHANGE_ACTION:Ljava/lang/String; = "android.settings.AIRMESSAGE_SWITCH_CHANGED"

.field public static final DB_KEY_AIRMESSAGE_ON:Ljava/lang/String; = "airmessage_on"

.field private static final TAG:Ljava/lang/String; = "FloatingMessageTile"


# instance fields
.field public BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 56
    const-string v0, "com.bst.airmessage.quickpanel.onff"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airmessage_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/FloatingMessageTile$1;-><init>(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->init()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getTypeOfCover(Landroid/content/Context;)I
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 325
    const/4 v2, 0x2

    .line 326
    .local v2, "type":I
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 327
    .local v0, "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    .line 329
    .local v1, "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    .line 332
    .end local v1    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    return v2
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 192
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 195
    const-string v2, "FloatingMessageTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v3, :cond_1

    .line 198
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "airmessage_on"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    .line 208
    return-void

    .line 193
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 202
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "airmessage_on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private isCoverVerified(Landroid/content/Context;)Z
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->getTypeOfCover(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 310
    .local v0, "hasCover":Z
    :goto_0
    return v0

    .line 309
    .end local v0    # "hasCover":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWlanAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, "isAvailable":Z
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 338
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 340
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    const/4 v2, 0x1

    .line 344
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method private setAirMessageData(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 289
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 291
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airmessage_alert"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 294
    .local v0, "do_not_show_again":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airmessage_on"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 297
    .local v1, "isOn":I
    if-nez v0, :cond_1

    .line 298
    if-nez v1, :cond_0

    .line 299
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->showGuideDialog(I)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string v3, "FloatingMessageTile"

    const-string v4, "set AirMessage status to on"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 149
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 151
    .local v0, "mode":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 152
    return-void

    .line 149
    .end local v0    # "mode":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showGuideDialog(I)V
    .locals 11
    .param p1, "showagain_checkbox_flag"    # I

    .prologue
    const/16 v10, 0x7d8

    const/4 v5, 0x0

    .line 216
    const-string v7, "FloatingMessageTile"

    const-string v8, "showGuideDialog"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0400e1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 221
    .local v2, "mAirMessageDataAlertView":Landroid/view/View;
    const v7, 0x7f0e0437

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 222
    .local v1, "contentText":Landroid/widget/TextView;
    const v7, 0x7f0e0438

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 225
    .local v3, "mDisableAlertCheckBox":Landroid/widget/CheckBox;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->isWlanAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 228
    const v7, 0x7f0d0510

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 229
    const v7, 0x7f0d050f

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 235
    :goto_0
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 236
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/FloatingMessageTile$2;

    invoke-direct {v8, p0, v3}, Lcom/android/systemui/qs/tiles/FloatingMessageTile$2;-><init>(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/systemui/qs/tiles/FloatingMessageTile$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile$3;-><init>(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 258
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 262
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/FloatingMessageTile$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile$4;-><init>(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 268
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v6

    .line 269
    .local v6, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v6, :cond_1

    .line 270
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    .line 271
    .local v4, "mIsKeyguardOn":Z
    if-eqz v4, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    .line 273
    .local v5, "mIsKeyguardSecure":Z
    :cond_0
    if-eqz v4, :cond_4

    .line 274
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v7, :cond_3

    if-eqz v5, :cond_3

    .line 275
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/Window;->setType(I)V

    .line 285
    .end local v4    # "mIsKeyguardOn":Z
    .end local v5    # "mIsKeyguardSecure":Z
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 286
    return-void

    .line 231
    .end local v6    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_2
    const v7, 0x7f0d0512

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 232
    const v7, 0x7f0d0511

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 278
    .restart local v4    # "mIsKeyguardOn":Z
    .restart local v5    # "mIsKeyguardSecure":Z
    .restart local v6    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    .line 282
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 84
    const-string v4, "FloatingMessageTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 95
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->setAirMessageData(Z)V

    .line 97
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airmessage_on"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, "isOn":I
    if-ne v1, v3, :cond_0

    .line 102
    const-string v2, "FloatingMessageTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBroadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "on !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "airmessage_on"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isOn":I
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "airmessage_on"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    const-string v2, "FloatingMessageTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBroadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "off !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->setEnabled(Z)V

    .line 120
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    .line 121
    const-string v2, "FloatingMessageTile"

    const-string v3, "setActivateStatus: STATUS_OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 120
    :cond_3
    const/4 v2, 0x2

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 158
    return-void
.end method

.method public handleLongClick()V
    .locals 5

    .prologue
    .line 133
    const-string v2, "FloatingMessageTile"

    const-string v3, "handleLongClick "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.bst.airmessage"

    const-string v4, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    const/4 v1, 0x1

    .line 140
    .local v1, "isCoverAttached":Z
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->isCoverVerified(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->getTypeOfCover(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 144
    :cond_1
    const-string v2, "S View cover attached"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->handleLongClick()V

    .line 129
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f0d0230

    const/4 v5, 0x0

    const v4, 0x7f0d022f

    const/4 v2, 0x1

    .line 162
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 164
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 167
    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_1
    return-void

    .line 162
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 169
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f020793

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 175
    :pswitch_1
    const v1, 0x7f020792

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 176
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 181
    :pswitch_2
    const v1, 0x7f020791

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 182
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 189
    return-void
.end method

.method public userSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 213
    return-void
.end method
