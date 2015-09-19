.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;
.super Landroid/widget/LinearLayout;
.source "MiniViewCoverDigitalClockView.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mTime12HFormat:Ljava/lang/String; = "h:mm"

.field private static final mTime24HFormat:Ljava/lang/String; = "k:mm"

.field private static final mTimeAmPmFormat:Ljava/lang/String; = "aa"

.field private static final mTimeHour12Format:Ljava/lang/String; = "h"

.field private static final mTimeHour24Format:Ljava/lang/String; = "k"

.field private static final mTimeMinuteFormat:Ljava/lang/String; = "mm"


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmPmKr:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mDate:Landroid/widget/TextView;

.field private mDigitalClockManager:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

.field private mHours:Landroid/widget/TextView;

.field private mIs24HTime:Z

.field private mMinutes:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    .line 47
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 88
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    .line 47
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 83
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->init()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    .line 47
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 78
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->init()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    return p1
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 5

    .prologue
    .line 223
    const-string v0, ""

    .line 224
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "value":Ljava/lang/String;
    sget v1, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    .line 226
    .local v1, "resId_MM_dd":I
    sget v2, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    .line 228
    .local v2, "resId_dd_MM":I
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_1
    :goto_0
    return-object v0

    .line 230
    :cond_2
    const-string v4, "dd-MM-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDigitalClockManager:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateStyle()V

    .line 94
    return-void
.end method

.method private updateTime()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 157
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 163
    .local v3, "locale":Ljava/util/Locale;
    const-string v6, "mm"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "minutes":Ljava/lang/String;
    const-string v6, "aa"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "amPm":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "date":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    if-eqz v6, :cond_9

    .line 167
    const-string v6, "k:mm"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "time":Ljava/lang/String;
    const-string v6, "k"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "hours":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 171
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :cond_0
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 174
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mMinutes:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 190
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mMinutes:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_2
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mHours:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 193
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mHours:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_3
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mTime:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 196
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_4
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDate:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 199
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_5
    iget-boolean v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    if-nez v6, :cond_8

    .line 202
    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v6, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v6, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 203
    :cond_6
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    .line 204
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    if-eqz v6, :cond_7

    .line 205
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :cond_7
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_8
    :goto_1
    return-void

    .line 177
    .end local v2    # "hours":Ljava/lang/String;
    .end local v5    # "time":Ljava/lang/String;
    :cond_9
    const-string v6, "h:mm"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    .restart local v5    # "time":Ljava/lang/String;
    const-string v6, "h"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .restart local v2    # "hours":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    if-eqz v6, :cond_a

    .line 181
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :cond_a
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 184
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_b
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    .line 212
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    if-eqz v6, :cond_c

    .line 213
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :cond_c
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 99
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateStyle()V

    .line 102
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 103
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 109
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 110
    return-void
.end method

.method public updateStyle()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 113
    sget-object v4, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Digital clock style index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDigitalClockManager:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    invoke-virtual {v6}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->getCurrentStyleIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->removeAllViews()V

    .line 117
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDigitalClockManager:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    invoke-virtual {v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->getCurrentStyleResId()I

    move-result v3

    .line 118
    .local v3, "styleResId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_2

    .line 119
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 121
    .local v2, "style":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_minute:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mMinutes:Landroid/widget/TextView;

    .line 124
    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_hour:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mHours:Landroid/widget/TextView;

    .line 125
    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_time:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mTime:Landroid/widget/TextView;

    .line 126
    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_day:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDate:Landroid/widget/TextView;

    .line 127
    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_ampm:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    .line 128
    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_ampm_kr:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    .line 130
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "clockTypeface":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 135
    .local v1, "isCover2":Z
    if-eqz v1, :cond_3

    .line 136
    const-string v4, "system/fonts/SamsungSans-Num45.ttf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 142
    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mMinutes:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 143
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mMinutes:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mHours:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 146
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mHours:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mTime:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 149
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 153
    .end local v0    # "clockTypeface":Landroid/graphics/Typeface;
    .end local v1    # "isCover2":Z
    .end local v2    # "style":Landroid/content/res/TypedArray;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V

    .line 154
    return-void

    .line 138
    .restart local v0    # "clockTypeface":Landroid/graphics/Typeface;
    .restart local v1    # "isCover2":Z
    .restart local v2    # "style":Landroid/content/res/TypedArray;
    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/SAMSUNG_CLOCK_NUMERALS.TTF"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method
