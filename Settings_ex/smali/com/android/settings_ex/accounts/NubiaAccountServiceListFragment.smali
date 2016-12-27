.class public Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NubiaAccountServiceListFragment.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountName:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mBindBaiduAccountHelper:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

.field private final mCallback:Lcom/android/settings_ex/accounts/ExtendCallback;

.field private mCloudDatabackPreference:Landroid/preference/Preference;

.field private mCloudRecoveryPreference:Landroid/preference/Preference;

.field private mExtendProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mFragmentArguments:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadImageView:Landroid/widget/ImageView;

.field private final mHeadPreferenceListener:Landroid/view/View$OnClickListener;

.field private mHeadPreferenceSummary:Ljava/lang/CharSequence;

.field private mHeadPreferenceTitle:Ljava/lang/CharSequence;

.field private mNubiaAccountAuthClient:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

.field private mSpaceCapacityPreference:Landroid/preference/Preference;

.field private mSpaceCapacitySummary:Ljava/lang/CharSequence;

.field private mSpaceExtendPreference:Landroid/preference/Preference;

.field private mThirdPartyAccountPreference:Landroid/preference/Preference;

.field private mTokenId:Ljava/lang/String;

.field private mUserHandle:Landroid/os/UserHandle;

.field private mVipServicePreference:Landroid/preference/Preference;

.field private mVipTagView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 396
    new-instance v0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$7;-><init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mCallback:Lcom/android/settings_ex/accounts/ExtendCallback;

    .line 403
    new-instance v0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$8;-><init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHandler:Landroid/os/Handler;

    .line 572
    new-instance v0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$11;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$11;-><init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHeadPreferenceListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;Lcn/nubia/accounts/auth/NubiaAccountInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;
    .param p1, "x1"    # Lcn/nubia/accounts/auth/NubiaAccountInfo;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->setHeadImageView(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->loadCloudSpace()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->onExtendComplete()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->onExtendException()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->startActivityByIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->setCloudSpace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceCapacityPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHeadImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->startExtendThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Lcom/android/settings_ex/accounts/ExtendCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mCallback:Lcom/android/settings_ex/accounts/ExtendCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mBindBaiduAccountHelper:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->hideConfirmProgress()V

    return-void
.end method

