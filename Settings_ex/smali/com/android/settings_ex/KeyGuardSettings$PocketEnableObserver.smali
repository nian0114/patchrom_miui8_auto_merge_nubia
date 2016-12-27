.class Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;
.super Landroid/database/ContentObserver;
.source "KeyGuardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/KeyGuardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/KeyGuardSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/KeyGuardSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/KeyGuardSettings;

    .line 87
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/KeyGuardSettings;

    # invokes: Lcom/android/settings_ex/KeyGuardSettings;->updatePocketSettings()V
    invoke-static {v0}, Lcom/android/settings_ex/KeyGuardSettings;->access$000(Lcom/android/settings_ex/KeyGuardSettings;)V

    .line 93
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/KeyGuardSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/KeyGuardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_palmrejection"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/KeyGuardSettings;

    # getter for: Lcom/android/settings_ex/KeyGuardSettings;->mPocketEnableObserver:Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;
    invoke-static {v3}, Lcom/android/settings_ex/KeyGuardSettings;->access$100(Lcom/android/settings_ex/KeyGuardSettings;)Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/KeyGuardSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/KeyGuardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/KeyGuardSettings;

    # getter for: Lcom/android/settings_ex/KeyGuardSettings;->mPocketEnableObserver:Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;
    invoke-static {v1}, Lcom/android/settings_ex/KeyGuardSettings;->access$100(Lcom/android/settings_ex/KeyGuardSettings;)Lcom/android/settings_ex/KeyGuardSettings$PocketEnableObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 104
    return-void
.end method
