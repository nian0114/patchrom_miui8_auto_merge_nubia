.class public Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;
.super Landroid/preference/PreferenceFragment;
.source "NotificationCenterFragment.java"


# instance fields
.field private final KEY_ALLOW_LOCKSCREENSTATUSBAR_DROPDOWN:Ljava/lang/String;

.field private final KEY_APPLICATIONS_NOTIFICATION:Ljava/lang/String;

.field private final KEY_BRIGHTSCREEN_AFTER_NOTIFICATION:Ljava/lang/String;

.field private final KEY_NOTIFICATION_SETTINGS:Ljava/lang/String;

.field private final KEY_QSTILE_SWITCH:Ljava/lang/String;

.field private final KEY_SHOW_LOCKSCREEN_NOTIFICATION:Ljava/lang/String;

.field private final KEY_SHOW_NETSPEED:Ljava/lang/String;

.field private final KEY_SHOW_NOTIFICATION_ICON:Ljava/lang/String;

.field private mApplicationsNotification:Landroid/preference/Preference;

.field private mBrightscreenAfterNotification:Landroid/preference/nubia/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mLockScreenStatusbarDropdownSwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mQstileSwitch:Landroid/preference/Preference;

.field private mShowLockscreenNotification:Landroid/preference/nubia/CheckBoxPreference;

.field private mShowNetspeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mShowNotificationIconSwitch:Landroid/preference/nubia/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 16
    const-string v0, "applications_notification"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->KEY_APPLICATIONS_NOTIFICATION:Ljava/lang/String;

    .line 18
    const-string v0, "allow_lockscreenstatusbar_dropdown"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->KEY_ALLOW_LOCKSCREENSTATUSBAR_DROPDOWN:Ljava/lang/String;

    .line 19
    const-string v0, "show_notification_icon"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->KEY_SHOW_NOTIFICATION_ICON:Ljava/lang/String;

    .line 20
    const-string v0, "show_netspeed"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->KEY_SHOW_NETSPEED:Ljava/lang/String;

    .line 21
    const-string v0, "show_lockscreen_notification"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->KEY_SHOW_LOCKSCREEN_NOTIFICATION:Ljava/lang/String;

    .line 22
    const-string v0, "brightscreen_after_notification"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->KEY_BRIGHTSCREEN_AFTER_NOTIFICATION:Ljava/lang/String;

    .line 23
    const-string v0, "notificationsettings"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->KEY_NOTIFICATION_SETTINGS:Ljava/lang/String;

    .line 24
    const-string v0, "qstile_switch"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->KEY_QSTILE_SWITCH:Ljava/lang/String;

    return-void
.end method

.method private findPreferences()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "applications_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mApplicationsNotification:Landroid/preference/Preference;

    .line 93
    const-string v0, "allow_lockscreenstatusbar_dropdown"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mLockScreenStatusbarDropdownSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 94
    const-string v0, "show_notification_icon"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowNotificationIconSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 95
    const-string v0, "show_netspeed"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowNetspeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 96
    const-string v0, "show_lockscreen_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowLockscreenNotification:Landroid/preference/nubia/CheckBoxPreference;

    .line 97
    const-string v0, "brightscreen_after_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mBrightscreenAfterNotification:Landroid/preference/nubia/CheckBoxPreference;

    .line 98
    const-string v0, "qstile_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mQstileSwitch:Landroid/preference/Preference;

    .line 99
    return-void
.end method

.method private initPreferenceTree()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mBrightscreenAfterNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mLockScreenStatusbarDropdownSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->isAllowLockscreenStatusbarDropdownEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowNotificationIconSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->isShowNotificationIconEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowNetspeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->isShowNetSpeedEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowLockscreenNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->isShowLockscreenNotificationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mBrightscreenAfterNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->isBrightScreenAfterNotificationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notificationsettings"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    return-void
.end method

.method private isAllowLockscreenStatusbarDropdownEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "allow_lockscreenstatusbar_dropdown"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBrightScreenAfterNotificationEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "brightscreen_after_notification"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isShowLockscreenNotificationEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_lockscreen_notification"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowNetSpeedEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_netspeed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isShowNotificationIconEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_notification_icon"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->findPreferences()V

    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->initPreferenceTree()V

    .line 42
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mApplicationsNotification:Landroid/preference/Preference;

    if-ne v3, p2, :cond_1

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterManagementActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->startActivity(Landroid/content/Intent;)V

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mLockScreenStatusbarDropdownSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v3, p2, :cond_3

    .line 56
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "allow_lockscreenstatusbar_dropdown"

    iget-object v5, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mLockScreenStatusbarDropdownSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 59
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowNotificationIconSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v3, p2, :cond_5

    .line 60
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_notification_icon"

    iget-object v5, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowNotificationIconSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    .line 62
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowNetspeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v3, p2, :cond_8

    .line 63
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_netspeed"

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowNetspeedSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_3
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "statusbar_netspeed_display"

    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->isShowNetSpeedEnable()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    move v3, v2

    .line 63
    goto :goto_3

    :cond_7
    move v1, v2

    .line 65
    goto :goto_4

    .line 67
    :cond_8
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowLockscreenNotification:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v3, p2, :cond_a

    .line 68
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_lockscreen_notification"

    iget-object v5, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mShowLockscreenNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->isShowLockscreenNotificationEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mBrightscreenAfterNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 68
    goto :goto_5

    .line 77
    :cond_a
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mBrightscreenAfterNotification:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v3, p2, :cond_c

    .line 78
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "brightscreen_after_notification"

    iget-object v5, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mBrightscreenAfterNotification:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    :goto_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    move v1, v2

    goto :goto_6

    .line 81
    :cond_c
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mQstileSwitch:Landroid/preference/Preference;

    if-ne v1, p2, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
