.class public Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;
.super Landroid/app/Activity;
.source "ConfirmDeviceCredentialActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 40
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 92
    sget-object v3, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    .line 94
    .local v0, "credentialsConfirmed":Z
    :goto_0
    sget-object v3, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device credentials confirmed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->finish()V

    .line 97
    return-void

    .end local v0    # "credentialsConfirmed":Z
    :cond_1
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 60
    .local v8, "intent":Landroid/content/Intent;
    const-string v2, "android.app.extra.TITLE"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "title":Ljava/lang/String;
    const-string v2, "android.app.extra.DESCRIPTION"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "details":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 66
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/4 v2, 0x0

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    sget-object v1, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v2, "No pattern, password or PIN set."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->finish()V

    .line 74
    .end local v0    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 75
    .local v7, "actionBar":Landroid/app/ActionBar;
    if-eqz v7, :cond_1

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->finish()V

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
