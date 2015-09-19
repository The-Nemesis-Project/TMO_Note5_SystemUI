.class public Lcom/android/systemui/statusbar/SystemBars;
.super Lcom/android/systemui/SystemUI;
.source "SystemBars.java"

# interfaces
.implements Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemBars"

.field private static final WAIT_FOR_BARS_TO_DIE:I = 0x1f4


# instance fields
.field private mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

.field private mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    const-string v0, "SystemBars"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createStatusBarFromConfig()V
    .locals 5

    .prologue
    .line 123
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    const v4, 0x7f0d01fb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "clsName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 125
    :cond_0
    const-string v3, "No status bar component configured"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 127
    :cond_1
    const/4 v0, 0x0

    .line 129
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 139
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SystemBars;->mComponents:Ljava/util/Map;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mComponents:Ljava/util/Map;

    .line 141
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 143
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 145
    return-void

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 135
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 136
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private createSubStatusBarFromConfig()V
    .locals 5

    .prologue
    .line 150
    const-string v1, "com.android.systemui.statusbar.phone.sub.SubPhoneStatusBar"

    .line 152
    .local v1, "clsName":Ljava/lang/String;
    const-string v3, "com.android.systemui.statusbar.phone.sub.SubPhoneStatusBar"

    if-eqz v3, :cond_0

    const-string v3, "com.android.systemui.statusbar.phone.sub.SubPhoneStatusBar"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 153
    :cond_0
    const-string v3, "No sub status bar component configured"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 155
    :cond_1
    const/4 v0, 0x0

    .line 157
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "com.android.systemui.statusbar.phone.sub.SubPhoneStatusBar"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 167
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SystemBars;->mComponents:Ljava/util/Map;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mComponents:Ljava/util/Map;

    .line 168
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 169
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 171
    return-void

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "Error loading sub status bar component: com.android.systemui.statusbar.phone.sub.SubPhoneStatusBar"

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 163
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 164
    .restart local v2    # "t":Ljava/lang/Throwable;
    const-string v3, "Error creating sub status bar component: com.android.systemui.statusbar.phone.sub.SubPhoneStatusBar"

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 119
    :cond_1
    return-void
.end method

.method public getStatusBar()Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method public getSubStatusBar()Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    :cond_1
    return-void
.end method

.method public onNoService()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SystemBars;->createStatusBarFromConfig()V

    .line 76
    return-void
.end method

.method public onServiceStartAttempt()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x1f4

    const/4 v3, 0x0

    .line 81
    iget-object v2, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    .line 84
    iput-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 98
    :goto_0
    return-wide v0

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    .line 93
    iput-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mSubStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    goto :goto_0

    .line 98
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor;

    const-string v1, "SystemBars"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    const-string v4, "bar_service_component"

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/ServiceMonitor;-><init>(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->start()V

    .line 60
    return-void
.end method
