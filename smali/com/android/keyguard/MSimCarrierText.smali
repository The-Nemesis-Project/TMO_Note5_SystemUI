.class public Lcom/android/keyguard/MSimCarrierText;
.super Lcom/android/keyguard/CarrierText;
.source "MSimCarrierText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimCarrierText"

.field private static mPlmn:[Ljava/lang/CharSequence;

.field private static mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private static mSpn:[Ljava/lang/CharSequence;

.field private static tele:Landroid/telephony/TelephonyManager;


# instance fields
.field private mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MSimCarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/android/keyguard/MSimCarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MSimCarrierText$1;-><init>(Lcom/android/keyguard/MSimCarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 134
    invoke-direct {p0}, Lcom/android/keyguard/MSimCarrierText;->initialize()V

    .line 135
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimCarrierText;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimCarrierText;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimCarrierText;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimCarrierText;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/MSimCarrierText;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040934

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 123
    .local v0, "numPhones":I
    new-array v1, v0, [Ljava/lang/CharSequence;

    sput-object v1, Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    .line 124
    new-array v1, v0, [Ljava/lang/CharSequence;

    sput-object v1, Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    .line 125
    new-array v1, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    sput-object v1, Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 126
    return-void
.end method


# virtual methods
.method public getNumberOfActiveSim()I
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getReadySimCount()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "count":I
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 248
    .local v1, "phone_on":[I
    iget-object v3, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v5

    .line 249
    iget-object v3, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v6

    .line 250
    const/4 v2, 0x0

    .local v2, "sub":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 251
    aget v3, v1, v2

    if-ne v3, v6, :cond_0

    .line 252
    add-int/lit8 v0, v0, 0x1

    .line 250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onAttachedToWindow()V

    .line 231
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/keyguard/MSimCarrierText;->tele:Landroid/telephony/TelephonyManager;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 236
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onDetachedFromWindow()V

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 242
    return-void
.end method

.method protected updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "simState"    # [Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # [Ljava/lang/CharSequence;
    .param p3, "spn"    # [Ljava/lang/CharSequence;

    .prologue
    .line 145
    const-string v8, "MSimCarrierText"

    const-string v9, "updateCarrierText()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v7, ""

    .line 147
    .local v7, "text":Ljava/lang/CharSequence;
    const-string v8, "ril.MSIMM"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "mSimMode":Ljava/lang/String;
    const-string v8, "gsm.sim.state"

    const-string v9, "ABSENT"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "mSimstate_1":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104011b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 152
    invoke-virtual {p0, v7}, Lcom/android/keyguard/MSimCarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, p1

    if-ge v1, v8, :cond_13

    .line 157
    aget-object v8, p1, v1

    aget-object v9, p2, v1

    aget-object v10, p3, v1

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 159
    .local v0, "displayText":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 160
    iget-object v8, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 161
    const-string v0, ""

    .line 164
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 166
    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v7, v0

    .line 156
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 167
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 175
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getNumberOfActiveSim()I

    move-result v5

    .line 176
    .local v5, "numOfActiveSim":I
    const/4 v8, 0x1

    if-le v5, v8, :cond_f

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "insertedMultiSim":Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isHKFeature()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 179
    :cond_7
    const/4 v8, 0x2

    if-ne v5, v8, :cond_8

    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getReadySimCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    const/4 v2, 0x1

    .line 183
    :goto_4
    if-eqz v2, :cond_c

    .line 184
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v7, v0

    :goto_5
    goto :goto_3

    .line 179
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 181
    :cond_9
    const/4 v8, 0x1

    if-le v5, v8, :cond_a

    const/4 v2, 0x1

    :goto_6
    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    .line 184
    :cond_b
    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 188
    :cond_c
    const/4 v8, 0x2

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    .line 189
    .local v6, "simActive":[I
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "phone1_on"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    aput v9, v6, v8

    .line 190
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "phone2_on"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    aput v9, v6, v8

    .line 191
    const/4 v8, 0x0

    aget v8, v6, v8

    if-nez v8, :cond_d

    .line 192
    move-object v7, v0

    goto/16 :goto_3

    .line 193
    :cond_d
    const/4 v8, 0x1

    aget v8, v6, v8

    if-nez v8, :cond_3

    .line 194
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    move-object v7, v0

    :cond_e
    goto/16 :goto_3

    .line 198
    .end local v2    # "insertedMultiSim":Z
    .end local v6    # "simActive":[I
    :cond_f
    const-string v8, "ABSENT,"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "ABSENT,ABSENT"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 199
    move-object v7, v0

    goto/16 :goto_3

    .line 204
    :cond_10
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 205
    sget-object v8, Lcom/android/keyguard/MSimCarrierText;->tele:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 209
    :cond_11
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    move-object v7, v0

    :cond_12
    goto/16 :goto_3

    .line 214
    .end local v0    # "displayText":Ljava/lang/CharSequence;
    .end local v5    # "numOfActiveSim":I
    :cond_13
    const-string v8, "MSimCarrierText"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCarrierText: text = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0, v7}, Lcom/android/keyguard/MSimCarrierText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 188
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
