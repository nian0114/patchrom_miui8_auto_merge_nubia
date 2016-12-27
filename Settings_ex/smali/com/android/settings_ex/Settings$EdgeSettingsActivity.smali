.class public Lcom/android/settings_ex/Settings$EdgeSettingsActivity;
.super Lcom/android/settings_ex/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EdgeSettingsActivity"
.end annotation


# instance fields
.field private fragmentName:Ljava/lang/String;

.field private titleResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/Settings$EdgeSettingsActivity;->titleResId:I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/Settings$EdgeSettingsActivity;->fragmentName:Ljava/lang/String;

    return-void
.end method

.method private getNewFragment(Landroid/content/Intent;)V
    .locals 3
    .param p1, "edgeIntent"    # Landroid/content/Intent;

    .prologue
    .line 208
    const-string v1, "gestureType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 212
    .local v0, "edgeType":I
    const-class v1, Lcom/android/settings_ex/edge/ShowEdgesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/Settings$EdgeSettingsActivity;->fragmentName:Ljava/lang/String;

    .line 213
    const v1, 0x7f0c0cf6

    iput v1, p0, Lcom/android/settings_ex/Settings$EdgeSettingsActivity;->titleResId:I

    .line 216
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 221
    const-string v1, "Settings"

    const-string v2, "getIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 223
    .local v0, "edgeIntent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/Settings$EdgeSettingsActivity;->getNewFragment(Landroid/content/Intent;)V

    .line 224
    const-string v1, ":settings:show_fragment"

    iget-object v2, p0, Lcom/android/settings_ex/Settings$EdgeSettingsActivity;->fragmentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, ":settings:show_fragment_title_resid"

    iget v2, p0, Lcom/android/settings_ex/Settings$EdgeSettingsActivity;->titleResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    const-string v2, "Settings"

    const-string v3, "pre onNewIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/settings_ex/Settings$EdgeSettingsActivity;->fragmentName:Ljava/lang/String;

    .line 193
    .local v1, "preFragment":Ljava/lang/String;
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 195
    const-string v2, "Settings"

    const-string v3, "after onNewIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, p1}, Lcom/android/settings_ex/Settings$EdgeSettingsActivity;->getNewFragment(Landroid/content/Intent;)V

    .line 199
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/Settings$EdgeSettingsActivity;->fragmentName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 203
    .local v0, "f":Landroid/app/Fragment;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/Settings$EdgeSettingsActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    goto :goto_0
.end method
