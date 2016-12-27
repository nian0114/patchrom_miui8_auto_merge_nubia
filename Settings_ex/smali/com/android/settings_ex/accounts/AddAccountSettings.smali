.class public Lcom/android/settings_ex/accounts/AddAccountSettings;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "AddAccountSettings.java"


# instance fields
.field private mAddAccountCalled:Z

.field private final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEmailAccountType:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mIsEmailAccountType:Z

    .line 91
    new-instance v0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/AddAccountSettings$1;-><init>(Lcom/android/settings_ex/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 143
    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AddAccountSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AddAccountSettings;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AddAccountSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/accounts/AddAccountSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AddAccountSettings;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mIsEmailAccountType:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/accounts/AddAccountSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AddAccountSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mIsEmailAccountType:Z

    return p1
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 11
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 219
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v4, "addAccountOptions":Landroid/os/Bundle;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v10, "identityIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "SHOULDN\'T RESOLVE!"

    const-string v3, "SHOULDN\'T RESOLVE!"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 228
    const-string v9, "com.android.email"

    .line 229
    .local v9, "emailAccountType":Ljava/lang/String;
    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mIsEmailAccountType:Z

    .line 231
    const-string v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-static {p0, v5, v10, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 235
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 236
    const-string v0, "hasMultipleUsers"

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v8, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 247
    return-void
.end method

.method private setStatusBarColorAndActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 251
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 259
    :cond_0
    const-string v1, "asas"

    const-string v2, "AddAccountSettings-->setStatusBarColor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    const v2, 0x7f0e0065

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 261
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 191
    :pswitch_0
    if-nez p2, :cond_0

    .line 192
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accounts/AddAccountSettings;->setResult(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 197
    :cond_0
    const-string v0, "selected_account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accounts/AddAccountSettings;->setResult(I)V

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 148
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->setStatusBarColorAndActionBar()V

    .line 151
    if-eqz p1, :cond_0

    .line 152
    const-string v4, "AddAccountCalled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 153
    const-string v4, "AccountSettings"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const-string v4, "AccountSettings"

    const-string v5, "restored"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 158
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v4, v3, v5, v6}, Lcom/android/settings_ex/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 160
    const-string v4, "no_modify_accounts"

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    const v4, 0x7f0c0904

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    .line 185
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v4, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "authorities"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "authorities":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account_types"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "accountTypes":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/settings_ex/accounts/ChooseAccountActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 178
    const-string v4, "authorities"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    :cond_3
    if-eqz v0, :cond_4

    .line 181
    const-string v4, "account_types"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    :cond_4
    const-string v4, "android.intent.extra.USER"

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v2, v7}, Lcom/android/settings_ex/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 213
    const-string v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "AccountSettings"

    const-string v1, "saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    return-void
.end method
