.class public final Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/nubia/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Lcn/nubia/commonui/preference/EditTextPreference;

.field private mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Landroid/preference/nubia/CheckBoxPreference;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;
    .param p1, "x1"    # Landroid/preference/nubia/CheckBoxPreference;
    .param p2, "x2"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/nubia/CheckBoxPreference;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    .line 152
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 153
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v10}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 154
    .local v7, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v7}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v6

    .line 155
    .local v6, "pref":Landroid/preference/Preference;
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 158
    .end local v6    # "pref":Landroid/preference/Preference;
    .end local v7    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v10}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v4

    .line 160
    .local v4, "pbapPermission":I
    if-eqz v4, :cond_1

    .line 161
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v10}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    move-result-object v8

    .line 162
    .local v8, "psp":Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
    invoke-direct {p0, v8}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v5

    .line 163
    .local v5, "pbapPref":Landroid/preference/nubia/CheckBoxPreference;
    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 165
    if-ne v4, v9, :cond_3

    :goto_1
    invoke-virtual {v5, v9}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 169
    .end local v5    # "pbapPref":Landroid/preference/nubia/CheckBoxPreference;
    .end local v8    # "psp":Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settings_exlib/bluetooth/MapProfile;

    move-result-object v3

    .line 170
    .local v3, "mapProfile":Lcom/android/settings_exlib/bluetooth/MapProfile;
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    .line 171
    .local v1, "mapPermission":I
    if-eqz v1, :cond_2

    .line 172
    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v2

    .line 173
    .local v2, "mapPreference":Landroid/preference/nubia/CheckBoxPreference;
    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 176
    .end local v2    # "mapPreference":Landroid/preference/nubia/CheckBoxPreference;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 177
    return-void

    .line 165
    .end local v1    # "mapPermission":I
    .end local v3    # "mapProfile":Lcom/android/settings_exlib/bluetooth/MapProfile;
    .restart local v5    # "pbapPref":Landroid/preference/nubia/CheckBoxPreference;
    .restart local v8    # "psp":Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 288
    .local v0, "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 290
    const v6, 0x7f0c00bf

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 293
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "profileName":Ljava/lang/String;
    const v6, 0x7f0c00bc

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "title":Ljava/lang/String;
    const v6, 0x7f0c00bd

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 315
    .local v1, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/settings_ex/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Lcn/nubia/commonui/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 317
    return-void
.end method

