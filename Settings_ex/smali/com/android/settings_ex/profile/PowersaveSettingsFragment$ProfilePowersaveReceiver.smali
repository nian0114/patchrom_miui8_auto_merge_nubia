.class Lcom/android/settings_ex/profile/PowersaveSettingsFragment$ProfilePowersaveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowersaveSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/PowersaveSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilePowersaveReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/PowersaveSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/profile/PowersaveSettingsFragment;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment$ProfilePowersaveReceiver;->this$0:Lcom/android/settings_ex/profile/PowersaveSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/profile/PowersaveSettingsFragment;Lcom/android/settings_ex/profile/PowersaveSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/profile/PowersaveSettingsFragment;
    .param p2, "x1"    # Lcom/android/settings_ex/profile/PowersaveSettingsFragment$1;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment$ProfilePowersaveReceiver;-><init>(Lcom/android/settings_ex/profile/PowersaveSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 310
    if-nez p2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ztemt.Profile.ACTION_PROFILE_POWERSAVING_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    const-string v3, "ztemt.Profile.EXTRA_PROFILE_POWERSAVING_STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 316
    .local v1, "powersaveActive":I
    if-eqz p1, :cond_0

    .line 320
    if-ne v5, v1, :cond_0

    goto :goto_0

    .line 324
    .end local v1    # "powersaveActive":I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ztemt.profile.ACTION_MODIFIED_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 327
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "type_of_modified"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    .line 330
    .local v2, "type":Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;
    iget-object v3, p0, Lcom/android/settings_ex/profile/PowersaveSettingsFragment$ProfilePowersaveReceiver;->this$0:Lcom/android/settings_ex/profile/PowersaveSettingsFragment;

    # invokes: Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->updatePowersaveState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V
    invoke-static {v3, v2}, Lcom/android/settings_ex/profile/PowersaveSettingsFragment;->access$200(Lcom/android/settings_ex/profile/PowersaveSettingsFragment;Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    goto :goto_0
.end method
