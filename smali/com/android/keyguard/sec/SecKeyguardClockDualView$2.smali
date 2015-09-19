.class Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockDualView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockDualView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clockfont"    # Ljava/lang/String;
    .param p2, "numfont"    # Ljava/lang/String;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {p1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockThemeTypeface:Landroid/graphics/Typeface;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$302(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockStyle()V

    .line 132
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockThemeTypeface:Landroid/graphics/Typeface;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$302(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 116
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    sput v0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mBatteryLevel:I

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    .line 118
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    .line 137
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    .line 123
    return-void
.end method
