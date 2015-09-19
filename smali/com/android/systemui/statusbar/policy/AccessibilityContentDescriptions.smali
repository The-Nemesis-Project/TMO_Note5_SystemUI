.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIFI_NO_CONNECTION:I = 0x7f0d0270


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        0x7f0d0263
        0x7f0d0264
        0x7f0d0265
        0x7f0d0266
        0x7f0d0269
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x7f0d026a
        0x7f0d026b
        0x7f0d026c
        0x7f0d026d
        0x7f0d026e
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x7f0d0270
        0x7f0d0271
        0x7f0d0272
        0x7f0d0273
        0x7f0d0274
    .end array-data

    .line 40
    :array_3
    .array-data 4
        0x7f0d0263
        0x7f0d0264
        0x7f0d0265
        0x7f0d0266
        0x7f0d0267
        0x7f0d0269
    .end array-data

    .line 49
    :array_4
    .array-data 4
        0x7f0d0263
        0x7f0d0264
        0x7f0d0265
        0x7f0d0266
        0x7f0d0267
        0x7f0d0268
        0x7f0d0269
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
