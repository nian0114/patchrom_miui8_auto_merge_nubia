.class Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    .line 138
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updatePocketSettings()V
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$100(Lcom/android/settings_ex/DisplaySettings;)V

    .line 143
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_palmrejection"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mPocketEnableObserver:Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;
    invoke-static {v3}, Lcom/android/settings_ex/DisplaySettings;->access$200(Lcom/android/settings_ex/DisplaySettings;)Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mPocketEnableObserver:Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$200(Lcom/android/settings_ex/DisplaySettings;)Lcom/android/settings_ex/DisplaySettings$PocketEnableObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 153
    return-void
.end method
