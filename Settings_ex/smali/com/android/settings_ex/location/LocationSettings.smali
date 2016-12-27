.class public Lcom/android/settings_ex/location/LocationSettings;
.super Lcom/android/settings_ex/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;
    }
.end annotation


# instance fields
.field private enhancedLocation:Landroid/preference/PreferenceCategory;

.field private injector:Lcom/android/settings_ex/location/SettingsInjector;

.field private izatConnResult:Z

.field private locationModeCategory:Landroid/preference/PreferenceCategory;

.field private mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mCallback:Lcom/android/location/XT/IXTSrvCb;

.field private mCategoryLocationServices:Landroid/preference/PreferenceCategory;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfilePreference:Landroid/preference/Preference;

.field private mPreferenceRecentLocationRequests:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentLocationCategory:Landroid/preference/Preference;

.field private mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mServiceConn:Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;

.field private mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z

.field private mXTService:Lcom/android/location/XT/IXTSrv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 96
    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    .line 97
    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mServiceConn:Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;

    .line 99
    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->izatConnResult:Z

    .line 122
    new-instance v0, Lcom/android/settings_ex/location/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/location/LocationSettings$1;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/android/settings_ex/location/LocationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/location/LocationSettings$2;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 229
    new-instance v0, Lcom/android/settings_ex/location/LocationSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/location/LocationSettings$3;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/location/LocationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->initUserPrefService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;
    .param p1, "x1"    # Lcom/android/location/XT/IXTSrv;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrvCb;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/location/LocationSettings;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/location/LocationSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/settings_ex/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    return-object v0
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 534
    const-string v2, "location_services"

    invoke-virtual {p2, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryLocationServices:Landroid/preference/PreferenceCategory;

    .line 536
    new-instance v2, Lcom/android/settings_ex/location/SettingsInjector;

    invoke-direct {v2, p1}, Lcom/android/settings_ex/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    .line 539
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    if-eqz p3, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/settings_ex/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v1

    .line 542
    .local v1, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 544
    new-instance v2, Lcom/android/settings_ex/location/LocationSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/location/LocationSettings$7;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    iput-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 553
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 554
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.location.InjectedSettingChanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 558
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 559
    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryLocationServices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 560
    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryLocationServices:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 565
    :goto_1
    return-void

    .line 539
    .end local v1    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    const/4 v2, -0x2

    goto :goto_0

    .line 563
    .restart local v1    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryLocationServices:Landroid/preference/PreferenceCategory;

    invoke-virtual {p2, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private checkGsPresence()Z
    .locals 12

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 591
    .local v10, "res":Landroid/content/res/Resources;
    const v11, 0x7f0a0085

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "GS_PACKAGE_NAMES":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 594
    .local v2, "gsExists":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 595
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 596
    .local v8, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 597
    .local v6, "packageInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_2

    .line 598
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v7, v1, v4

    .line 599
    .local v7, "packageName":Ljava/lang/String;
    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 600
    const/4 v2, 0x1

    .line 601
    goto :goto_0

    .line 598
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 608
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 291
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 292
    .local v5, "root":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 293
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 295
    :cond_0
    const v6, 0x7f08003d

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 298
    invoke-direct {p0, v5}, Lcom/android/settings_ex/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 300
    const-string v6, "high_accuracy"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 302
    const-string v6, "battery_saving"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 304
    const-string v6, "sensors_only"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 306
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 307
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 308
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 310
    const-string v6, "location_mode_category"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->locationModeCategory:Landroid/preference/PreferenceCategory;

    .line 313
    const-string v6, "enhanced_location"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->enhancedLocation:Landroid/preference/PreferenceCategory;

    .line 315
    const-string v6, "recent_location_category"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mRecentLocationCategory:Landroid/preference/Preference;

    .line 316
    const-string v6, "location_izat"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    .line 318
    iget-boolean v6, p0, Lcom/android/settings_ex/location/LocationSettings;->izatConnResult:Z

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->checkGsPresence()Z

    move-result v6

    if-nez v6, :cond_5

    .line 319
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->enhancedLocation:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    if-eqz v6, :cond_3

    .line 337
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    new-instance v7, Lcom/android/settings_ex/location/LocationSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/location/LocationSettings$5;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 363
    :cond_3
    const-string v6, "recent_location_requests"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mPreferenceRecentLocationRequests:Landroid/preference/Preference;

    .line 365
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mPreferenceRecentLocationRequests:Landroid/preference/Preference;

    new-instance v7, Lcom/android/settings_ex/location/LocationSettings$6;

    invoke-direct {v7, p0, v0}, Lcom/android/settings_ex/location/LocationSettings$6;-><init>(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 376
    const/4 v4, 0x0

    .line 380
    .local v4, "lockdownOnLocationAccess":Z
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v7, "no_share_location"

    iget-object v8, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 382
    const/4 v4, 0x1

    .line 384
    :cond_4
    invoke-direct {p0, v0, v5, v4}, Lcom/android/settings_ex/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 386
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->refreshLocationMode()V

    .line 387
    return-object v5

    .line 322
    .end local v4    # "lockdownOnLocationAccess":Z
    :cond_5
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    if-eqz v6, :cond_2

    .line 323
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "izatMenuTitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "izatSubtitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    invoke-virtual {v6, v2}, Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    const-string v6, "LocationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXTService.getStatus()--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    invoke-interface {v8}, Lcom/android/location/XT/IXTSrv;->getStatus()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mIZat:Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    invoke-interface {v7}, Lcom/android/location/XT/IXTSrv;->getStatus()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/location/WrappingIZatCheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 331
    .end local v2    # "izatMenuTitle":Ljava/lang/String;
    .end local v3    # "izatSubtitle":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "LocationSettings"

    const-string v7, "Service connection error!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private hideLocationCategories()V
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->enhancedLocation:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 455
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->locationModeCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 456
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mRecentLocationCategory:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mPreferenceRecentLocationRequests:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 458
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryLocationServices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    return-void
.end method

.method private initUserPrefService()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mServiceConn:Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;-><init>(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/settings_ex/location/LocationSettings$1;)V

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mServiceConn:Lcom/android/settings_ex/location/LocationSettings$XTServiceConnection;

    .line 174
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/location/XT/IXTSrv;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.qualcomm.location.XT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    return-void
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 569
    const-string v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 580
    return-void
.end method

.method private showLocationCategories()V
    .locals 4

    .prologue
    .line 462
    iget-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettings;->izatConnResult:Z

    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->enhancedLocation:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 467
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->locationModeCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 468
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mRecentLocationCategory:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 469
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mPreferenceRecentLocationRequests:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 470
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryLocationServices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "lockdownOnLocationAccess":Z
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_share_location"

    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings_ex/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 477
    return-void

    .line 465
    .end local v0    # "lockdownOnLocationAccess":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->enhancedLocation:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V
    .locals 3
    .param p1, "activated"    # Lcom/android/settings_ex/location/RadioButtonPreference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 492
    if-nez p1, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 499
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 501
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 503
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings_ex/location/LocationSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/location/LocationSettings$4;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 285
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 287
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    .prologue
    .line 392
    const v0, 0x7f0c0958

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 149
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 150
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 152
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 154
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onDestroyView()V

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 160
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 397
    packed-switch p1, :pswitch_data_0

    .line 417
    :goto_0
    if-eqz p1, :cond_3

    move v0, v2

    .line 418
    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 419
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 420
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v4, 0x7f0c0baa

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 421
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->showLocationCategories()V

    .line 429
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-nez p2, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 430
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 431
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-eqz v0, :cond_7

    if-nez p2, :cond_7

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 432
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-eqz v0, :cond_8

    if-nez p2, :cond_8

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 433
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mPreferenceRecentLocationRequests:Landroid/preference/Preference;

    if-eqz v0, :cond_9

    if-nez p2, :cond_9

    :goto_7
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 434
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 436
    iget-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 440
    iget-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    if-eqz v1, :cond_2

    .line 449
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/settings_ex/location/SettingsInjector;->reloadStatusMessages()V

    .line 451
    :cond_2
    return-void

    .line 399
    .end local v0    # "enabled":Z
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 405
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 408
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 417
    goto/16 :goto_1

    .line 423
    .restart local v0    # "enabled":Z
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 424
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v4, 0x7f0c0bab

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 425
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->hideLocationCategories()V

    goto/16 :goto_2

    :cond_5
    move v1, v3

    .line 429
    goto/16 :goto_3

    :cond_6
    move v1, v3

    .line 430
    goto :goto_4

    :cond_7
    move v1, v3

    .line 431
    goto :goto_5

    :cond_8
    move v1, v3

    .line 432
    goto :goto_6

    :cond_9
    move v2, v3

    .line 433
    goto :goto_7

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 262
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 264
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onPause()V

    .line 265
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/location/RadioButtonPreference;)V
    .locals 2
    .param p1, "emiter"    # Lcom/android/settings_ex/location/RadioButtonPreference;

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 483
    const/4 v0, 0x3

    .line 489
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    .line 490
    return-void

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 485
    const/4 v0, 0x2

    goto :goto_0

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 487
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onResume()V

    .line 242
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 243
    iget-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 247
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onStart()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->initUserPrefService()V

    .line 166
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onStop()V

    .line 271
    return-void
.end method

.method public onSwitchChanged(Lcn/nubia/commonui/widget/NubiaSwitch;Z)V
    .locals 2
    .param p1, "switchView"    # Lcn/nubia/commonui/widget/NubiaSwitch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 516
    if-eqz p2, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0baa

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 518
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    .line 523
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const v1, 0x7f0c0bab

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setText(I)V

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method