.method private createProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/preference/nubia/CheckBoxPreference;
    .locals 6
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v2

    .line 206
    .local v2, "preference":Landroid/preference/nubia/CheckBoxPreference;
    if-eqz v2, :cond_0

    .line 207
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the profile("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") has preference already"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v2    # "preference":Landroid/preference/nubia/CheckBoxPreference;
    :goto_0
    return-object v2

    .line 211
    .restart local v2    # "preference":Landroid/preference/nubia/CheckBoxPreference;
    :cond_0
    new-instance v1, Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 212
    .local v1, "pref":Landroid/preference/nubia/CheckBoxPreference;
    const v3, 0x7f04013b

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setLayoutResource(I)V

    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setTitle(I)V

    .line 215
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setPersistent(Z)V

    .line 216
    invoke-interface {p1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setOrder(I)V

    .line 217
    invoke-virtual {v1, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    const v3, 0x7f040144

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 222
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 223
    .local v0, "iconResource":I
    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/nubia/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/nubia/CheckBoxPreference;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    move-object v2, v1

    .line 229
    goto :goto_0
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 382
    instance-of v3, p1, Landroid/preference/nubia/CheckBoxPreference;

    if-nez v3, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-object v2

    .line 385
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/preference/nubia/CheckBoxPreference;
    .locals 2
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .param p1, "profIndex"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private onProfileClicked(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Landroid/preference/nubia/CheckBoxPreference;)V
    .locals 8
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .param p2, "profilePref"    # Landroid/preference/nubia/CheckBoxPreference;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 247
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 249
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/preference/nubia/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PBAP Server"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 250
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 253
    .local v2, "newPermission":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 254
    if-ne v2, v4, :cond_1

    :goto_1
    invoke-virtual {p2, v4}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 282
    .end local v2    # "newPermission":I
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 250
    goto :goto_0

    .restart local v2    # "newPermission":I
    :cond_1
    move v4, v5

    .line 254
    goto :goto_1

    .line 258
    .end local v2    # "newPermission":I
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 259
    .local v3, "status":I
    if-ne v3, v2, :cond_3

    move v1, v4

    .line 262
    .local v1, "isConnected":Z
    :goto_3
    invoke-virtual {p2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 263
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_2

    .end local v1    # "isConnected":Z
    :cond_3
    move v1, v5

    .line 259
    goto :goto_3

    .line 265
    .restart local v1    # "isConnected":Z
    :cond_4
    instance-of v6, p1, Lcom/android/settings_exlib/bluetooth/MapProfile;

    if-eqz v6, :cond_5

    .line 266
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6, v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 267
    invoke-direct {p0, p2, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/nubia/CheckBoxPreference;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 269
    :cond_5
    invoke-interface {p1, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 271
    instance-of v4, p1, Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-eqz v4, :cond_6

    .line 272
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_2

    .line 274
    :cond_6
    invoke-interface {p1, v0, v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 275
    invoke-direct {p0, p2, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/nubia/CheckBoxPreference;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_2

    .line 278
    :cond_7
    invoke-interface {p1, v0, v4}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 279
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_2
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f12008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 326
    .local v0, "deviceNameField":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 331
    return-void
.end method

.method private refreshProfilePreference(Landroid/preference/nubia/CheckBoxPreference;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 5
    .param p1, "profilePref"    # Landroid/preference/nubia/CheckBoxPreference;
    .param p2, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 356
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 359
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 361
    instance-of v1, p2, Lcom/android/settings_exlib/bluetooth/MapProfile;

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 378
    :goto_2
    invoke-interface {p2, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/nubia/CheckBoxPreference;->setSummary(I)V

    .line 379
    return-void

    :cond_0
    move v1, v3

    .line 359
    goto :goto_0

    :cond_1
    move v2, v3

    .line 362
    goto :goto_1

    .line 364
    :cond_2
    instance-of v1, p2, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_4

    .line 366
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_3
    invoke-virtual {p1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    .line 369
    :cond_4
    instance-of v1, p2, Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-nez v1, :cond_5

    instance-of v1, p2, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    if-nez v1, :cond_5

    instance-of v1, p2, Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    if-eqz v1, :cond_7

    .line 372
    :cond_5
    invoke-interface {p2, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    :goto_4
    invoke-virtual {p1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_4

    .line 376
    :cond_7
    invoke-interface {p2, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    .line 334
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 335
    .local v1, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/nubia/CheckBoxPreference;

    .line 336
    .local v2, "profilePref":Landroid/preference/nubia/CheckBoxPreference;
    if-nez v2, :cond_0

    .line 337
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v2

    .line 338
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 340
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/nubia/CheckBoxPreference;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 343
    .end local v1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "profilePref":Landroid/preference/nubia/CheckBoxPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 344
    .restart local v1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 345
    .local v2, "profilePref":Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 346
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 351
    .end local v1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "profilePref":Landroid/preference/Preference;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 352
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 181
    .local v0, "numProfiles":I
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x1a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 88
    const-string v1, "profile_container"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 89
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    const v2, 0x7f04003f

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 92
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 94
    .local v0, "deviceManager":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 107
    :cond_1
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 322
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcn/nubia/commonui/preference/EditTextPreference;

    if-ne p1, v2, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x1

    .end local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return v1

    .line 235
    .restart local p1    # "preference":Landroid/preference/Preference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 237
    .local v0, "prof":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    check-cast p1, Landroid/preference/nubia/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Landroid/preference/nubia/CheckBoxPreference;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->finish()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refresh()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public setDevice(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 146
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 149
    :cond_0
    return-void
.end method
