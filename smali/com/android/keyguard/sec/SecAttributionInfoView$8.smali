.class Lcom/android/keyguard/sec/SecAttributionInfoView$8;
.super Ljava/lang/Object;
.source "SecAttributionInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecAttributionInfoView;->updateAttributionInfoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$1000(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$1000(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_wu_wallpaper_info_landing_page_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "landingPageUrl":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "flickr.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    .end local v0    # "landingPageUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 447
    .restart local v0    # "landingPageUrl":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # invokes: Lcom/android/keyguard/sec/SecAttributionInfoView;->launchBrowser(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$800(Lcom/android/keyguard/sec/SecAttributionInfoView;Ljava/lang/String;)V

    goto :goto_0
.end method
