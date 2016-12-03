.class Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;
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
    name = "WifiRestoreRunnable"
.end annotation


# instance fields
.field private restoredSupplicantData:[B

.field private restoredWifiConfigFile:[B

.field private retainedWifiState:I

.field private scanAlways:I

.field final synthetic this$0:Lcom/android/providers/settings/SettingsBackupAgent;


# direct methods
.method constructor <init>(Lcom/android/providers/settings/SettingsBackupAgent;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method incorporateWifiConfigFile(Landroid/app/backup/BackupDataInput;)V
    .locals 4
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;

    .prologue
    .line 467
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    .line 468
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    array-length v1, v1

    if-gtz v1, :cond_0

    .line 475
    :goto_0
    return-void

    .line 470
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SettingsBackupAgent"

    const-string v2, "Unable to read config file"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    goto :goto_0
.end method

.method incorporateWifiSupplicant(Landroid/app/backup/BackupDataInput;)V
    .locals 4
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;

    .prologue
    .line 456
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    .line 457
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    array-length v1, v1

    if-gtz v1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 459
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SettingsBackupAgent"

    const-string v2, "Unable to read supplicant data"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    if-eqz v0, :cond_5

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    const-string v1, "/data/misc/wifi/wpa_supplicant.conf"

    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    iget-object v3, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    array-length v3, v3

    # invokes: Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->access$100(Lcom/android/providers/settings/SettingsBackupAgent;Ljava/lang/String;[BI)V

    .line 486
    const-string v0, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v1, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3f2

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    # getter for: Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/settings/SettingsBackupAgent;->access$200()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    iget-object v3, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    array-length v3, v3

    # invokes: Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->access$300(Lcom/android/providers/settings/SettingsBackupAgent;Ljava/lang/String;[BI)V

    .line 496
    :cond_2
    iget v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->scanAlways:I

    if-eqz v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    iget v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->scanAlways:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 500
    :cond_3
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    iget v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->retainedWifiState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->retainedWifiState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I
    invoke-static {v1, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->access$000(Lcom/android/providers/settings/SettingsBackupAgent;Z)I

    .line 503
    :cond_5
    return-void

    .line 500
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setPriorState(II)V
    .locals 0
    .param p1, "retainedState"    # I
    .param p2, "always"    # I

    .prologue
    .line 451
    iput p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->retainedWifiState:I

    .line 452
    iput p2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->scanAlways:I

    .line 453
    return-void
.end method
