.class public Lcom/android/settings_ex/PrivacySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoRestore:Landroid/preference/nubia/CheckBoxPreference;

.field private mBackup:Landroid/preference/PreferenceScreen;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mEnabled:Z

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/android/settings_ex/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings_ex/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings_ex/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 114
    new-instance v0, Lcom/android/settings_ex/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/PrivacySettings$1;-><init>(Lcom/android/settings_ex/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/PrivacySettings;)Landroid/preference/nubia/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/nubia/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/settings_ex/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 224
    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 226
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v2, 0x0

    .line 228
    .local v2, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 233
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.settings"

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    .line 235
    .local v3, "vendorSpecific":Z
    :cond_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 236
    :cond_1
    const-string v4, "backup_inactive"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_2
    if-nez v3, :cond_3

    if-nez v2, :cond_4

    .line 239
    :cond_3
    const-string v4, "backup_data"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v4, "auto_restore"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v4, "configure_account"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_4
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_factory_reset"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 245
    const-string v4, "factory_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_5
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_network_reset"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 249
    const-string v4, "network_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_6
    return-void

    .line 229
    .end local v3    # "vendorSpecific":Z
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "PrivacySettings"

    const-string v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c07a0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 141
    .local v5, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 142
    .local v0, "backupEnabled":Z
    const/4 v1, 0x0

    .line 143
    .local v1, "configIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 145
    .local v2, "configSummary":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 146
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "transport":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 148
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    iget-object v10, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    const v7, 0x7f0c0653

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v6    # "transport":Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/nubia/CheckBoxPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 160
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 162
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v3, v8

    .line 163
    .local v3, "configureEnabled":Z
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 164
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 165
    invoke-direct {p0, v2}, Lcom/android/settings_ex/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 166
    return-void

    .line 150
    .end local v3    # "configureEnabled":Z
    .restart local v6    # "transport":Ljava/lang/String;
    :cond_0
    const v7, 0x7f0c0654

    goto :goto_0

    .line 153
    .end local v6    # "transport":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    move v7, v9

    .line 158
    goto :goto_2

    :cond_2
    move v3, v9

    .line 162
    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f0c0954

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/PrivacySettings;->mEnabled:Z

    .line 76
    iget-boolean v5, p0, Lcom/android/settings_ex/PrivacySettings;->mEnabled:Z

    if-nez v5, :cond_0

    .line 102
    :goto_0
    return-void

    .line 79
    :cond_0
    const v5, 0x7f080052

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/PrivacySettings;->addPreferencesFromResource(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 81
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    const-string v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 84
    const-string v5, "backup_data"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    .line 86
    const-string v5, "auto_restore"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/nubia/CheckBoxPreference;

    .line 87
    iget-object v5, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    const-string v5, "configure_account"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 91
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v1, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settings_ex/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 93
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 94
    .local v4, "screenPreferenceCount":I
    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 95
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 96
    .local v2, "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 101
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateToggles()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 109
    iget-boolean v0, p0, Lcom/android/settings_ex/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateToggles()V

    .line 112
    :cond_0
    return-void
.end method
