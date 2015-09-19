.class public Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
.super Lcom/android/keyguard/sec/SecKeyguardCircleView;
.source "SecKeyguardCircleEmergencyView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$7;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final ACTION_EMERGENCY_LIST:Ljava/lang/String; = "com.samsung.phone.EmergencyDialer.LIST"

.field private static final SIM_SLOT1:I = 0x0

.field private static final SIM_SLOT2:I = 0x1

.field private static final SKT_UNREG_SIM:I = 0x13

.field private static final SYSTEM_SIMTYPE:Ljava/lang/String; = "ril.simtype"

.field private static final TAG:Ljava/lang/String; = "SecKeyguardCircleEmergencyView"


# instance fields
.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsCallStateOffHook:Z

.field private mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

.field private mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

.field private mPasswordEntryView:Landroid/view/View;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mServiceState:I

.field private mServiceState2:I

.field private mTelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    .line 56
    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    .line 57
    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    .line 58
    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 60
    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    .line 61
    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    .line 73
    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    .line 75
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 104
    sget v0, Lcom/android/keyguard/R$id;->circle_arrow_emergnecy:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mArrowResId:I

    .line 105
    sget v0, Lcom/android/keyguard/R$id;->emergency_button:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentResId:I

    .line 106
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->PHONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    .line 107
    return-void
.end method

.method private VoIPIsInUse()Z
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateEmergencyCallButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    return p1
.end method

.method private callToEmergencyLine(Ljava/lang/String;)V
    .locals 5
    .param p1, "emergencyNumber"    # Ljava/lang/String;

    .prologue
    .line 645
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 647
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 649
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SecKeyguardCircleEmergencyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMultiSimLocked()Z
    .locals 4

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 680
    .local v0, "isSimLocked":Z
    const-string v1, "SecKeyguardCircleEmergencyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMultiSimLocked()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return v0
.end method

.method private launchEmergencyAUSDialer()V
    .locals 4

    .prologue
    .line 593
    const-string v0, ""

    .line 595
    .local v0, "emergencyNumber":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/keyguard/PasswordTextView;

    if-eqz v2, :cond_1

    .line 596
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/PasswordTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 609
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->callToEmergencyLine(Ljava/lang/String;)V

    .line 613
    :goto_1
    return-void

    .line 598
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 599
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v1

    .line 606
    .local v1, "ex":Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_0

    .line 601
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 602
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 611
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyDialler()V

    goto :goto_1
.end method

.method private launchEmergencyDialler()V
    .locals 8

    .prologue
    .line 616
    const/4 v0, 0x1

    .line 617
    .local v0, "bypassHandler":Z
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 619
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10800000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 623
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 624
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v5, 0x10000

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 627
    .local v4, "resolved":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    .line 628
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V

    .line 636
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 637
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 641
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "resolved":Landroid/content/pm/ResolveInfo;
    :goto_1
    return-void

    .line 634
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v4    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "resolved":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "SecKeyguardCircleEmergencyView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot launch activity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showEmergencyCallList()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 319
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    .line 320
    .local v5, "simState":I
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1

    move v1, v6

    .line 321
    .local v1, "isAirplaneModeOn":Z
    :goto_0
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    .line 323
    .local v2, "isSecure":Z
    if-nez v2, :cond_3

    .line 324
    if-ne v5, v7, :cond_2

    .line 347
    :cond_0
    :goto_1
    return v7

    .end local v1    # "isAirplaneModeOn":Z
    .end local v2    # "isSecure":Z
    :cond_1
    move v1, v7

    .line 320
    goto :goto_0

    .line 326
    .restart local v1    # "isAirplaneModeOn":Z
    .restart local v2    # "isSecure":Z
    :cond_2
    if-nez v5, :cond_4

    .line 327
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_3
    move v7, v6

    .line 347
    goto :goto_1

    .line 330
    :cond_4
    const/4 v8, 0x5

    if-ne v5, v8, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "ril.simtype"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const/16 v8, 0x13

    const-string v9, "ril.simtype"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 336
    :cond_5
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v8

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId(I)I

    move-result v4

    .line 337
    .local v4, "phoneid":I
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 338
    .local v0, "currentlySetCarrier":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104091f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 339
    .local v3, "limitSvc":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 340
    if-eqz v0, :cond_3

    .line 341
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1
.end method

