.class Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;
.super Ljava/lang/Object;
.source "SettingsBackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiDisableRunnable"
.end annotation


# instance fields
.field final mNextPhase:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

.field final synthetic this$0:Lcom/android/providers/settings/SettingsBackupAgent;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/SettingsBackupAgent;Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;)V
    .locals 0
    .param p2, "next"    # Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;->mNextPhase:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    .line 418
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 425
    iget-object v3, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 426
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "wifi_scan_always_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 428
    .local v2, "scanAlways":I
    iget-object v3, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    # invokes: Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I
    invoke-static {v3, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->access$000(Lcom/android/providers/settings/SettingsBackupAgent;Z)I

    move-result v1

    .line 429
    .local v1, "retainedWifiState":I
    if-eqz v2, :cond_0

    .line 430
    const-string v3, "wifi_scan_always_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    :cond_0
    iget-object v3, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;->mNextPhase:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-virtual {v3, v1, v2}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->setPriorState(II)V

    .line 440
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    invoke-virtual {v4}, Lcom/android/providers/settings/SettingsBackupAgent;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiDisableRunnable;->mNextPhase:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    const-wide/16 v6, 0x9c4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    return-void
.end method
