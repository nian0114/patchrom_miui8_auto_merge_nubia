.class public Lcom/android/settings_ex/users/UserDetailsSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultGuestRestrictions:Landroid/os/Bundle;

.field private mGuestUser:Z

.field private mPhonePref:Landroid/preference/nubia/CheckBoxPreference;

.field private mRemoveUserPref:Landroid/preference/Preference;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/settings_ex/users/UserDetailsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/users/UserDetailsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method enableCallsAndSms(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 134
    iget-object v7, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mPhonePref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v7, p1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 135
    iget-boolean v7, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mGuestUser:Z

    if-eqz v7, :cond_2

    .line 136
    iget-object v7, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v8, "no_outgoing_calls"

    if-nez p1, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    iget-object v5, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v7, "no_sms"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    iget-object v5, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v7, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Landroid/os/UserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 141
    iget-object v5, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 142
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 143
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    new-instance v2, Landroid/os/UserHandle;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 145
    .local v2, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v3

    .line 146
    .local v3, "userRestrictions":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 147
    iget-object v5, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v3, v2}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 151
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    .end local v3    # "userRestrictions":Landroid/os/Bundle;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    new-instance v2, Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v2, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 152
    .restart local v2    # "userHandle":Landroid/os/UserHandle;
    iget-object v8, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v9, "no_outgoing_calls"

    if-nez p1, :cond_4

    move v7, v6

    :goto_1
    invoke-virtual {v8, v9, v7, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 154
    iget-object v7, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v8, "no_sms"

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v7, v8, v6, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 156
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_3
    return-void

    .restart local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_4
    move v7, v5

    .line 152
    goto :goto_1

    :cond_5
    move v6, v5

    .line 154
    goto :goto_2
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x62

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, "context":Landroid/content/Context;
    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    .line 80
    const v2, 0x7f080077

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/users/UserDetailsSettings;->addPreferencesFromResource(I)V

    .line 81
    const-string v2, "enable_calling"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mPhonePref:Landroid/preference/nubia/CheckBoxPreference;

    .line 82
    const-string v2, "remove_user"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mRemoveUserPref:Landroid/preference/Preference;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "guest_user"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mGuestUser:Z

    .line 86
    iget-boolean v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mGuestUser:Z

    if-nez v2, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "user_id"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, "userId":I
    if-ne v1, v6, :cond_0

    .line 90
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Arguments to this fragment must contain the user id"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 93
    iget-object v5, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mPhonePref:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v6, "no_outgoing_calls"

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 95
    iget-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mRemoveUserPref:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 105
    .end local v1    # "userId":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_remove_user"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const-string v2, "remove_user"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/users/UserDetailsSettings;->removePreference(Ljava/lang/String;)V

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mPhonePref:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/nubia/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    return-void

    .restart local v1    # "userId":I
    :cond_2
    move v2, v4

    .line 93
    goto :goto_0

    .line 98
    .end local v1    # "userId":I
    :cond_3
    const-string v2, "remove_user"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/users/UserDetailsSettings;->removePreference(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mPhonePref:Landroid/preference/nubia/CheckBoxPreference;

    const v5, 0x7f0c0919

    invoke-virtual {v2, v5}, Landroid/preference/nubia/CheckBoxPreference;->setTitle(I)V

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mPhonePref:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v6, "no_outgoing_calls"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method public onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 161
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    .line 162
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported dialogId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    new-instance v3, Lcom/android/settings_ex/users/UserDetailsSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/users/UserDetailsSettings$1;-><init>(Lcom/android/settings_ex/users/UserDetailsSettings;)V

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/users/UserDetailsSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/users/UserDetailsSettings$2;-><init>(Lcom/android/settings_ex/users/UserDetailsSettings;)V

    invoke-static {v1, v2}, Lcom/android/settings_ex/users/UserDialogs;->createEnablePhoneCallsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 178
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/users/UserDetailsSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/users/UserDetailsSettings$3;-><init>(Lcom/android/settings_ex/users/UserDetailsSettings;)V

    invoke-static {v1, v2}, Lcom/android/settings_ex/users/UserDialogs;->createEnablePhoneCallsAndSmsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 125
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-boolean v0, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mGuestUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserDetailsSettings;->showDialog(I)V

    move v0, v1

    .line 130
    :goto_1
    return v0

    .line 126
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    .line 130
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mRemoveUserPref:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 114
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only the owner can remove a user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserDetailsSettings;->showDialog(I)V

    .line 120
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeUser()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings_ex/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserDetailsSettings;->finishFragment()V

    .line 191
    return-void
.end method
