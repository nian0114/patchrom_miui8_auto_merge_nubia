.class public Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SetupChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# instance fields
.field private mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

.field private mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const v0, 0x7f040181

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    iput-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v0
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 135
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->handleNext()V

    .line 140
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    const v1, 0x7f1203d4

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->setImeInsetView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 127
    return-void
.end method
