.class public final Lcom/android/settings_ex/bluetooth/DevicePickerFragment;
.super Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private mActionBarBottom:Landroid/view/View;

.field private mDeviceSelected:Z

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mSearchBtn:Landroid/widget/Button;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 71
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 73
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 74
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 75
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x19

    return v0
.end method

.method initDevicePreference(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->restoreOriWidgetLayoutResource()V

    .line 103
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 209
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 212
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0c00c6

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 146
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_config_bluetooth"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 148
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    const v2, 0x7f0c0224

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 152
    return-void

    .line 146
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v2, 0x7f0c0217

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 109
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v4, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_2

    .line 114
    invoke-interface {p1, v3, v0, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSearchItem:Landroid/view/MenuItem;

    .line 116
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 119
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    .line 120
    .local v0, "bluetoothIsEnabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 121
    .local v1, "isDiscovering":Z
    if-eqz v1, :cond_3

    const v2, 0x7f0c0218

    .line 123
    .local v2, "textId":I
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isDiscovering":Z
    .end local v2    # "textId":I
    :cond_4
    move v0, v3

    .line 119
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v2, 0x7f040083

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 82
    .local v0, "list":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 83
    const v2, 0x7f1200da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mActionBarBottom:Landroid/view/View;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mActionBarBottom:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_0
    const v2, 0x7f1200dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSearchBtn:Landroid/widget/Button;

    .line 88
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSearchBtn:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings_ex/bluetooth/DevicePickerFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment$1;-><init>(Lcom/android/settings_ex/bluetooth/DevicePickerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 171
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    if-nez v1, :cond_1

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.bluetooth.devicepicker.action.DEVICE_NOT_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 196
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 198
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->finish()V

    .line 203
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .param p1, "btPreference"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->finish()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 158
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    .line 159
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 161
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 163
    :cond_0
    return-void
.end method
