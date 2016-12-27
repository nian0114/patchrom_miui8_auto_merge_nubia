.class Lcom/android/settings_ex/notification/ZenModeSettings$9;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeSettings;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v4, -0x1

    .line 466
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 469
    .local v8, "value":I
    const/4 v0, 0x4

    if-ne v8, v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$700(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode_time_repeat_customize_enabled"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 472
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    const-class v2, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0c9e

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/notification/ZenModeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode_current_day"

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->getCurrentDay()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1200(Lcom/android/settings_ex/notification/ZenModeSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 483
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$000(Lcom/android/settings_ex/notification/ZenModeSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :goto_1
    return v9

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$800(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode_time_repeat_customize_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->timingRepeatDays(I)V
    invoke-static {v0, v8}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$900(Lcom/android/settings_ex/notification/ZenModeSettings;I)V

    .line 479
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$200(Lcom/android/settings_ex/notification/ZenModeSettings;)Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->TIMING_REPEAT_DAYS:[I
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1000(Lcom/android/settings_ex/notification/ZenModeSettings;)[I

    move-result-object v3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setSheduleInfo([IIIII)Z

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeat:Lcn/nubia/commonui/preference/ListPreference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1400(Lcom/android/settings_ex/notification/ZenModeSettings;)Lcn/nubia/commonui/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$9;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mTimingRepeatEntries:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$1300(Lcom/android/settings_ex/notification/ZenModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
