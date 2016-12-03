.class Lcom/android/providers/settings/SettingsProvider$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/settings/SettingsProvider;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/settings/SettingsProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/settings/SettingsProvider;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$2;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$2;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider;->access$100(Lcom/android/providers/settings/SettingsProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$2;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # getter for: Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider;->access$000(Lcom/android/providers/settings/SettingsProvider;)Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->onPackageRemovedLocked(Ljava/lang/String;I)V

    .line 598
    monitor-exit v1

    .line 599
    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
