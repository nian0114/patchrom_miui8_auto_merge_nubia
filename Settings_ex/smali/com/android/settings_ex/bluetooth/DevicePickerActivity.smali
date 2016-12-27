.class public final Lcom/android/settings_ex/bluetooth/DevicePickerActivity;
.super Landroid/app/Activity;
.source "DevicePickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f04003a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 46
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->finish()V

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
