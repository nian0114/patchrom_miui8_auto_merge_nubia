.class public final Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsReceiverRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/preference/nubia/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mIsReceiverRegistered:Z

    .line 35
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 51
    new-instance v0, Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    const v1, 0x7f0c0e8b

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setTitle(I)V

    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->logMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->handleModeChanged(I)V

    return-void
.end method

.method private handleModeChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleModeChanged(): mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->logMsg(Ljava/lang/String;)V

    .line 78
    const/16 v1, 0x17

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 80
    .local v0, "enable":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->updateSummary(Z)V

    .line 81
    return-void

    .line 78
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "BluetoothDiscoverEnabler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method private setEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    .line 74
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->updateSummary(Z)V

    .line 75
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    goto :goto_0
.end method

.method private updateSummary(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz p1, :cond_1

    const v0, 0x7f0c0e8c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 88
    return-void

    .line 86
    :cond_1
    const v0, 0x7f0c0e8d

    goto :goto_0
.end method


# virtual methods
.method public getPreference()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mSwitch:Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 59
    check-cast p1, Landroid/preference/nubia/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 60
    .local v0, "enable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick checked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->logMsg(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->setEnabled(Z)V

    .line 64
    const/4 v1, 0x1

    return v1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "pause"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->logMsg(Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mIsReceiverRegistered:Z

    .line 120
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 97
    const-string v2, "resume"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->logMsg(Ljava/lang/String;)V

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mIsReceiverRegistered:Z

    .line 103
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    .line 105
    .local v1, "scanMode":I
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->hasPopConfirmed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->savePopConfirmed(Landroid/content/Context;)V

    .line 107
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->setEnabled(Z)V

    .line 108
    const-string v2, "it\'s first time to open bluetooth ,set scan mode to 23"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->logMsg(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverEnabler;->handleModeChanged(I)V

    goto :goto_0
.end method
