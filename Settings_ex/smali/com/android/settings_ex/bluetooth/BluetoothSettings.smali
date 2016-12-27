.class public final Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.super Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lnubia/gesture/sensor/MotionListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private final MENU_SEARCH:I

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mActionBarBottom:Landroid/view/View;

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothDiscoverEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

.field private mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

.field private mDeviceNameCustomerDialog:Lcom/android/settings_ex/DeviceNameCustomerDialog;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableTipDialog:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mModtionDetector:Lnubia/gesture/sensor/MotionDetector;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mReceivedFilesPref:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenamePref:Landroid/preference/Preference;

.field private mSearchBtn:Landroid/widget/Button;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSettingsDialogView:Landroid/view/View;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 891
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->MENU_SEARCH:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    .line 146
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 483
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 729
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$5;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    return-object p1
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .prologue
    .line 501
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 502
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 503
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 505
    if-eqz p4, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 508
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 509
    return-void
.end method

.method private closeDialogIfNeed()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameCustomerDialog:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameCustomerDialog:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameCustomerDialog:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->dismiss()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameCustomerDialog:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    .line 475
    :cond_0
    return-void
.end method

.method private readPairedDevices()Z
    .locals 8

    .prologue
    .line 872
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 873
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_1

    .line 874
    const/4 v3, 0x0

    .line 887
    :cond_0
    return v3

    .line 877
    :cond_1
    const/4 v3, 0x0

    .line 878
    .local v3, "deviceAdded":Z
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    .line 879
    .local v4, "deviceManager":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 880
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v4, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 881
    .local v1, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_2

    .line 882
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 883
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private showDeviceNameCustomerDialog()V
    .locals 2

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->closeDialogIfNeed()V

    .line 478
    new-instance v0, Lcom/android/settings_ex/DeviceNameCustomerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameCustomerDialog:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    .line 479
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameCustomerDialog:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 480
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceNameCustomerDialog:Lcom/android/settings_ex/DeviceNameCustomerDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->show()V

    .line 481
    return-void
.end method

.method private startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 428
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 434
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 448
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 449
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0

    .line 446
    :cond_3
    const-string v0, "BluetoothSettings"

    const-string v1, "mAvailableDevicesCategory is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateContent(I)V
    .locals 10
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 512
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 513
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 515
    .local v0, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 642
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 643
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 644
    if-eqz v0, :cond_0

    .line 645
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 650
    :cond_1
    :goto_1
    return-void

    .line 517
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v4, v9}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setSwitchBarIsChecked(Z)V

    .line 518
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 519
    invoke-virtual {v3, v9}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 520
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 522
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 523
    const v0, 0x7f0c00b8

    .line 524
    goto :goto_0

    .line 527
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothDiscoverEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    if-nez v4, :cond_7

    .line 528
    new-instance v4, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothDiscoverEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    .line 529
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothDiscoverEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->resume()V

    .line 533
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothDiscoverEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->getPreference()Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 536
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mRenamePref:Landroid/preference/Preference;

    if-nez v4, :cond_8

    .line 537
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mRenamePref:Landroid/preference/Preference;

    .line 538
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mRenamePref:Landroid/preference/Preference;

    const v5, 0x7f0c0bec

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 542
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mRenamePref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 543
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateBtNameSummary()V

    .line 546
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceivedFilesPref:Landroid/preference/Preference;

    if-nez v4, :cond_9

    .line 547
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceivedFilesPref:Landroid/preference/Preference;

    .line 548
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceivedFilesPref:Landroid/preference/Preference;

    const v5, 0x7f0c00c5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 552
    :goto_4
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceivedFilesPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 556
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_a

    .line 557
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 561
    :goto_5
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0c0223

    sget-object v6, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6, v9}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 564
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 566
    .local v2, "numberOfPairedDevices":I
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_3

    if-gtz v2, :cond_4

    .line 569
    :cond_3
    const-string v4, "BluetoothSettings"

    const-string v5, "try to read paired devices before remove category"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->readPairedDevices()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 571
    const-string v4, "BluetoothSettings"

    const-string v5, "read paired devices success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_4
    :goto_6
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_c

    .line 580
    new-instance v4, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 581
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 585
    :goto_7
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0c0224

    sget-object v6, Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_exlib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 588
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 590
    .local v1, "numberOfAvailableDevices":I
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v4, :cond_5

    .line 591
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V

    .line 604
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 608
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v4, :cond_6

    .line 611
    iput-boolean v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 613
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSearchBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 531
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothDiscoverEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->getPreference()Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 540
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mRenamePref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 550
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceivedFilesPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 559
    :cond_a
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_5

    .line 573
    .restart local v2    # "numberOfPairedDevices":I
    :cond_b
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 583
    :cond_c
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_7

    .line 617
    .end local v2    # "numberOfPairedDevices":I
    :pswitch_1
    const v0, 0x7f0c00d1

    .line 618
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSearchBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 622
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v4, v8}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setSwitchBarIsChecked(Z)V

    .line 625
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-eqz v4, :cond_d

    .line 626
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v4, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v4, v8}, Lcom/android/settings_ex/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 628
    :cond_d
    const v0, 0x7f0c022e

    .line 629
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 630
    const v0, 0x7f0c00b8

    .line 632
    :cond_e
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSearchBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 636
    :pswitch_3
    const v0, 0x7f0c00d0

    .line 637
    iput-boolean v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 638
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSearchBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 1

    .prologue
    .line 308
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 311
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 853
    const v0, 0x7f0c094c

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x18

    return v0
