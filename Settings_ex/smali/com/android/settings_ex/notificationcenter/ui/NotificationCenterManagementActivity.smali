.class public Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;
.source "NotificationCenterManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 44
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    const v1, 0x7f0e0065

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;

    invoke-direct {v2}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity$PrefsFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity;->onBackPressed()V

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