.method private accountExists(Landroid/accounts/Account;)Z
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v5, 0x0

    .line 259
    if-nez p1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v5

    .line 261
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    .line 263
    .local v1, "accounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 264
    .local v0, "a":Landroid/accounts/Account;
    invoke-virtual {v0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 265
    const/4 v5, 0x1

    goto :goto_0

    .line 263
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getAccountInfo()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mNubiaAccountAuthClient:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    new-instance v1, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$1;-><init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->getRemoteAccountInfo(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V

    .line 165
    return-void
.end method

.method private hideConfirmProgress()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mExtendProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mExtendProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mExtendProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 494
    :cond_0
    return-void
.end method

.method private inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "widget"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 508
    const v4, 0x7f040017

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 509
    .local v2, "view":Landroid/view/View;
    const v4, 0x1020018

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 511
    .local v3, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    const v4, 0x1020006

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHeadImageView:Landroid/widget/ImageView;

    .line 513
    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 514
    .local v1, "title":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHeadPreferenceTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    const v4, 0x7f12005f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mVipTagView:Landroid/widget/ImageView;

    .line 517
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->setVipTag()V

    .line 519
    const v4, 0x1020010

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 520
    .local v0, "summary":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHeadPreferenceSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    return-object v2
.end method

.method private initAccountHeadInfo(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 497
    const v3, 0x7f120263

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 499
    .local v1, "headPreference":Landroid/widget/LinearLayout;
    const v3, 0x7f04017c

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 500
    .local v0, "arrowView":Landroid/view/View;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 501
    .local v2, "headPreferenceView":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 502
    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 503
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHeadPreferenceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    return-void
.end method

.method private initAccountInfo(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    .line 273
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 274
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v2, p1, v4}, Lcom/android/settings_ex/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 278
    const-string v3, "account"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    iput-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccount:Landroid/accounts/Account;

    .line 279
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountManager:Landroid/accounts/AccountManager;

    .line 281
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountManager:Landroid/accounts/AccountManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->accountExists(Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 282
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccount:Landroid/accounts/Account;

    const-string v5, "username"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountName:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountName:Ljava/lang/String;

    .line 284
    .local v1, "title":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccount:Landroid/accounts/Account;

    const-string v5, "userId"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccount:Landroid/accounts/Account;

    const-string v5, "mobile"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "summary":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 290
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccount:Landroid/accounts/Account;

    const-string v5, "email"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccount:Landroid/accounts/Account;

    const-string v5, "baidu_cloud_space_left"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceCapacitySummary:Ljava/lang/CharSequence;

    .line 293
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceCapacitySummary:Ljava/lang/CharSequence;

    if-nez v3, :cond_5

    const-string v3, ""

    :goto_0
    iput-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceCapacitySummary:Ljava/lang/CharSequence;

    .line 294
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccount:Landroid/accounts/Account;

    const-string v5, "tokenId"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mTokenId:Ljava/lang/String;

    .line 295
    iput-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHeadPreferenceTitle:Ljava/lang/CharSequence;

    .line 296
    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHeadPreferenceSummary:Ljava/lang/CharSequence;

    .line 298
    .end local v0    # "summary":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_4
    return-void

    .line 293
    .restart local v0    # "summary":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceCapacitySummary:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private initPreference()V
    .locals 3

    .prologue
    .line 246
    const-string v0, "cloud_databack"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mCloudDatabackPreference:Landroid/preference/Preference;

    .line 247
    const-string v0, "cloud_recovery"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mCloudRecoveryPreference:Landroid/preference/Preference;

    .line 249
    const-string v0, "space_capacity"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceCapacityPreference:Landroid/preference/Preference;

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceCapacityPreference:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0ce5

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceCapacitySummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    const-string v0, "space_extend"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceExtendPreference:Landroid/preference/Preference;

    .line 254
    const-string v0, "third_party"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mThirdPartyAccountPreference:Landroid/preference/Preference;

    .line 255
    const-string v0, "vip_service"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mVipServicePreference:Landroid/preference/Preference;

    .line 256
    return-void
.end method

.method private isToExplict()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 431
    iget-object v4, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 432
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v4, "com.ztemt"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 434
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v4, v0

    if-eqz v4, :cond_0

    .line 435
    aget-object v4, v0, v3

    const-string v5, "baidu_bindType"

    invoke-virtual {v1, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "baiduBindType":Ljava/lang/String;
    const-string v4, "102"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    const/4 v3, 0x1

    .line 440
    .end local v2    # "baiduBindType":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private isVipAccount()Z
    .locals 4

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountManager:Landroid/accounts/AccountManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->accountExists(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccount:Landroid/accounts/Account;

    const-string v3, "vip_status"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "isVip":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    const/4 v1, 0x1

    .line 540
    .end local v0    # "isVip":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVipDevice()Z
    .locals 4

    .prologue
    .line 544
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "NX531J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "NX527J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    :cond_0
    const/4 v2, 0x1

    .line 552
    :goto_0
    return v2

    .line 548
    :cond_1
    :try_start_0
    const-string v2, "/sys/ztemt_hw_version/config"

    invoke-static {v2}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "config":Ljava/lang/String;
    const-string v2, "HC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 550
    .end local v0    # "config":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 552
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadCloudSpace()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mNubiaAccountAuthClient:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    new-instance v1, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$2;-><init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;->getMyCloudSpace(Lcn/nubia/accounts/auth/NubiaAccountAuthClient$ResponseListener;)V

    .line 184
    return-void
.end method

.method private onExtendComplete()V
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->isToExplict()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceExtendPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->showExtendCompleteDialog()V

    .line 428
    return-void
.end method

.method private onExtendException()V
    .locals 1

    .prologue
    .line 462
    const v0, 0x7f0c0cda

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->showMessage(I)V

    .line 463
    return-void
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 566
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 568
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private setCloudSpace(Ljava/lang/String;)V
    .locals 2
    .param p1, "space"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$3;-><init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method private setHeadImageView(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V
    .locals 2
    .param p1, "info"    # Lcn/nubia/accounts/auth/NubiaAccountInfo;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$4;-><init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;Lcn/nubia/accounts/auth/NubiaAccountInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method private setVipTag()V
    .locals 2

    .prologue
    .line 527
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mVipTagView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->isVipAccount()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 529
    .local v0, "visible":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mVipTagView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    .end local v0    # "visible":I
    :cond_0
    return-void

    .line 528
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showExtendCompleteDialog()V
    .locals 4

    .prologue
    .line 444
    iget-object v2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f0c0cdb

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 448
    const v2, 0x7f0c0cdc

    new-instance v3, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$9;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$9;-><init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 456
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 457
    .local v1, "completeDialog":Lcn/nubia/commonui/app/Dialog;
    invoke-virtual {v1}, Lcn/nubia/commonui/app/Dialog;->show()V

    .line 459
    .end local v0    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    .end local v1    # "completeDialog":Lcn/nubia/commonui/app/Dialog;
    :cond_0
    return-void
.end method

.method private showExtendProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 474
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mExtendProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 475
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 476
    .local v0, "dialog":Lcn/nubia/commonui/app/ProgressDialog;
    const v1, 0x7f0c0cd9

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 477
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 478
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 479
    new-instance v1, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$10;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$10;-><init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 484
    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mExtendProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 486
    .end local v0    # "dialog":Lcn/nubia/commonui/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mExtendProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 487
    return-void
.end method

.method private showMessage(I)V
    .locals 3
    .param p1, "msg"    # I

    .prologue
    const/4 v2, 0x0

    .line 466
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 468
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 469
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 471
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method private skipToDataBakckup()V
    .locals 3

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.databackup.forsettings.CONTENT_SELECT_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "operator_backup_type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->startActivityByIntent(Landroid/content/Intent;)V

    .line 304
    return-void
.end method

.method private skipToRecovery()V
    .locals 3

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.databackup.forsettings.LOAD_RECORD_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_cloud_nubia_token"

    iget-object v2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mTokenId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v1, "key_nubia_account_name"

    iget-object v2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->startActivityByIntent(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method private skipToThirdPartyAccount()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 364
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0177

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 366
    return-void
.end method

.method private skipToVipAccount()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.AccountIntroActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v1, "cn.nubia.account.SETTING_ENTER_VIP_SERVICE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->startActivityByIntent(Landroid/content/Intent;)V

    .line 373
    return-void
.end method

.method private spaceExtend()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->showDialog(I)V

    .line 349
    return-void
.end method

.method private startActivityByIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 321
    if-eqz p1, :cond_0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v1, 0x7f0c0ce1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->showMessage(I)V

    goto :goto_0
.end method

.method private startExtendThread()V
    .locals 2

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->showExtendProgress()V

    .line 353
    new-instance v0, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mBindBaiduAccountHelper:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    .line 354
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$6;-><init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 360
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 589
    const/16 v0, 0x8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mFragmentArguments:Landroid/os/Bundle;

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mFragmentArguments:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "NubiaAccountService"

    const-string v1, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->finish()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->addPreferencesFromResource(I)V

    .line 126
    new-instance v0, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/accounts/auth/NubiaAccountAuthClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mNubiaAccountAuthClient:Lcn/nubia/accounts/auth/NubiaAccountAuthClient;

    goto :goto_0
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 332
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 333
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0ce6

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0ce8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0ce7

    new-instance v2, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$5;-><init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 133
    const v2, 0x7f0400eb

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 137
    .local v0, "listView":Landroid/widget/ListView;
    invoke-static {p2, v1, v0, v3}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 139
    iget-object v2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mFragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->initAccountInfo(Landroid/os/Bundle;)V

    .line 140
    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->initAccountHeadInfo(Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getAccountInfo()V

    .line 143
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->initPreference()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->isToExplict()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceExtendPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->isVipDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mVipServicePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    :cond_1
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 583
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 584
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 585
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->hideConfirmProgress()V

    .line 228
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 229
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 377
    const-string v0, "NubiaAccountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick preference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mCloudDatabackPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->skipToDataBakckup()V

    .line 393
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mCloudRecoveryPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 381
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->skipToRecovery()V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceExtendPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 387
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->spaceExtend()V

    goto :goto_0

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mThirdPartyAccountPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    .line 389
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->skipToThirdPartyAccount()V

    goto :goto_0

    .line 390
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mVipServicePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->skipToVipAccount()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 233
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 234
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->setVipTag()V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 237
    .local v2, "manager":Landroid/accounts/AccountManager;
    const-string v3, "com.ztemt"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 238
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v3, v0, v5

    const-string v4, "tokenKey"

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    :cond_0
    new-instance v1, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;-><init>()V

    .line 241
    .local v1, "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v3, v1, v5}, Lcom/android/settings_ex/SettingsActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 243
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_1
    return-void
.end method
