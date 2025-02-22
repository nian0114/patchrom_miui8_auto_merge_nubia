.class public Lcom/android/settings_ex/accounts/AccountSyncSettings;
.super Lcom/android/settings_ex/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuCreated:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mSwitches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncNowTextView:Landroid/widget/TextView;

.field private mUserId:Landroid/widget/TextView;

.field private msyncCancelTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    .line 85
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;-><init>(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/AccountSyncSettings;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSyncSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/accounts/AccountSyncSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSyncSettings;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/accounts/AccountSyncSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSyncSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSyncNowTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/accounts/AccountSyncSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSyncSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->msyncCancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSyncSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSyncSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/accounts/AccountSyncSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSyncSettings;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method private accountExists(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 560
    if-nez p1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return v3

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    .line 564
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    .line 565
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 566
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 567
    const/4 v3, 0x1

    goto :goto_0

    .line 565
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private addBottomToolBar()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 308
    const-string v2, "com.ztemt"

    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.cloud"

    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSyncNowTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->msyncCancelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 314
    .local v0, "syncActive":Z
    :goto_1
    if-nez v0, :cond_3

    .line 315
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSyncNowTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->msyncCancelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "syncActive":Z
    :cond_2
    move v0, v1

    .line 312
    goto :goto_1

    .line 318
    .restart local v0    # "syncActive":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSyncNowTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->msyncCancelTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 287
    const/4 v4, 0x1

    const v5, 0x7f0c07f4

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0200f2

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 290
    .local v2, "syncNow":Landroid/view/MenuItem;
    const/4 v4, 0x2

    const v5, 0x7f0c07f5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x1080038

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 293
    .local v1, "syncCancel":Landroid/view/MenuItem;
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 294
    .local v3, "um":Landroid/os/UserManager;
    const-string v4, "no_modify_accounts"

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 295
    const/4 v4, 0x3

    const v5, 0x7f0c07ff

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0200f0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 298
    .local v0, "removeAccount":Landroid/view/MenuItem;
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 301
    .end local v0    # "removeAccount":Landroid/view/MenuItem;
    :cond_0
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 303
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 305
    return-void
.end method

.method private addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 254
    new-instance v0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, p1, p2}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 256
    .local v0, "item":Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v0, v6}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setPersistent(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, p2, v6, v5}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 259
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 263
    .local v2, "providerLabel":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider needs a label for authority \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_1
    const v4, 0x7f0c0806

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 270
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 2

    .prologue
    .line 420
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 421
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 422
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 425
    :cond_0
    return-void
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 462
    .local v1, "syncInfo":Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    const/4 v2, 0x1

    .line 466
    .end local v1    # "syncInfo":Landroid/content/SyncInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .prologue
    .line 450
    if-eqz p3, :cond_0

    .line 451
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1, v0}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 458
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 8
    .param p1, "startSync"    # Z

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 430
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 431
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 432
    .local v3, "pref":Landroid/preference/Preference;
    instance-of v6, v3, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;

    if-nez v6, :cond_1

    .line 430
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 435
    check-cast v5, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;

    .line 436
    .local v5, "syncPref":Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 439
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 442
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v5    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_3

    .line 443
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncAdapterType;

    .line 444
    .local v4, "syncAdapter":Landroid/content/SyncAdapterType;
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 447
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "syncAdapter":Landroid/content/SyncAdapterType;
    :cond_3
    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 226
    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 227
    .local v3, "um":Landroid/os/UserManager;
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 228
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    .line 229
    .local v2, "isWorkProfile":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 230
    .local v1, "currentTitle":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    const v6, 0x7f0c0359

    :goto_1
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "accessibilityTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v1, v0}, Lcom/android/settings_ex/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    return-void

    .end local v0    # "accessibilityTitle":Ljava/lang/String;
    .end local v1    # "currentTitle":Ljava/lang/CharSequence;
    .end local v2    # "isWorkProfile":Z
    :cond_0
    move v2, v5

    .line 228
    goto :goto_0

    .line 230
    .restart local v1    # "currentTitle":Ljava/lang/CharSequence;
    .restart local v2    # "isWorkProfile":Z
    :cond_1
    const v6, 0x7f0c035a

    goto :goto_1
.end method

