.class public Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;


# instance fields
.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mActionBarBottom:Landroid/view/View;

.field private mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectedDevices:I

.field private mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeviceNameText:Landroid/widget/EditText;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLastGroupFormed:Z

.field private mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mPeersGroup:Landroid/preference/PreferenceGroup;

.field private mPersistentGroup:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSavedDeviceName:Ljava/lang/String;

.field mScanBtn:Landroid/widget/TextView;

.field private mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

.field private mSelectedGroupName:Ljava/lang/String;

.field private mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

.field private mStaDisconnectedScanIntervalWhenP2pConnected:I

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDevicePref:Landroid/preference/Preference;

.field private mWifiP2pEnabled:Z

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pSearching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    .line 113
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 117
    const v0, 0x2bf20

    iput v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mStaDisconnectedScanIntervalWhenP2pConnected:I

    .line 119
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 673
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$10;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 169
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;)Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDeviceNameCustomerDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    return-void
.end method

.method private handleP2pStateChanged()V
    .locals 2

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    .line 589
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 590
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 592
    return-void
.end method

.method private handlePeersChanged()V
    .locals 5

    .prologue
    .line 545
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 547
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    .line 549
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 551
    .local v1, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 552
    iget v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    goto :goto_0

    .line 555
    .end local v1    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-void
.end method

.method private showDeviceNameCustomerDialog()V
    .locals 2

    .prologue
    .line 668
    new-instance v0, Lcom/android/settings_ex/DeviceNameCustomerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;-><init>(Landroid/content/Context;)V

    .line 669
    .local v0, "mDeviceNameCustomerDialog":Lcom/android/settings_ex/DeviceNameCustomerDialog;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 670
    invoke-virtual {v0}, Lcom/android/settings_ex/DeviceNameCustomerDialog;->show()V

    .line 671
    return-void
.end method

.method private startSearch()V
    .locals 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 610
    :cond_0
    return-void
.end method

.method private updateDevicePref()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 621
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    new-instance v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 627
    return-void

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSearchMenu(Z)V
    .locals 1
    .param p1, "searching"    # Z

    .prologue
    .line 595
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    .line 596
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 597
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 598
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 528
    const/16 v0, 0x6d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 173
    const v3, 0x7f080085

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "wifip2p"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 184
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_4

    .line 185
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 186
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v3, :cond_0

    .line 188
    const-string v3, "WifiP2pSettings"

    const-string v4, "Failed to set up connection with wifi p2p service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 195
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 197
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 199
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    const-string v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 202
    :cond_2
    if-eqz p1, :cond_3

    const-string v3, "GROUP_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 203
    const-string v3, "GROUP_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    .line 206
    :cond_3
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 242
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 261
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 281
    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    .line 312
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 315
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 316
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 318
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    .line 319
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 321
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 323
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    .line 324
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0c02f3

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 325
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 327
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    .line 328
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0c02f4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 329
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 330
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_interval_p2p_connected_ms"

    iget v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mStaDisconnectedScanIntervalWhenP2pConnected:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 334
    return-void

    .line 192
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_4
    const-string v3, "WifiP2pSettings"

    const-string v4, "mWifiP2pManager is null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 658
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 659
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mActionBarBottom:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 665
    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mActionBarBottom:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 12
    .param p1, "id"    # I

    .prologue
    const v11, 0x7f0c054d

    const v10, 0x7f0c054c

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 464
    if-ne p1, v8, :cond_3

    .line 465
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 469
    .local v0, "deviceName":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    if-le v4, v8, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c02f9

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v9

    iget v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "msg":Ljava/lang/String;
    :goto_1
    new-instance v4, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c02f7

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 523
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v1

    .line 465
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0

    .line 473
    .restart local v0    # "deviceName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c02f8

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 482
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    .line 483
    const v3, 0x7f0c02fb

    .line 484
    .local v3, "stringId":I
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 488
    .restart local v0    # "deviceName":Ljava/lang/String;
    :goto_3
    new-instance v4, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c02fa

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 494
    .local v1, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    goto :goto_2

    .line 484
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_3

    .line 495
    .end local v3    # "stringId":I
    :cond_5
    const/4 v4, 0x3

    if-ne p1, v4, :cond_8

    .line 496
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    .line 497
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    new-array v5, v8, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 498
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 499
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 505
    :cond_6
    :goto_4
    iput-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 506
    new-instance v4, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c02f2

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 512
    .restart local v1    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    goto/16 :goto_2

    .line 501
    .end local v1    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 502
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v9, v5}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_4

    .line 513
    :cond_8
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 514
    const v3, 0x7f0c02fc

    .line 516
    .restart local v3    # "stringId":I
    new-instance v4, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 521
    .restart local v1    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v0, 0x7f0c02f1

    const v1, 0x7f0c02f0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 358
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v2, :cond_0

    .line 360
    .local v0, "textId":I
    :goto_0
    invoke-interface {p1, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 381
    .end local v0    # "textId":I
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 358
    goto :goto_0

    .line 367
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-nez v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 374
    :goto_2
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v2, :cond_3

    .line 375
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 377
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 635
    const v2, 0x7f0401ec

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 636
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 637
    .local v0, "list":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 638
    const v2, 0x7f1200da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mActionBarBottom:Landroid/view/View;

    .line 639
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 640
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mActionBarBottom:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 643
    :cond_0
    const v2, 0x7f120456

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanBtn:Landroid/widget/TextView;

    .line 644
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 645
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanBtn:Landroid/widget/TextView;

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$9;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$9;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 405
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 413
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 407
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startSearch()V

    .line 408
    const/4 v0, 0x1

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 347
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 352
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 584
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V

    .line 585
    return-void
.end method

.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 6
    .param p1, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .prologue
    .line 559
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 561
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 563
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 564
    .local v2, "wppg":Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 565
    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    .line 568
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    goto :goto_0

    .line 571
    .end local v0    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v2    # "wppg":Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 576
    const-string v3, "WifiP2pSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Selected group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disappered on next query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 418
    instance-of v2, p2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v2, :cond_6

    move-object v2, p2

    .line 419
    check-cast v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 420
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_1

    .line 421
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 459
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 422
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v2, v3, :cond_2

    .line 423
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 425
    :cond_2
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 426
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 428
    const-string v2, "wifidirect.wps"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 430
    .local v1, "forceWps":I
    if-eq v1, v4, :cond_3

    .line 431
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 442
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 433
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 434
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 435
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 436
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 438
    :cond_5
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 455
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1    # "forceWps":I
    :cond_6
    instance-of v2, p2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 456
    check-cast v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    .line 457
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 385
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 386
    .local v0, "searchMenu":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    if-eqz v1, :cond_1

    .line 389
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 396
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v1, :cond_2

    .line 397
    const v1, 0x7f0c02f1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 392
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 399
    :cond_2
    const v1, 0x7f0c02f0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 338
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 343
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 534
    const-string v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 537
    const-string v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v0, :cond_2

    .line 540
    const-string v0, "GROUP_NAME"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_2
    return-void
.end method
