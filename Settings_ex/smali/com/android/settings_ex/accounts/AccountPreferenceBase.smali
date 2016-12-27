.class abstract Lcom/android/settings_ex/accounts/AccountPreferenceBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Lcom/android/settings_ex/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field protected mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mHandler:Landroid/os/Handler;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUm:Landroid/os/UserManager;

.field protected mUserHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/android/settings_ex/accounts/AccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase$1;-><init>(Lcom/android/settings_ex/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/AccountPreferenceBase;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountPreferenceBase;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected formatSyncDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 78
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    .line 101
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    .line 102
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings_ex/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    .line 69
    new-instance v1, Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings_ex/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 70
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 107
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    .line 113
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public updateAuthDescriptions()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 175
    return-void
.end method
