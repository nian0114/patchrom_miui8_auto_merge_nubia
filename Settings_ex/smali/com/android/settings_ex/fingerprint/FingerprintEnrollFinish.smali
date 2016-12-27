.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0xf2

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x7f0400a1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "add_finger_for"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "addFingerFor":Ljava/lang/String;
    const-string v2, "FingerprintEnrollFinish"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFingerFor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v2, "only"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-static {p0, v5}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->setUnlockSwitch(Landroid/content/Context;Z)V

    .line 50
    invoke-static {v5, p0}, Lcom/android/settings_ex/fingerprint/FingerprintUtil;->setSupprotFingerPrintWakeup(ZLandroid/content/Context;)V

    .line 52
    :cond_0
    const v2, 0x7f0c0b45

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setTitle(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 54
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    :cond_1
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setResult(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->finish()V

    .line 63
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->onBackPressed()V

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
