.class public Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;
.super Lcn/nubia/commonui/widget/NubiaDialogActivity;
.source "MultiSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->setResult(I)V

    .line 66
    invoke-super {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onBackPressed()V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    const v0, 0x7f0d005c

    const v1, 0x7f0d005b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->setThemes(II)V

    .line 40
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x1

    const v2, 0x7f0e0065

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 42
    const v0, 0x7f0400e5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->setContentView(I)V

    .line 43
    new-instance v0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$1;-><init>(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->setOnButtonClickListener(Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;)V

    .line 60
    const v0, 0x7f0c0c6b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
