.class public abstract Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.super Lcom/android/settings_ex/InstrumentedActivity;
.source "FingerprintEnrollBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mToken:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 131
    return-object v0
.end method

.method protected getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f1203c5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/view/NavigationBar;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f1200f8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f120197

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v0
.end method

.method protected initViews()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    .line 82
    .local v0, "nextButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onNextButtonClick()V

    .line 122
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 53
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mToken:[B

    if-nez v0, :cond_0

    .line 54
    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 57
    :cond_0
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->initViews()V

    .line 69
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 63
    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->setHeaderText(IZ)V

    .line 111
    return-void
.end method

.method protected setHeaderText(IZ)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v3

    const v4, 0x7f1203d0

    invoke-virtual {v3, v4}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    .local v0, "layoutTitle":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 99
    .local v1, "previousTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 100
    .local v2, "title":Ljava/lang/CharSequence;
    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_2

    .line 101
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    return-void
.end method