.method private updateCurrentView()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 685
    const-string v5, "SecKeyguardCircleEmergencyView"

    const-string v6, "updateCurrentView()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    .line 689
    const/4 v2, 0x0

    .line 691
    .local v2, "knoxVisibility":I
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v5

    if-nez v5, :cond_0

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "knoxCustomLockScreenState":I
    const-string v5, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 694
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v1

    .line 695
    .local v1, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    const-string v5, "getLockScreenHiddenItems"

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 698
    if-eqz v1, :cond_0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 699
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_0

    .line 700
    const-string v5, "SecKeyguardCircleEmergencyView"

    const-string v6, "KnoxCustom: Emergency Button is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/16 v2, 0x8

    .line 705
    .end local v0    # "knoxCustomLockScreenState":I
    .end local v1    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->setArrowVisibility(I)V

    .line 707
    const/16 v5, 0x8

    if-ne v2, v5, :cond_2

    .line 736
    .end local v2    # "knoxVisibility":I
    :cond_1
    :goto_0
    return-void

    .line 712
    .restart local v2    # "knoxVisibility":I
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 713
    const/4 v4, 0x0

    .line 714
    .local v4, "visibility":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 715
    const-string v5, "SecKeyguardCircleEmergencyView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMCC :: serviceState1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v5, "SecKeyguardCircleEmergencyView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMCC :: serviceState2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-eq v5, v8, :cond_3

    iget v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-ne v5, v9, :cond_5

    :cond_3
    iget v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    if-eq v5, v8, :cond_4

    iget v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    if-ne v5, v9, :cond_5

    .line 721
    :cond_4
    const-string v5, "SecKeyguardCircleEmergencyView"

    const-string v6, "view to gone"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/16 v4, 0x8

    .line 732
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 733
    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->setArrowVisibility(I)V

    goto :goto_0

    .line 725
    :cond_6
    const-string v5, "SecKeyguardCircleEmergencyView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMCC :: serviceState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-eq v5, v8, :cond_7

    iget v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-ne v5, v9, :cond_5

    .line 728
    :cond_7
    const-string v5, "SecKeyguardCircleEmergencyView"

    const-string v6, "view to gone"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/16 v4, 0x8

    goto :goto_1
.end method

.method private updateEmergencyCallButton()V
    .locals 3

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateCurrentView()V

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    .line 463
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    .line 476
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 479
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_phone_shortcut_tts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_phone_shortcut_tts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected getShortcutReleasedTextResId()I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 131
    sget v1, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    .line 132
    .local v1, "resId":I
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kids_home_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 135
    .local v0, "mKidsModeEnabled":Z
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->isMultiSimLocked()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 140
    sget v1, Lcom/android/keyguard/R$string;->kg_shortcut_phonecall:I

    .line 147
    :goto_1
    return v1

    .end local v0    # "mKidsModeEnabled":Z
    :cond_1
    move v0, v2

    .line 132
    goto :goto_0

    .line 142
    .restart local v0    # "mKidsModeEnabled":Z
    :cond_2
    sget v1, Lcom/android/keyguard/R$string;->kg_shortcut_emergencycall:I

    goto :goto_1

    .line 145
    :cond_3
    sget v1, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    goto :goto_1
.end method

.method protected getShortcutTextResId()I
    .locals 2

    .prologue
    .line 117
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    .line 118
    .local v0, "resId":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-nez v1, :cond_0

    .line 119
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_emergencycall_au:I

    .line 127
    :goto_0
    return v0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    goto :goto_0

    .line 122
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-eqz v1, :cond_2

    .line 123
    const v0, 0x104039b

    goto :goto_0

    .line 125
    :cond_2
    sget v0, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    goto :goto_0
.end method