.end method

.method initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 844
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 845
    .local v0, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 847
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 181
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 188
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x800013

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 191
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 193
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    .line 194
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 195
    return-void

    .line 183
    .end local v0    # "activity":Lcom/android/settings_ex/SettingsActivity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 705
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 708
    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 710
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 711
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mActionBarBottom:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 259
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mActionBarBottom:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    .line 418
    packed-switch p1, :pswitch_data_0

    .line 423
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 420
    :pswitch_0
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableTipDialog:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;

    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mDiscoverableTipDialog:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableTipDialog;

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v2, 0x7f0c0217

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 374
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v4, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_2

    .line 379
    invoke-interface {p1, v3, v0, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSearchItem:Landroid/view/MenuItem;

    .line 380
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSearchItem:Landroid/view/MenuItem;

    const v5, 0x7f0201bd

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 381
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 383
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    .line 384
    .local v0, "bluetoothIsEnabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 385
    .local v1, "isDiscovering":Z
    if-eqz v1, :cond_3

    const v2, 0x7f0c0218

    .line 387
    .local v2, "textId":I
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isDiscovering":Z
    .end local v2    # "textId":I
    :cond_4
    move v0, v3

    .line 383
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    const v2, 0x7f040040

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 266
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 267
    .local v0, "list":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 268
    const v2, 0x7f1200da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mActionBarBottom:Landroid/view/View;

    .line 269
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mActionBarBottom:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_0
    const v2, 0x7f1200dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSearchBtn:Landroid/widget/Button;

    .line 273
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mSearchBtn:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 301
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 302
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->closeDialogIfNeed()V

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 304
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 725
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 726
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 727
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 496
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 497
    return-void
.end method

.method public onMotionChanged(Lnubia/gesture/sensor/MotionState;)V
    .locals 4
    .param p1, "event"    # Lnubia/gesture/sensor/MotionState;

    .prologue
    const/4 v3, 0x1

    .line 861
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionEventChanged, Event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 863
    const-string v0, "BluetoothSettings"

    const-string v1, "Shake to scan for BT Devices"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 866
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 392
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 406
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 394
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 396
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 401
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->pause()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothDiscoverEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothDiscoverEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->pause()V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mModtionDetector:Lnubia/gesture/sensor/MotionDetector;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mModtionDetector:Lnubia/gesture/sensor/MotionDetector;

    invoke-virtual {v0, p0}, Lnubia/gesture/sensor/MotionDetector;->unregisterListener(Lnubia/gesture/sensor/MotionListener;)V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mModtionDetector:Lnubia/gesture/sensor/MotionDetector;

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 455
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mRenamePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->showDeviceNameCustomerDialog()V

    .line 467
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceivedFilesPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 462
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "com.android.bluetooth"

    const-string v2, "com.android.bluetooth.opp.BluetoothOppTransferHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v1, "direction"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    const-string v1, "android.btopp.intent.extra.SHOW_ALL"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 317
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 320
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 321
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothDiscoverEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothDiscoverEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->resume()V

    .line 325
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 330
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f0c00b8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 345
    :cond_2
    :goto_0
    return-void

    .line 334
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-eqz v2, :cond_4

    .line 336
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 338
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_shake_update"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_5

    move v0, v1

    .line 339
    .local v0, "shakeUpdateEnable":Z
    :cond_5
    if-eqz v0, :cond_2

    .line 340
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mModtionDetector:Lnubia/gesture/sensor/MotionDetector;

    if-nez v2, :cond_6

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lnubia/gesture/sensor/MotionManager;->getDefaultDetector(Landroid/content/Context;I)Lnubia/gesture/sensor/MotionDetector;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mModtionDetector:Lnubia/gesture/sensor/MotionDetector;

    .line 343
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mModtionDetector:Lnubia/gesture/sensor/MotionDetector;

    invoke-virtual {v2, p0, v1}, Lnubia/gesture/sensor/MotionDetector;->registerListener(Lnubia/gesture/sensor/MotionListener;I)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 715
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 717
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 720
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->quickClickAgent:Lcom/android/settings_ex/QuickClickAgent;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuickClickAgent;->removeDelayMsg()V

    .line 294
    :cond_0
    return-void
.end method

.method updateBtNameSummary()V
    .locals 6

    .prologue
    .line 689
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 700
    :goto_0
    return-void

    .line 690
    :cond_0
    const-string v3, "persist.sys.devicename"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "btName":Ljava/lang/String;
    const-string v3, "BluetoothSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , bt name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    move-object v2, v0

    .line 694
    .local v2, "name":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 695
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 696
    move-object v2, v1

    .line 697
    const-string v3, "BluetoothSettings"

    const-string v4, "change bt name"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mRenamePref:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
