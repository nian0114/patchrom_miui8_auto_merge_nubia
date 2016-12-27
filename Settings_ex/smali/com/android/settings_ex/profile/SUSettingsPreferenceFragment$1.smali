.class Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$1;
.super Landroid/os/Handler;
.source "SUSettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$1;->this$0:Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    .line 59
    .local v0, "active":I
    iget-object v2, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$1;->this$0:Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;

    # getter for: Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->access$000(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 61
    .local v1, "isChecked":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$1;->this$0:Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;

    # getter for: Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mSingleModeSwitch:Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->access$000(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 62
    iget-object v2, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$1;->this$0:Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;

    # invokes: Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->updateSwitchSummary(Z)V
    invoke-static {v2, v1}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->access$100(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;Z)V

    .line 64
    .end local v1    # "isChecked":Z
    :cond_0
    return-void

    .line 60
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
