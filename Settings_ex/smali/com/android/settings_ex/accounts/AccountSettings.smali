.class public Lcom/android/settings_ex/accounts/AccountSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;,
        Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;,
        Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;,
        Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    }
.end annotation


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mDisplaySyncData:Z

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private mProfileNotAvailablePreference:Landroid/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 71
    iput-boolean v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mDisplaySyncData:Z

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Lcom/android/settings_ex/accounts/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    .line 84
    iput v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 593
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/settings_ex/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 6
    .param p1, "helper"    # Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 444
    iget v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    if-nez v4, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v2

    .line 448
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 450
    .local v0, "authoritiesForType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 451
    const-string v2, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No sync authorities for account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 452
    goto :goto_0

    .line 454
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    if-ge v1, v4, :cond_3

    .line 455
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 459
    goto :goto_0
.end method

.method private cleanUpPreferences()V
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 331
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 335
    return-void
.end method

.method private getAccountTypePreferences(Lcom/android/settings_ex/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "helper"    # Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v13

    .line 386
    .local v13, "accountTypes":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    array-length v2, v13

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    .local v12, "accountTypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v2, v13

    if-ge v15, v2, :cond_4

    .line 390
    aget-object v11, v13, v15

    .line 392
    .local v11, "accountType":Ljava/lang/String;
    const-string v2, "com.ztemt"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.cloud"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/settings_ex/accounts/AccountSettings;->accountTypeHasAnyRequestedAuthorities(Lcom/android/settings_ex/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 389
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 397
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QTI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 400
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 401
    .local v6, "titleResPackageName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v7

    .line 403
    .local v7, "titleResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v14

    .line 405
    .local v14, "accounts":[Landroid/accounts/Account;
    array-length v2, v14

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v16, 0x1

    .line 408
    .local v16, "skipToAccount":Z
    :goto_2
    if-eqz v16, :cond_3

    .line 409
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 410
    .local v9, "fragmentArguments":Landroid/os/Bundle;
    const-string v2, "account"

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 412
    const-string v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 414
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v3, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 405
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v16    # "skipToAccount":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 419
    .restart local v16    # "skipToAccount":Z
    :cond_3
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 420
    .restart local v9    # "fragmentArguments":Landroid/os/Bundle;
    const-string v2, "account_type"

    invoke-virtual {v9, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v2, "account_label"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 425
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v3, Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 433
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "titleResPackageName":Ljava/lang/String;
    .end local v7    # "titleResId":I
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v14    # "accounts":[Landroid/accounts/Account;
    .end local v16    # "skipToAccount":Z
    :cond_4
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/accounts/AccountSettings$2;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;)V

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 439
    return-object v12
.end method

.method private getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 321
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v3}, Lcom/android/settings_ex/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 322
    .local v0, "adminApplicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 323
    const/4 v3, 0x0

    .line 326
    :goto_0
    return-object v3

    .line 325
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 326
    .local v1, "appLabel":Ljava/lang/CharSequence;
    const v3, 0x7f0c0a62

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private listenToAccountUpdates()V
    .locals 4

    .prologue
    .line 338
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 339
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 340
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 341
    .local v0, "authenticatorHelper":Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 339
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "authenticatorHelper":Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0c07e5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 304
    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 305
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 306
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 307
    return-object v0
.end method

.method private newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0c07e7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 313
    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 314
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 315
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 316
    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    .prologue
    .line 348
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 349
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 350
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 351
    .local v0, "authenticatorHelper":Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 349
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "authenticatorHelper":Lcom/android/settings_ex/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V
    .locals 5
    .param p1, "profileData"    # Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .prologue
    .line 358
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 359
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/accounts/AccountSettings;->getAccountTypePreferences(Lcom/android/settings_ex/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 362
    .local v2, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 363
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 364
    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_0
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 367
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 378
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;>;"
    :cond_1
    :goto_1
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 379
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 381
    :cond_2
    return-void

    .line 371
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 372
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f020099

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 373
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f0c07e6

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 376
    iget-object v3, p1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 7
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "addCategory"    # Z
    .param p3, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 270
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/settings_ex/accounts/AccountSettings$1;)V

    .line 271
    .local v1, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iput-object p1, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 272
    if-eqz p2, :cond_3

    .line 273
    new-instance v3, Lcom/android/settings_ex/AccessiblePreferenceCategory;

    invoke-direct {v3, v0}, Lcom/android/settings_ex/AccessiblePreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    .line 274
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0401f6

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 276
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0c0356

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 277
    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/accounts/AccountSettings;->getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "workGroupSummary":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    check-cast v3, Lcom/android/settings_ex/AccessiblePreferenceCategory;

    const v4, 0x7f0c0357

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    .line 287
    .end local v2    # "workGroupSummary":Ljava/lang/String;
    :goto_1
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p3, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 291
    :goto_2
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    new-instance v3, Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-direct {v3, v0, v4, v5, p0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings_ex/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 294
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_modify_accounts"

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 295
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    .line 298
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 283
    :cond_2
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0c0355

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 284
    iget-object v3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    check-cast v3, Lcom/android/settings_ex/AccessiblePreferenceCategory;

    const v4, 0x7f0c0358

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :cond_3
    iput-object p3, v1, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x8

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 190
    .local v0, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing Settings screen for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    .line 121
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 126
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    .line 127
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mDisplaySyncData:Z

    if-eqz v0, :cond_0

    .line 132
    const/high16 v0, 0x7f140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 135
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->cleanUpPreferences()V

    .line 185
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 200
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 201
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 202
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 203
    .local v3, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iget-object v6, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-ne p1, v6, :cond_0

    .line 204
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.USER"

    iget-object v7, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    const-string v6, "authorities"

    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 223
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    :goto_1
    return v5

    .line 210
    .restart local v3    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    :cond_0
    iget-object v6, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-ne p1, v6, :cond_1

    .line 211
    iget-object v6, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .line 212
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/accounts/AccountSettings$1;

    invoke-direct {v7, p0, v4}, Lcom/android/settings_ex/accounts/AccountSettings$1;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;I)V

    invoke-static {v6, v4, v7}, Lcom/android/settings_ex/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/commonui/app/Dialog;->show()V

    goto :goto_1

    .line 201
    .end local v4    # "userId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v3    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f1204c5

    const v7, 0x7f1204c4

    const v6, 0x7f1204c3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 139
    iget-boolean v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mDisplaySyncData:Z

    if-nez v2, :cond_0

    .line 169
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 143
    .local v0, "currentProfile":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 144
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 149
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 153
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    iget-object v2, v2, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 155
    .local v1, "managedProfile":Landroid/os/UserHandle;
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 160
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 165
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 167
    .end local v1    # "managedProfile":Landroid/os/UserHandle;
    :cond_2
    const-string v2, "AccountSettings"

    const-string v3, "Method onPrepareOptionsMenu called before mProfiles was initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->updateUi()V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->listenToAccountUpdates()V

    .line 177
    return-void
.end method

.method updateUi()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 228
    const v7, 0x7f080003

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/accounts/AccountSettings;->addPreferencesFromResource(I)V

    .line 230
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 232
    const-string v7, "AccountSettings"

    const-string v8, "We should not be showing settings for a managed profile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->finish()V

    .line 262
    :cond_0
    return-void

    .line 237
    :cond_1
    const-string v7, "account"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 238
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 240
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 241
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v6, v9, v2}, Lcom/android/settings_ex/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 254
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 255
    .local v5, "profilesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 256
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;

    .line 257
    .local v3, "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    iget-object v7, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 258
    iget-object v7, v3, Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings_ex/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    .end local v3    # "profileData":Lcom/android/settings_ex/accounts/AccountSettings$ProfileData;
    .end local v5    # "profilesCount":I
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 244
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 245
    .restart local v5    # "profilesCount":I
    const/4 v0, 0x0

    .line 246
    .local v0, "addCategory":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 247
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v9, v2}, Lcom/android/settings_ex/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
