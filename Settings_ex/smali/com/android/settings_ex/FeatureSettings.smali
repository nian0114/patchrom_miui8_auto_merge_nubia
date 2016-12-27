.class public Lcom/android/settings_ex/FeatureSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "FeatureSettings.java"


# instance fields
.field isSupportLinearAccSensor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/FeatureSettings;->isSupportLinearAccSensor:Z

    return-void
.end method

.method private isDualInstanceEnable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 105
    :try_start_0
    const-string v4, "com.cmx.cmplus.SmartContainerConfig"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 106
    .local v1, "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "WITH_OUT_ALL"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 107
    .local v2, "withoutMultiProcess":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    .line 110
    .end local v1    # "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "withoutMultiProcess":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v3

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isSupportLinearAccSensor()Z
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 75
    .local v1, "sm":Landroid/hardware/SensorManager;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSupportSingleUi()Z
    .locals 3

    .prologue
    .line 80
    const-string v0, "1"

    const-string v1, "persist.sys.singlehand"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removePrefOrNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 68
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 69
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/FeatureSettings;->removePreference(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method private removePrefOrNotByFeature(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 85
    .local v0, "existed":Z
    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/FeatureSettings;->removePreference(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method private removePrefSmartkey()V
    .locals 3

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "hasSmartkey":Z
    :try_start_0
    sget-boolean v1, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->sHasSmartKey:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    if-nez v1, :cond_0

    .line 135
    const-string v2, "smartkey_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/FeatureSettings;->removePreference(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removePrefSplitScreen()V
    .locals 5

    .prologue
    .line 114
    const/4 v3, 0x1

    .line 116
    .local v3, "remove":Z
    :try_start_0
    const-string v4, "android.util.PowerMoConfig"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 117
    .local v2, "powermo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 118
    .local v0, "config":Ljava/lang/Object;
    const-string v4, "WITHOUT_ALL"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 122
    .end local v0    # "config":Ljava/lang/Object;
    .end local v2    # "powermo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v3, :cond_0

    .line 123
    const-string v4, "splitscreen_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/FeatureSettings;->removePreference(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removePrefVolley()V
    .locals 12

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "cn.nubia.volley.gesture"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 163
    .local v3, "featureEnable":Z
    if-eqz v3, :cond_1

    .line 164
    const-string v9, "gesture_and_motion_key"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 165
    .local v0, "catorey":Landroid/preference/PreferenceCategory;
    const-string v9, "volley_key"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 166
    .local v6, "pref":Landroid/preference/Preference;
    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    .end local v0    # "catorey":Landroid/preference/PreferenceCategory;
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const/4 v5, -0x1

    .line 173
    .local v5, "gestureId":I
    const/4 v1, 0x0

    .line 174
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 176
    .local v4, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-string v9, "android.hardware.Sensor"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 177
    const-string v9, "hanchuang"

    const-string v10, "gestureID = 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v9, "TYPE_VOLLEY_GESTURE"

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 179
    const-string v9, "hanchuang"

    const-string v10, "gestureID = 2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v4, :cond_2

    .line 181
    const-string v9, "hanchuang"

    const-string v10, "gestureID = 4"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 183
    const-string v9, "hanchuang"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gestureID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_2
    :goto_1
    const/4 v9, -0x1

    if-eq v5, v9, :cond_3

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "sensor"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/SensorManager;

    .line 192
    .local v8, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v8, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v7

    .line 193
    .local v7, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 197
    .end local v7    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v8    # "sm":Landroid/hardware/SensorManager;
    :cond_3
    const-string v9, "gesture_and_motion_key"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 198
    .restart local v0    # "catorey":Landroid/preference/PreferenceCategory;
    const-string v9, "volley_key"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 199
    .restart local v6    # "pref":Landroid/preference/Preference;
    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 185
    .end local v0    # "catorey":Landroid/preference/PreferenceCategory;
    .end local v6    # "pref":Landroid/preference/Preference;
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "hanchuang"

    const-string v10, "gestureID = 3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private removePrefVolumeKey()V
    .locals 3

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, "hasSmartkey":Z
    :try_start_0
    sget-boolean v1, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->sHasVolumeSmartKey:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    if-nez v1, :cond_0

    .line 147
    const-string v2, "smartkey_volume_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/FeatureSettings;->removePreference(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removePrefsDualInstance()V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/FeatureSettings;->isDualInstanceEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const-string v2, "dual_settings_key"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 92
    .local v0, "catorey":Landroid/preference/PreferenceCategory;
    const-string v2, "dual_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 93
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 97
    .end local v0    # "catorey":Landroid/preference/PreferenceCategory;
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removeSuperSnapPreference()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "super_snap_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/FeatureSettings;->removePreference(Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 205
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/FeatureSettings;->addPreferencesFromResource(I)V

    .line 31
    invoke-direct {p0}, Lcom/android/settings_ex/FeatureSettings;->isSupportLinearAccSensor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/FeatureSettings;->isSupportLinearAccSensor:Z

    .line 32
    const-string v1, "cn.nubia.smartface.feature"

    const-string v2, "smartface_settings"

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/FeatureSettings;->removePrefOrNotByFeature(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "cn.nubia.photoflow"

    const-string v2, "cn.nubia.photoflow.setting.LSPhotoSettingActivity"

    const-string v3, "lockscreen"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings_ex/FeatureSettings;->removePrefOrNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/android/settings_ex/FeatureSettings;->removePrefSplitScreen()V

    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/FeatureSettings;->removePrefSmartkey()V

    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/FeatureSettings;->removePrefVolumeKey()V

    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/FeatureSettings;->removePrefVolley()V

    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/FeatureSettings;->removePrefsDualInstance()V

    .line 39
    iget-boolean v1, p0, Lcom/android/settings_ex/FeatureSettings;->isSupportLinearAccSensor:Z

    if-nez v1, :cond_0

    .line 40
    const-string v1, "motion_key"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 41
    .local v0, "pref":Landroid/preference/Preference;
    const v1, 0x7f0c0fff

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 43
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/FeatureSettings;->isSupportSingleUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    const-string v1, "single_mode_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/FeatureSettings;->removePreference(Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/Utils;->isNotSupportSuperSnap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/FeatureSettings;->removeSuperSnapPreference()V

    .line 49
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "smartface_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "cn.nubia.smartface"

    const-string v2, "cn.nubia.smartface.settings.SmartFaceSettingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const v1, 0xf4233

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    const/4 v1, 0x1

    .line 61
    .end local v0    # "mIntent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method