.method protected getToastTextResId()I
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-nez v0, :cond_0

    .line 111
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_emergencycall:I

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 152
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onAttachedToWindow()V

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 154
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 178
    :cond_3
    :goto_0
    return-void

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onDetachedFromWindow()V

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 184
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onFinishInflate()V

    .line 205
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 207
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 208
    .local v0, "subId":[I
    if-eqz v0, :cond_5

    .line 209
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;

    aget v2, v0, v3

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 223
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 224
    if-eqz v0, :cond_6

    .line 225
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$3;

    aget v2, v0, v3

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 252
    .end local v0    # "subId":[I
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 253
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    .line 263
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    .line 276
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateEmergencyCallButton()V

    .line 277
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 278
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 316
    :cond_4
    return-void

    .line 221
    .restart local v0    # "subId":[I
    :cond_5
    const-string v1, "SecKeyguardCircleEmergencyView"

    const-string v2, "Slot 1 : subscription Id is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_6
    const-string v1, "SecKeyguardCircleEmergencyView"

    const-string v2, "Slot 2 : subscription Id is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 240
    .end local v0    # "subId":[I
    :cond_7
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_1

    .line 267
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_9

    .line 268
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 270
    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    .line 271
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    goto :goto_2
.end method

.method public onUnlockExecuted()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 361
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onUnlockExecuted()V

    .line 362
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->isSecure()Z

    move-result v2

    .line 365
    .local v2, "isSecure":Z
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 366
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    .line 368
    .local v0, "controller":Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->startPreviewAnimation(Z)V

    .line 372
    .end local v0    # "controller":Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 373
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2

    .line 374
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 377
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kids_home_mode"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_7

    .line 380
    .local v3, "mKidsModeEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->isMultiSimLocked()Z

    move-result v4

    if-nez v4, :cond_8

    if-nez v3, :cond_8

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->showEmergencyCallList()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_8

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 387
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takePhoneShortcut(Z)V

    .line 393
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 395
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    .line 397
    :cond_6
    return-void

    .end local v3    # "mKidsModeEnabled":Z
    :cond_7
    move v3, v4

    .line 377
    goto :goto_0

    .line 388
    .restart local v3    # "mKidsModeEnabled":Z
    :cond_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 389
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takeEmergencyCallList(Z)V

    goto :goto_1

    .line 391
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takeEmergencyCallAction(Z)V

    goto :goto_1
.end method

.method public onUnlockViewPressed()V
    .locals 2

    .prologue
    .line 352
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onUnlockViewPressed()V

    .line 353
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviewShortcutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->showSwipeCircleEffect(Z)V

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->showSwipeCircleEffect(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onWindowFocusChanged(Z)V

    .line 403
    if-eqz p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    .line 408
    :cond_0
    return-void
.end method

.method public setPasswordEntryView(Landroid/view/View;)V
    .locals 0
    .param p1, "passwordEntryView"    # Landroid/view/View;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    .line 741
    return-void
.end method

.method public setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V
    .locals 3
    .param p1, "state"    # Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 413
    const-string v0, "SecKeyguardCircleEmergencyView"

    const-string v1, "setShortCutImageResource() mEmergencyCallButton is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$7;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 431
    :goto_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 424
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 427
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_phone_shortcut_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 441
    :cond_3
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$7;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 452
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_phone_shortcut_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 443
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 446
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 449
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 441
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public takeEmergencyCallAction(Z)V
    .locals 5
    .param p1, "isSecure"    # Z

    .prologue
    const/4 v4, 0x1

    .line 560
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 562
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->VoIPIsInUse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    const/4 v0, 0x1

    .line 577
    .local v0, "bypassHandler":Z
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 580
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyAUSDialer()V

    .line 587
    :goto_1
    const-string v1, "CALL"

    invoke-virtual {p0, v1, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->insertLog(Ljava/lang/String;Z)V

    goto :goto_0

    .line 583
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyDialler()V

    goto :goto_1
.end method

.method public takeEmergencyCallList(Z)V
    .locals 6
    .param p1, "isSecure"    # Z

    .prologue
    .line 529
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 530
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 551
    :goto_0
    return-void

    .line 537
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 541
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 544
    const-string v2, "CALL"

    invoke-virtual {p0, v2, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->insertLog(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SecKeyguardCircleEmergencyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public takePhoneShortcut(Z)V
    .locals 5
    .param p1, "isSecure"    # Z

    .prologue
    const/4 v4, 0x1

    .line 493
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 494
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 526
    :goto_0
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x1

    .line 498
    .local v0, "bypassHandler":Z
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 499
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v2, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;Z)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0

    .line 523
    :cond_1
    const-string v1, "SecKeyguardCircleEmergencyView"

    const-string v2, "mKeyguardSecurityCallback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
