.class Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$SingleUiModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SUSettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleUiModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$SingleUiModeReceiver;->this$0:Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;
    .param p2, "x1"    # Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$SingleUiModeReceiver;-><init>(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    const-string v2, "single_ui_mode_switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "is_active"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 156
    .local v1, "active":I
    iget-object v2, p0, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment$SingleUiModeReceiver;->this$0:Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;

    # getter for: Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;->access$300(Lcom/android/settings_ex/profile/SUSettingsPreferenceFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    .end local v1    # "active":I
    :cond_0
    return-void
.end method
