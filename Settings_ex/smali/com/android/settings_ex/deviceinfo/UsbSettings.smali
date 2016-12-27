.class public Lcom/android/settings_ex/deviceinfo/UsbSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "UsbSettings.java"


# static fields
.field private static final USB_FUNCTION_DEFAULT:Ljava/lang/String;


# instance fields
.field private mCharging:Landroid/preference/nubia/CheckBoxPreference;

.field private mMtp:Landroid/preference/nubia/CheckBoxPreference;

.field private mPtp:Landroid/preference/nubia/CheckBoxPreference;

.field private mSDCard:Landroid/preference/nubia/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private operateInprogress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "ro.sys.usb.default.config"

    const-string v1, "nubia"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->operateInprogress:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 71
    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/UsbSettings;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->operateInprogress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/UsbSettings;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateUsbFunctionState()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 112
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 115
    :cond_0
    const v2, 0x7f080076

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 118
    const-string v2, "usb_mtp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/nubia/CheckBoxPreference;

    .line 119
    const-string v2, "usb_ptp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/nubia/CheckBoxPreference;

    .line 120
    const-string v2, "usb_charging"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharging:Landroid/preference/nubia/CheckBoxPreference;

    .line 121
    const-string v2, "usb_sdcard"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/nubia/CheckBoxPreference;

    .line 123
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->isMassStorageEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    const-string v2, "UsbSettings"

    const-string v3, "createPreferenceHierarchy mass_storage enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 129
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 135
    :cond_2
    return-object v0
.end method

.method private isMassStorageEnabled()Z
    .locals 6

    .prologue
    .line 101
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 102
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 103
    .local v3, "v":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    const/4 v5, 0x1

    .line 107
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :goto_1
    return v5

    .line 102
    .restart local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 217
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharging:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 223
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "UsbSettings"

    const-string v2, "USB is locked down"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtp:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->operateInprogress:Z

    if-nez v1, :cond_1

    .line 230
    const-string v1, "UsbSettings"

    const-string v2, "USB Normal Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateUsbFunctionState()V
    .locals 3

    .prologue
    .line 91
    const-string v1, "persist.sys.usb.config"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "functions":Ljava/lang/String;
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lcom/android/settings_ex/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 142
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 143
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 243
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v4

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 249
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    sget-object v0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    .line 266
    .local v0, "function":Ljava/lang/String;
    iput-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->operateInprogress:Z

    .line 268
    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateUsbFunctionState()V

    .line 192
    return-void
.end method
