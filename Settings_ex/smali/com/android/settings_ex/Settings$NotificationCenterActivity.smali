.class public Lcom/android/settings_ex/Settings$NotificationCenterActivity;
.super Lcom/android/settings_ex/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationCenterActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$NotificationCenterActivity;->onBackPressed()V

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
