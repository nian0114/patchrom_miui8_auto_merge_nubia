.class Lcom/android/settings_ex/deviceinfo/Memory$1;
.super Landroid/os/storage/StorageEventListener;
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
    .line 184
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received storage state changed notification that "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " changed state from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mCategories"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/Memory;->access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/Memory;->access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 190
    .local v0, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 191
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # invokes: Lcom/android/settings_ex/deviceinfo/Memory;->getUpdatedVolume(Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    invoke-static {v4, v3}, Lcom/android/settings_ex/deviceinfo/Memory;->access$100(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 196
    .local v2, "newVolume":Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_3

    .end local v2    # "newVolume":Landroid/os/storage/StorageVolume;
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateStorageVolume(Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    .line 198
    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onStorageStateChanged()V

    .line 203
    .end local v0    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    return-void

    .restart local v0    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .restart local v2    # "newVolume":Landroid/os/storage/StorageVolume;
    .restart local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3
    move-object v2, v3

    .line 196
    goto :goto_0
.end method
