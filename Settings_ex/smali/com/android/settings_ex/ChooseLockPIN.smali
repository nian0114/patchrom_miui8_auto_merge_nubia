.class public Lcom/android/settings_ex/ChooseLockPIN;
.super Lcom/android/settings_ex/SettingsActivity;
.source "ChooseLockPIN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockPIN$1;,
        Lcom/android/settings_ex/ChooseLockPIN$SaveAndFinishWorker;,
        Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    .line 703
    return-void
.end method

.method public static createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "challenge"    # J

    .prologue
    .line 99
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/ChooseLockPIN;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v6

    .line 101
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "has_challenge"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    const-string v0, "challenge"

    invoke-virtual {v6, v0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 103
    return-object v6
.end method

.method public static createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "confirmCredentials"    # Z

    .prologue
    .line 80
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings_ex/ChooseLockPIN;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string v1, "lockscreen.password_max"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    const-string v1, "extra_require_password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    return-object v0
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const-class v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 73
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPIN;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lcom/android/settings_ex/ChooseLockPIN$ChooseLockPINFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v1, 0x7f0c04db

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPIN;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 124
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPIN;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method
