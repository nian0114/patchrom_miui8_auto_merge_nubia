.class public Lcom/android/settings_ex/nfc/HowItWorks;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "HowItWorks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v1, 0x7f0400e1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/HowItWorks;->setContentView(I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/HowItWorks;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 15
    const v1, 0x7f120254

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/HowItWorks;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 16
    .local v0, "gotIt":Landroid/widget/Button;
    new-instance v1, Lcom/android/settings_ex/nfc/HowItWorks$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/nfc/HowItWorks$1;-><init>(Lcom/android/settings_ex/nfc/HowItWorks;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/HowItWorks;->finish()V

    .line 27
    const/4 v0, 0x1

    return v0
.end method
