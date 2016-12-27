.class public abstract Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/BluetoothCallback;


# instance fields
.field protected mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "restrictedKey"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 68
    sget-object v0, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 69
    return-void
.end method

.method private updateProgressUi(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    .prologue
    .line 132
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 134
    .local v1, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 135
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 137
    .end local v0    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_0

    .line 177
    const-string v1, "DeviceListPreferenceFragment"

    const-string v2, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V

    .line 185
    .local v0, "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 186
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 196
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 216
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 219
    :cond_0
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 221
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    .line 92
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public onDeviceDeleted(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .line 200
    .local v0, "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "btPreference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->onClicked()V

    .line 160
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 142
    const-string v3, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 155
    :goto_0
    return v2

    .line 147
    :cond_0
    instance-of v3, p2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 148
    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .line 149
    .local v0, "btPreference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 150
    .local v1, "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 155
    .end local v0    # "btPreference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    .end local v1    # "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 207
    return-void
.end method

.method removeAllDevices()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 129
    return-void
.end method

.method setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    .line 97
    return-void
.end method

.method final setFilter(I)V
    .locals 1
    .param p1, "filterType"    # I

    .prologue
    .line 76
    invoke-static {p1}, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 77
    return-void
.end method

.method final setFilter(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 73
    return-void
.end method
