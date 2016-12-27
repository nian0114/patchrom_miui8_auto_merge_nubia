.class public Lcom/android/settings_ex/Settings$WifiSettingsActivity;
.super Lcom/android/settings_ex/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiSettingsActivity"
.end annotation


# instance fields
.field private mSetupWizardMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/Settings$WifiSettingsActivity;->mSetupWizardMode:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 61
    const-string v2, "ro.product.name"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "productName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/settings_ex/Settings$WifiSettingsActivity;->mSetupWizardMode:Z

    if-eqz v2, :cond_0

    const-string v2, "NX513J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v2, "jump_flag_key"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    const-string v2, "cn.nubia.thememanager"

    const-string v3, "cn.nubia.thememanager.activity.ThemeSelectActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/Settings$WifiSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    const v2, 0x7f08004a

    const v3, 0x7f08004b

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/Settings$WifiSettingsActivity;->overridePendingTransition(II)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$WifiSettingsActivity;->finish()V

    .line 72
    .end local v0    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$WifiSettingsActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$WifiSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/Settings$WifiSettingsActivity;->mSetupWizardMode:Z

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method
