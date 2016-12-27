.class public Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;
.super Landroid/app/Fragment;
.source "NubiaAccountStartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBtAccountLogin:Landroid/widget/Button;

.field private mBtAccountRegist:Landroid/widget/Button;

.field private mLogoImageView:Landroid/widget/ImageView;

.field private mLogoLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private showMessage(ILandroid/content/Context;)V
    .locals 3
    .param p1, "msg"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-static {p2, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 116
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 117
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    return-void
.end method

.method private startAccountApplication(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "cn.nubia.accounts"

    const-string v4, "cn.nubia.accounts.AccountIntroActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 108
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0c0ce1

    invoke-direct {p0, v3, v0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->showMessage(ILandroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mBtAccountLogin:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 96
    const-string v0, "cn.nubia.account.SETTINGS_LOGIN_ENTER"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->startAccountApplication(Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mBtAccountRegist:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 98
    const-string v0, "cn.nubia.account.SETTINGS_REGIST_ENTER"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->startAccountApplication(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v4, 0x7f0b013e

    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mLogoLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 91
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mLogoLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 40
    const v1, 0x7f0400ec

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mBtAccountLogin:Landroid/widget/Button;

    .line 42
    const v1, 0x7f120269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mBtAccountRegist:Landroid/widget/Button;

    .line 43
    const v1, 0x7f120265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mLogoLayout:Landroid/view/View;

    .line 44
    const v1, 0x7f120266

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mLogoImageView:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mBtAccountLogin:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mBtAccountRegist:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mLogoLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 51
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->mLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b013e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 54
    :cond_0
    return-object v0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 59
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 62
    .local v4, "manager":Landroid/accounts/AccountManager;
    const-string v6, "com.ztemt"

    invoke-virtual {v4, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 63
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v6, v1

    if-lez v6, :cond_0

    .line 64
    aget-object v0, v1, v8

    .line 65
    .local v0, "account":Landroid/accounts/Account;
    const-string v6, "tokenKey"

    invoke-virtual {v4, v0, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "tokenKey":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 67
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v3, "fragmentArguments":Landroid/os/Bundle;
    const-string v6, "account"

    aget-object v7, v1, v8

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    new-instance v2, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-direct {v2}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;-><init>()V

    .line 70
    .local v2, "fragment":Landroid/app/Fragment;
    invoke-virtual {v2, v3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/NubiaAccountStartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v6, v2, v8}, Lcom/android/settings_ex/SettingsActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 74
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "fragment":Landroid/app/Fragment;
    .end local v3    # "fragmentArguments":Landroid/os/Bundle;
    .end local v5    # "tokenKey":Ljava/lang/String;
    :cond_0
    return-void
.end method