.method private setFeedsState()V
    .locals 28

    .prologue
    .line 481
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 482
    .local v8, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    .line 483
    .local v22, "userId":I
    invoke-static/range {v22 .. v22}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v7

    .line 484
    .local v7, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/16 v18, 0x0

    .line 487
    .local v18, "syncIsFailing":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 489
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    .local v6, "count":I
    :goto_0
    if-ge v9, v6, :cond_10

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v13

    .line 491
    .local v13, "pref":Landroid/preference/Preference;
    instance-of v0, v13, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 489
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v19, v13

    .line 494
    check-cast v19, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;

    .line 496
    .local v19, "syncPref":Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 499
    .local v2, "account":Landroid/accounts/Account;
    move/from16 v0, v22

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v14

    .line 500
    .local v14, "status":Landroid/content/SyncStatusInfo;
    move/from16 v0, v22

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    .line 502
    .local v15, "syncEnabled":Z
    if-nez v14, :cond_5

    const/4 v5, 0x0

    .line 503
    .local v5, "authorityIsPending":Z
    :goto_2
    if-nez v14, :cond_6

    const/4 v10, 0x0

    .line 505
    .local v10, "initialSync":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 506
    .local v3, "activelySyncing":Z
    if-eqz v14, :cond_7

    iget-wide v0, v14, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_7

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    const/4 v11, 0x1

    .line 510
    .local v11, "lastSyncFailed":Z
    :goto_4
    if-nez v15, :cond_1

    const/4 v11, 0x0

    .line 511
    :cond_1
    if-eqz v11, :cond_2

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 512
    const/16 v18, 0x1

    .line 514
    :cond_2
    const-string v23, "AccountSettings"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 515
    const-string v23, "AccountSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Update sync status: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " active = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " pend ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_3
    if-nez v14, :cond_8

    const-wide/16 v16, 0x0

    .line 520
    .local v16, "successEndTime":J
    :goto_5
    if-nez v15, :cond_9

    .line 521
    const v23, 0x7f0c07ee

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setSummary(I)V

    .line 531
    :goto_6
    move/from16 v0, v22

    invoke-static {v2, v4, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v20

    .line 533
    .local v20, "syncState":I
    if-eqz v3, :cond_c

    if-ltz v20, :cond_c

    if-nez v10, :cond_c

    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 535
    if-eqz v5, :cond_d

    if-ltz v20, :cond_d

    if-nez v10, :cond_d

    const/16 v23, 0x1

    :goto_8
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 538
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 539
    invoke-static/range {v22 .. v22}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v23

    if-nez v23, :cond_e

    const/4 v12, 0x1

    .line 541
    .local v12, "oneTimeSyncMode":Z
    :goto_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setOneTimeSyncMode(Z)V

    .line 542
    if-nez v12, :cond_4

    if-eqz v15, :cond_f

    :cond_4
    const/16 v23, 0x1

    :goto_a
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 502
    .end local v3    # "activelySyncing":Z
    .end local v5    # "authorityIsPending":Z
    .end local v10    # "initialSync":Z
    .end local v11    # "lastSyncFailed":Z
    .end local v12    # "oneTimeSyncMode":Z
    .end local v16    # "successEndTime":J
    .end local v20    # "syncState":I
    :cond_5
    iget-boolean v5, v14, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    .line 503
    .restart local v5    # "authorityIsPending":Z
    :cond_6
    iget-boolean v10, v14, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    .line 506
    .restart local v3    # "activelySyncing":Z
    .restart local v10    # "initialSync":Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 519
    .restart local v11    # "lastSyncFailed":Z
    :cond_8
    iget-wide v0, v14, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v16, v0

    goto :goto_5

    .line 522
    .restart local v16    # "successEndTime":J
    :cond_9
    if-eqz v3, :cond_a

    .line 523
    const v23, 0x7f0c07f1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setSummary(I)V

    goto :goto_6

    .line 524
    :cond_a
    const-wide/16 v24, 0x0

    cmp-long v23, v16, v24

    if-eqz v23, :cond_b

    .line 525
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 526
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    .line 527
    .local v21, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c07f0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v21, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 529
    .end local v21    # "timeString":Ljava/lang/String;
    :cond_b
    const-string v23, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 533
    .restart local v20    # "syncState":I
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 535
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 539
    :cond_e
    const/4 v12, 0x0

    goto :goto_9

    .line 542
    .restart local v12    # "oneTimeSyncMode":Z
    :cond_f
    const/16 v23, 0x0

    goto :goto_a

    .line 544
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "activelySyncing":Z
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "authorityIsPending":Z
    .end local v10    # "initialSync":Z
    .end local v11    # "lastSyncFailed":Z
    .end local v12    # "oneTimeSyncMode":Z
    .end local v13    # "pref":Landroid/preference/Preference;
    .end local v14    # "status":Landroid/content/SyncStatusInfo;
    .end local v15    # "syncEnabled":Z
    .end local v16    # "successEndTime":J
    .end local v19    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;
    .end local v20    # "syncState":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    if-eqz v18, :cond_11

    const/16 v23, 0x0

    :goto_b
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    return-void

    .line 544
    :cond_11
    const/16 v23, 0x8

    goto :goto_b
.end method

.method private startSyncForEnabledProviders()V
    .locals 2

    .prologue
    .line 412
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 413
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 414
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 417
    :cond_0
    return-void
.end method

.method private updateAccountSwitches()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 574
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 576
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v9}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 578
    .local v7, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v0, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v5, v7

    .local v5, "n":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 580
    aget-object v6, v7, v2

    .line 582
    .local v6, "sa":Landroid/content/SyncAdapterType;
    iget-object v9, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 579
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 584
    const-string v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 585
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAccountSwitches: added authority "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to accountType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_1
    iget-object v9, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 592
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 596
    .end local v6    # "sa":Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v2, v5, :cond_4

    .line 597
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 599
    :cond_4
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 601
    const-string v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 602
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "looking for sync adapters that match account "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_5
    const/4 v3, 0x0

    .local v3, "j":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "m":I
    :goto_3
    if-ge v3, v4, :cond_8

    .line 605
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 607
    .local v1, "authority":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v10, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-static {v9, v1, v10}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v8

    .line 609
    .local v8, "syncState":I
    const-string v9, "AccountSettings"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 610
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  found authority "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_6
    if-lez v8, :cond_7

    .line 613
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v9, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 604
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 617
    .end local v1    # "authority":Ljava/lang/String;
    .end local v8    # "syncState":I
    :cond_8
    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 618
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_4
    if-ge v2, v5, :cond_9

    .line 619
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v9, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSwitches:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 618
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 621
    :cond_9
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 638
    const v0, 0x7f0c0952

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x9

    return v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 184
    const v0, 0x7f120061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    const v0, 0x7f1203de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f1203df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f1203dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 190
    return-void
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 549
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 550
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->finish()V

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 556
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 197
    .local v2, "arguments":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 198
    const-string v4, "AccountSettings"

    const-string v5, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->finish()V

    .line 223
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v4, "account_type"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 203
    .local v3, "object":Ljava/lang/Object;
    if-eqz v3, :cond_2

    const-string v4, "nubia_account"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 205
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v4, "com.ztemt"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 207
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v4, v0

    if-eqz v4, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    .line 208
    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 213
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v1    # "am":Landroid/accounts/AccountManager;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 214
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account provided does not exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->finish()V

    goto :goto_0

    .line 211
    :cond_2
    const-string v4, "account"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    iput-object v4, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    goto :goto_1

    .line 218
    :cond_3
    const-string v4, "AccountSettings"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 219
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got account: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 2

    .prologue
    .line 628
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 629
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 630
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 158
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->setAccessibilityTitle()V

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 162
    return-void
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0c0802

    const v4, 0x104000a

    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "dialog":Lcn/nubia/commonui/app/Dialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 91
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0803

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c07ff

    new-instance v3, Lcom/android/settings_ex/accounts/AccountSyncSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings$1;-><init>(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 134
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0804

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_2
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 140
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0807

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0808

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 276
    invoke-direct {p0, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mMenuCreated:Z

    .line 283
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 284
    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->addBottomToolBar()V

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mMenuCreated:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 167
    const v3, 0x7f040019

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 169
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 170
    .local v0, "list":Landroid/widget/ListView;
    invoke-static {p2, v2, v0, v4}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 172
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 174
    const v3, 0x7f120064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSyncNowTextView:Landroid/widget/TextView;

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mSyncNowTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v3, 0x7f120065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->msyncCancelTextView:Landroid/widget/TextView;

    .line 177
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->msyncCancelTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v3, 0x7f120066

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    .local v1, "removeAccount":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 354
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 345
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    goto :goto_0

    .line 348
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    goto :goto_0

    .line 351
    :pswitch_2
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->showDialog(I)V

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPause()V

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 251
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferences"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 359
    instance-of v8, p2, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;

    if-eqz v8, :cond_3

    move-object v5, p2

    .line 360
    check-cast v5, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;

    .line 361
    .local v5, "syncPref":Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "authority":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 363
    .local v0, "account":Landroid/accounts/Account;
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 364
    .local v6, "userId":I
    invoke-static {v0, v1, v6}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    .line 366
    .local v3, "syncAutomatically":Z
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->isOneTimeSyncMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 367
    invoke-direct {p0, v0, v1, v7}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 384
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "syncAutomatically":Z
    .end local v5    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;
    .end local v6    # "userId":I
    :cond_0
    :goto_0
    return v7

    .line 369
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v3    # "syncAutomatically":Z
    .restart local v5    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;
    .restart local v6    # "userId":I
    :cond_1
    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v4

    .line 370
    .local v4, "syncOn":Z
    move v2, v3

    .line 371
    .local v2, "oldSyncState":Z
    if-eq v4, v2, :cond_0

    .line 373
    invoke-static {v0, v1, v4, v6}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 377
    invoke-static {v6}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v4, :cond_0

    .line 378
    :cond_2
    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 384
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "oldSyncState":Z
    .end local v3    # "syncAutomatically":Z
    .end local v4    # "syncOn":Z
    .end local v5    # "syncPref":Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;
    .end local v6    # "userId":I
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 328
    iget-boolean v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mMenuCreated:Z

    if-eqz v3, :cond_1

    .line 329
    const-string v3, "com.ztemt"

    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cn.nubia.cloud"

    iget-object v4, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 335
    .local v0, "syncActive":Z
    :goto_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_4

    :goto_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 336
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0    # "syncActive":Z
    :cond_3
    move v0, v2

    .line 333
    goto :goto_1

    .restart local v0    # "syncActive":Z
    :cond_4
    move v1, v2

    .line 335
    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 239
    const-string v0, "dummy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->removePreference(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 242
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 244
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onResume()V

    .line 245
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->setFeedsState()V

    .line 473
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 474
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
