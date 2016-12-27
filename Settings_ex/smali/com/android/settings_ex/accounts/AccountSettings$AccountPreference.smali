.class Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;
.super Landroid/preference/Preference;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountPreference"
.end annotation


# instance fields
.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleResId:I

.field private final mTitleResPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/accounts/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "titleResPackageName"    # Ljava/lang/String;
    .param p5, "titleResId"    # I
    .param p6, "fragment"    # Ljava/lang/String;
    .param p7, "fragmentArguments"    # Landroid/os/Bundle;
    .param p8, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    .line 496
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 497
    iput-object p3, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    .line 498
    iput-object p4, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    .line 499
    iput p5, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    .line 500
    iput-object p6, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    .line 501
    iput-object p7, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 502
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setWidgetLayoutResource(I)V

    .line 504
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 505
    invoke-virtual {p0, p8}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 507
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 508
    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 512
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/accounts/Account;

    .line 515
    .local v8, "account":Landroid/accounts/Account;
    if-eqz v8, :cond_1

    iget-object v0, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.ztemt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings.accounts.NubiaAccountServiceListFragment"

    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    move v4, v9

    .line 527
    .end local v8    # "account":Landroid/accounts/Account;
    :cond_0
    :goto_0
    return v4

    .line 522
    .restart local v8    # "account":Landroid/accounts/Account;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V

    move v4, v9

    .line 525
    goto :goto_0
.end method
