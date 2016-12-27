.class Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$1;
.super Ljava/lang/Object;
.source "MultiSettingsActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNegativeButtonClick()V
    .locals 3

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 48
    .local v0, "fm":Landroid/app/FragmentManager;
    const v2, 0x7f12025c

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;

    .line 50
    .local v1, "pref":Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;
    invoke-virtual {v1}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->submit()V

    .line 51
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->onBackPressed()V

    .line 52
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->finish()V

    .line 53
    return-void
.end method

.method public OnPositiveButtonClick()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity;->onBackPressed()V

    .line 58
    return-void
.end method
