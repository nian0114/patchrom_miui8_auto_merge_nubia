.class public Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
.source "SetupFingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 46
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0xf6

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected initViews()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 57
    invoke-static {p0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 59
    const v2, 0x7f1201a3

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "buttonBar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    .line 65
    .local v1, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 66
    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0c012d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 67
    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 53
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;->onBackPressed()V

    .line 78
    return-void
.end method

.method public onNavigateNext()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;

    invoke-direct {v0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 83
    return-void
.end method
