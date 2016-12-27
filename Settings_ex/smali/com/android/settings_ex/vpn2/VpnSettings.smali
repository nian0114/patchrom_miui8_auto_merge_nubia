.class public Lcom/android/settings_ex/vpn2/VpnSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final VPN_REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private mAddVpnButton:Landroid/widget/Button;

.field private mAppPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/vpn2/AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/vpn2/ConfigPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mListView:Landroid/widget/ListView;

.field private mManageListener:Landroid/view/View$OnClickListener;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mSelectedKey:Ljava/lang/String;

.field private mUnavailable:Z

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;

.field private mUserManager:Landroid/os/UserManager;

.field private mVpnListGroup:Landroid/preference/PreferenceGroup;

.field private mVpnLockdown:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 101
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 106
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    .line 510
    new-instance v0, Lcom/android/settings_ex/vpn2/VpnSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$4;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    .line 532
    new-instance v0, Lcom/android/settings_ex/vpn2/VpnSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$5;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/vpn2/VpnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->createVpn()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/vpn2/VpnSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSettings;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings_ex/vpn2/VpnSettings;->showMenuDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/vpn2/VpnSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSettings;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings_ex/vpn2/VpnSettings;->editVpnMenu(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/vpn2/VpnSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSettings;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings_ex/vpn2/VpnSettings;->deleteVpnMenu(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/vpn2/VpnSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSettings;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    return-object v0
.end method

.method private createVpn()V
    .locals 8

    .prologue
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 193
    .local v2, "millis":J
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_0

    .line 196
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings.VPN_SETTINGS_ACTIVITY"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    new-instance v4, Lcom/android/internal/net/VpnProfile;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 199
    .local v4, "profile":Lcom/android/internal/net/VpnProfile;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "VpnKey"

    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v5, "VpnProfile"

    invoke-virtual {v4}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 202
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 203
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/android/settings_ex/vpn2/VpnSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->overridePendingTransition(Landroid/content/Context;)V

    .line 205
    return-void
.end method

.method private deleteVpnMenu(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .line 384
    .local v0, "preference":Lcom/android/settings_ex/vpn2/ConfigPreference;
    if-nez v0, :cond_1

    .line 385
    const-string v1, "VpnSettings"

    const-string v2, "editVpnMenu() is called but no preference is found"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 390
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 392
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 395
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    .line 396
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 609
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 610
    .local v0, "connected":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    const-string v3, "[Legacy VPN]"

    const-string v4, "[Legacy VPN]"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .end local v0    # "connected":Lcom/android/internal/net/LegacyVpnInfo;
    :cond_0
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "VpnSettings"

    const-string v3, "Failed to disconnect"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private editVpnMenu(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 365
    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .line 366
    .local v2, "preference":Lcom/android/settings_ex/vpn2/ConfigPreference;
    if-nez v2, :cond_0

    .line 367
    const-string v4, "VpnSettings"

    const-string v5, "editVpnMenu() is called but no preference is found"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 371
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings.VPN_SETTINGS_ACTIVITY"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {v2}, Lcom/android/settings_ex/vpn2/ConfigPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    .line 373
    .local v3, "profile":Lcom/android/internal/net/VpnProfile;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 374
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "VpnKey"

    iget-object v5, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v4, "VpnProfile"

    invoke-virtual {v3}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 376
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 377
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/settings_ex/vpn2/VpnSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 378
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils$NubiaDialogAnim;->overridePendingTransition(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getVpnApps()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x2f

    .line 554
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 557
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 558
    .local v3, "currentProfileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v11, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    .line 559
    .local v8, "profile":Landroid/os/UserHandle;
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 563
    .end local v8    # "profile":Landroid/os/UserHandle;
    :cond_0
    const-string v11, "appops"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 564
    .local v1, "aom":Landroid/app/AppOpsManager;
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v13, v11, v12

    invoke-virtual {v1, v11}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    .line 565
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v2, :cond_4

    .line 566
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 567
    .local v7, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 568
    .local v10, "userId":I
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "allowed":Z
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 575
    .local v6, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    if-ne v11, v13, :cond_2

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v11

    if-nez v11, :cond_2

    .line 577
    const/4 v0, 0x1

    goto :goto_2

    .line 580
    .end local v6    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_3
    if-eqz v0, :cond_1

    .line 581
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 585
    .end local v0    # "allowed":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "userId":I
    :cond_4
    return-object v9
.end method

.method private static getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initVpnAlwaysOnPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 208
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 209
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnLockdown:Landroid/preference/Preference;

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnLockdown:Landroid/preference/Preference;

    .line 212
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnLockdown:Landroid/preference/Preference;

    const v2, 0x7f0c08ca

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnLockdown:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnLockdown:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 217
    :cond_0
    const-string v1, "persist.radio.imsregrequired"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnLockdown:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnLockdown:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    :cond_1
    return-void
.end method

.method private initVpnListGroup()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0c0bf3

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 274
    :cond_0
    return-void
.end method

.method private initVpnListPreference()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 228
    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 231
    .local v0, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v8, v9, [I

    invoke-static {v7, v8}, Lcom/android/settings_ex/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v6

    .line 232
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 233
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    .end local v0    # "context":Landroid/content/Context;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    :goto_0
    return-void

    .line 236
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->initVpnListGroup()V

    .line 238
    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v8, v9, [I

    invoke-static {v7, v8}, Lcom/android/settings_ex/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 239
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_3

    .line 240
    new-instance v4, Lcom/android/settings_ex/vpn2/ConfigPreference;

    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    invoke-direct {v4, v0, v7, v5}, Lcom/android/settings_ex/vpn2/ConfigPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V

    .line 242
    .local v4, "pref":Lcom/android/settings_ex/vpn2/ConfigPreference;
    invoke-virtual {v4, p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 243
    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 249
    .end local v4    # "pref":Lcom/android/settings_ex/vpn2/ConfigPreference;
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getVpnApps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    .line 250
    .local v3, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings_ex/vpn2/VpnSettings;->getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "key":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 252
    new-instance v4, Lcom/android/settings_ex/vpn2/AppPreference;

    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-direct {v4, v0, v7, v8, v9}, Lcom/android/settings_ex/vpn2/AppPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    .line 254
    .local v4, "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    invoke-virtual {v4, p0}, Lcom/android/settings_ex/vpn2/AppPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 255
    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 261
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v4    # "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    if-eqz v7, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method protected static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 8
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "excludeTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 593
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    invoke-virtual {p0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 604
    :cond_0
    return-object v5

    .line 598
    :cond_1
    const-string v6, "VPN_"

    invoke-virtual {p0, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 599
    .local v2, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 600
    .local v4, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v4, :cond_2

    iget v6, v4, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 601
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showMenuDialog(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v5, 0x7f0c08c8

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/vpn2/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const v5, 0x7f0c08c9

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/vpn2/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 338
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 339
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 341
    .local v3, "preference":Landroid/preference/Preference;
    instance-of v5, v3, Lcom/android/settings_ex/vpn2/ConfigPreference;

    if-eqz v5, :cond_0

    .line 342
    check-cast v3, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .end local v3    # "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Lcom/android/settings_ex/vpn2/ConfigPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 343
    .local v4, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 344
    iget-object v5, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    .line 346
    .end local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_0
    new-instance v5, Lcom/android/settings_ex/vpn2/VpnSettings$3;

    invoke-direct {v5, p0, v2, p1}, Lcom/android/settings_ex/vpn2/VpnSettings$3;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v0, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 360
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 362
    .end local v1    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 550
    const v0, 0x7f0c094f

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x64

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    .line 418
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 420
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 422
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_1

    .line 423
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 425
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->initVpnListPreference()V

    .line 429
    const/4 v6, 0x0

    :try_start_0
    iput-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    .line 430
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    .line 431
    .local v2, "info":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v2, :cond_2

    .line 432
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .line 433
    .local v4, "preference":Lcom/android/settings_ex/vpn2/ConfigPreference;
    if-eqz v4, :cond_2

    .line 434
    iget v6, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setState(I)V

    .line 435
    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    .line 440
    .end local v4    # "preference":Lcom/android/settings_ex/vpn2/ConfigPreference;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 441
    .local v5, "profile":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 442
    .local v0, "cfg":Lcom/android/internal/net/VpnConfig;
    if-eqz v0, :cond_3

    .line 443
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings_ex/vpn2/VpnSettings;->getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 445
    .local v4, "preference":Lcom/android/settings_ex/vpn2/AppPreference;
    if-eqz v4, :cond_3

    .line 446
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/vpn2/AppPreference;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    .end local v0    # "cfg":Lcom/android/internal/net/VpnConfig;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "preference":Lcom/android/settings_ex/vpn2/AppPreference;
    .end local v5    # "profile":Landroid/os/UserHandle;
    :catch_0
    move-exception v6

    .line 454
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 455
    const/4 v6, 0x1

    return v6
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 147
    packed-switch p2, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 149
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    const-string v3, "VpnKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VpnProfile"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 152
    .local v1, "mReturnProfile":Lcom/android/internal/net/VpnProfile;
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 154
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .line 155
    .local v2, "preference":Lcom/android/settings_ex/vpn2/ConfigPreference;
    if-eqz v2, :cond_0

    .line 156
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setProfile(Lcom/android/internal/net/VpnProfile;)V

    goto :goto_0

    .line 159
    :cond_0
    new-instance v2, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .end local v2    # "preference":Lcom/android/settings_ex/vpn2/ConfigPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/settings_ex/vpn2/ConfigPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V

    .line 160
    .restart local v2    # "preference":Lcom/android/settings_ex/vpn2/ConfigPreference;
    invoke-virtual {v2, p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 161
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->initVpnListGroup()V

    .line 163
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_vpn"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iput-boolean v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    .line 134
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 142
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    const v2, 0x7f0401db

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 176
    .local v0, "list":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 178
    const v2, 0x7f120414

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mEmptyView:Landroid/widget/TextView;

    .line 179
    const v2, 0x7f120413

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAddVpnButton:Landroid/widget/Button;

    .line 180
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAddVpnButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings_ex/vpn2/VpnSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$1;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 403
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 414
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 410
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 413
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 460
    instance-of v10, p1, Lcom/android/settings_ex/vpn2/ConfigPreference;

    if-eqz v10, :cond_1

    .line 461
    check-cast p1, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings_ex/vpn2/ConfigPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 462
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v10, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v10, :cond_0

    iget-object v10, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v11, v11, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v10, v12, :cond_0

    .line 465
    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    :goto_0
    return v8

    .line 467
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    :catch_0
    move-exception v10

    .line 471
    :cond_0
    invoke-static {p0, v5, v9, v8}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    goto :goto_0

    .line 473
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_1
    instance-of v10, p1, Lcom/android/settings_ex/vpn2/AppPreference;

    if-eqz v10, :cond_4

    move-object v4, p1

    .line 474
    check-cast v4, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 475
    .local v4, "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    invoke-virtual {v4}, Lcom/android/settings_ex/vpn2/AppPreference;->getState()I

    move-result v10

    if-ne v10, v12, :cond_3

    move v1, v8

    .line 477
    .local v1, "connected":Z
    :goto_1
    if-nez v1, :cond_2

    .line 479
    :try_start_1
    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {v4}, Lcom/android/settings_ex/vpn2/AppPreference;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v6, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 480
    .local v6, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v6}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    .line 482
    .local v7, "userContext":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 483
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Lcom/android/settings_ex/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 484
    .local v0, "appIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {v7, v0, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 488
    .end local v0    # "appIntent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "user":Landroid/os/UserHandle;
    .end local v7    # "userContext":Landroid/content/Context;
    :catch_1
    move-exception v10

    .line 494
    :cond_2
    invoke-virtual {v4}, Lcom/android/settings_ex/vpn2/AppPreference;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 495
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v4}, Lcom/android/settings_ex/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v2, v10, v9, v1}, Lcom/android/settings_ex/vpn2/AppDialogFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    goto :goto_0

    .end local v1    # "connected":Z
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    move v1, v9

    .line 475
    goto :goto_1

    .end local v4    # "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    :cond_4
    move v8, v9

    .line 498
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mVpnLockdown:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 504
    invoke-static {p0}, Lcom/android/settings_ex/vpn2/LockdownConfigFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    .line 507
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 280
    iget-boolean v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v3, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f120414

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 284
    if-eqz v0, :cond_0

    .line 285
    const v3, 0x7f0c05ec

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAddVpnButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAddVpnButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    .end local v0    # "emptyView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.net.vpn.PICK_LOCKDOWN"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 294
    .local v1, "pickLockdown":Z
    if-eqz v1, :cond_3

    .line 295
    invoke-static {p0}, Lcom/android/settings_ex/vpn2/LockdownConfigFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    .line 297
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v4, Lcom/android/settings_ex/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v4, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 299
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v3

    if-nez v3, :cond_6

    .line 300
    iget-boolean v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v3, :cond_5

    .line 302
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 307
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    goto :goto_0

    .line 305
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->finishFragment()V

    goto :goto_1

    .line 312
    :cond_6
    iput-boolean v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    .line 314
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->initVpnAlwaysOnPreference()V

    .line 315
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->initVpnListPreference()V

    .line 318
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v3, :cond_7

    .line 319
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 321
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mListView:Landroid/widget/ListView;

    .line 324
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings_ex/vpn2/VpnSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$2;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0
.end method
