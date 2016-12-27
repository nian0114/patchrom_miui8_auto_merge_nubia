.class Lcom/android/settings_ex/deviceinfo/Memory$2;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$2;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 325
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    const-string v4, "connected"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 343
    :cond_0
    return-void

    .line 335
    :cond_1
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory$2;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/Memory;->access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 337
    .local v1, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 338
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 339
    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onMediaScannerFinished()V

    goto :goto_0
.end method
