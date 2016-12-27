.class public final Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"


# instance fields
.field private final mBtManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

.field private final mCachedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localBtManager"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 43
    return-void
.end method

.method public static onDeviceDisappeared(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3
    .param p0, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private removeDeviceAlias(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 186
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 187
    const-string v1, "CachedBluetoothDeviceManager"

    const-string v2, "reset device alias to empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .locals 3
    .param p1, "adapter"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .param p2, "profileManager"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 89
    new-instance v0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 91
    .local v0, "newDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    monitor-enter v2

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V

    .line 94
    monitor-exit v2

    .line 95
    return-object v0

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized clearNonBondedDevices()V
    .locals 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 121
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 124
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->removeDeviceAlias(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 128
    .end local v0    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    :cond_1
    monitor-exit p0

    return-void

    .line 119
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 73
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    .end local v0    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getCachedDevicesCopy()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 106
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_0
    :goto_0
    return-object v1

    .line 110
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized onBluetoothStateChanged(I)V
    .locals 4
    .param p1, "bluetoothState"    # I

    .prologue
    .line 158
    monitor-enter p0

    const/16 v2, 0xd

    if-ne p1, v2, :cond_1

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 161
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 162
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 163
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->removeDeviceAlias(Landroid/bluetooth/BluetoothDevice;)V

    .line 159
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 158
    .end local v0    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 175
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 143
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->refreshBtClass()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    .end local v0    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 56
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->refreshName()V

    .line 59
    :cond_0
    return-void
.end method

.method public declared-synchronized onScanningStateChanged(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 131
    monitor-enter p0

    if-nez p1, :cond_1

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 137
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 131
    .end local v0    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 150
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->onUuidChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    .end local v0    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
