.class public Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "NotificationCenterSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefsFragment"
.end annotation


# instance fields
.field private final KEY_BREATHLIGHTCATEGORY:Ljava/lang/String;

.field private final KEY_CLOSENOTIFICATIONREMINDERTEXT:Ljava/lang/String;

.field private final KEY_DIVIDER_1:Ljava/lang/String;

.field private final KEY_LOCKSCREEN_TYPE:Ljava/lang/String;

.field private final KEY_NOTIFY_PERMIT:Ljava/lang/String;

.field private final KEY_PRIVATE_MODE:Ljava/lang/String;

.field private final KEY_PUBLIC_MODE:Ljava/lang/String;

.field private final KEY_SHOW_BREATHLIGHT:Ljava/lang/String;

.field private final KEY_SHOW_HEADSUP:Ljava/lang/String;

.field private final KEY_SHOW_IN_DROPDOWN:Ljava/lang/String;

.field private final KEY_SHOW_IN_LOCKSCREEN:Ljava/lang/String;

.field private mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

.field private mBreathLightNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mBreathlightcategory:Landroid/preference/PreferenceCategory;

.field private mCloseNotificationReminderText:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

.field private mDropdownNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mHeadsUpSwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mLockscreenNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mLockscreenType:Landroid/preference/PreferenceCategory;

.field private mNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPrefsDivider1:Lcom/android/settings_ex/PreferenceDivider;

.field private mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

.field private mPublicMode:Landroid/preference/nubia/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 50
    const-string v0, "notify_permit"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->KEY_NOTIFY_PERMIT:Ljava/lang/String;

    .line 51
    const-string v0, "show_in_lockscreen"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->KEY_SHOW_IN_LOCKSCREEN:Ljava/lang/String;

    .line 52
    const-string v0, "show_in_dropdown"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->KEY_SHOW_IN_DROPDOWN:Ljava/lang/String;

    .line 53
    const-string v0, "show_breathlight"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->KEY_SHOW_BREATHLIGHT:Ljava/lang/String;

    .line 54
    const-string v0, "private_mode"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->KEY_PRIVATE_MODE:Ljava/lang/String;

    .line 55
    const-string v0, "public_mode"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->KEY_PUBLIC_MODE:Ljava/lang/String;

    .line 56
    const-string v0, "lockscreen_type"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->KEY_LOCKSCREEN_TYPE:Ljava/lang/String;

    .line 57
    const-string v0, "preference_divider1"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->KEY_DIVIDER_1:Ljava/lang/String;

    .line 58
    const-string v0, "show_headsup"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->KEY_SHOW_HEADSUP:Ljava/lang/String;

    .line 59
    const-string v0, "closenotificationtextreminder"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->KEY_CLOSENOTIFICATIONREMINDERTEXT:Ljava/lang/String;

    .line 60
    const-string v0, "breathlightcategory"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->KEY_BREATHLIGHTCATEGORY:Ljava/lang/String;

    return-void
.end method

.method private initPreferenceTree()V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 147
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    if-eqz v8, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v9}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->setPreferenceTree()V

    .line 150
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-static {v9, v6}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 152
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mLockscreenNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 154
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mDropdownNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 156
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mHeadsUpSwitch:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    const/16 v10, 0x20

    invoke-static {v9, v10}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 158
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mBreathLightNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    const/16 v10, 0x8

    invoke-static {v9, v10}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 160
    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPublicMode:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-static {v9, v11}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_0
    invoke-virtual {v8, v6}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 162
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-static {v7, v11}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 165
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v7}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 166
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPublicMode:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v8}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/nubia/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v8}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/nubia/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 172
    const-string v6, "com.android.server.telecom"

    iget-object v7, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v7}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 173
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    const-string v7, "cn.nubia.contacts"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v1, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 175
    .local v1, "activityInfos":[Landroid/content/pm/ActivityInfo;
    move-object v2, v1

    .local v2, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v0, v2, v4

    .line 176
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const-string v6, "cn.nubia.contacts.DialerActivity"

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPublicMode:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/nubia/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/nubia/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "activityInfos":[Landroid/content/pm/ActivityInfo;
    .end local v2    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    move v6, v7

    .line 160
    goto/16 :goto_0

    .line 182
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 185
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPublicMode:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v7}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/nubia/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v6, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v7}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/nubia/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method private modifyDatabase(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-static {v3, p1}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->updateFlag(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setFlag(I)V

    .line 221
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->isInserted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    iget-object v4, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getFlag()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->update(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)V

    .line 226
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 227
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "info"

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 229
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 231
    return-void

    .line 224
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    iget-object v4, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getFlag()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->insert(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)V

    goto :goto_0
.end method

.method private setAllDisable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mLockscreenNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mDropdownNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mHeadsUpSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mBreathLightNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPublicMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/CheckBoxPreference;->setEnabled(Z)V

    .line 241
    return-void
.end method

.method private setPreferenceTree()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 200
    .local v0, "root":Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mCloseNotificationReminderText:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrefsDivider1:Lcom/android/settings_ex/PreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mLockscreenNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 204
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mDropdownNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mHeadsUpSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 206
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mBreathlightcategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mLockscreenType:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrefsDivider1:Lcom/android/settings_ex/PreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mLockscreenNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mDropdownNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mHeadsUpSwitch:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mBreathlightcategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mLockscreenType:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mCloseNotificationReminderText:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateNotifyMode(ZZ)V
    .locals 1
    .param p1, "isPublicMode"    # Z
    .param p2, "isPrivateMode"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPublicMode:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPublicMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 196
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v3, 0x7f080046

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->addPreferencesFromResource(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "pkg_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPM:Landroid/content/pm/PackageManager;

    .line 89
    new-instance v3, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    iget-object v4, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    .line 90
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mDBManager:Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/notificationcenter/ui/DataBaseManager;->query(Ljava/lang/String;)Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mAppSettingsInfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    .line 91
    const-string v3, "notify_permit"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 92
    const-string v3, "preference_divider1"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/PreferenceDivider;

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrefsDivider1:Lcom/android/settings_ex/PreferenceDivider;

    .line 93
    const-string v3, "show_in_lockscreen"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mLockscreenNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 95
    const-string v3, "show_in_dropdown"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mDropdownNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 96
    const-string v3, "show_headsup"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mHeadsUpSwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 97
    const-string v3, "show_breathlight"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mBreathLightNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    .line 99
    const-string v3, "public_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPublicMode:Landroid/preference/nubia/CheckBoxPreference;

    .line 100
    const-string v3, "private_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/nubia/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

    .line 101
    const-string v3, "lockscreen_type"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mLockscreenType:Landroid/preference/PreferenceCategory;

    .line 102
    const-string v3, "closenotificationtextreminder"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mCloseNotificationReminderText:Landroid/preference/Preference;

    .line 104
    const-string v3, "breathlightcategory"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mBreathlightcategory:Landroid/preference/PreferenceCategory;

    .line 106
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->initPreferenceTree()V

    .line 107
    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->setAllDisable()V

    .line 110
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 120
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v2, p2, :cond_0

    .line 121
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->modifyDatabase(I)V

    .line 122
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->setPreferenceTree()V

    .line 143
    :goto_0
    return v0

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mLockscreenNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v2, p2, :cond_1

    .line 125
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->modifyDatabase(I)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mDropdownNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v2, p2, :cond_2

    .line 128
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->modifyDatabase(I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mHeadsUpSwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v2, p2, :cond_3

    .line 131
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->modifyDatabase(I)V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mBreathLightNotifySwitch:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v2, p2, :cond_4

    .line 134
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->modifyDatabase(I)V

    goto :goto_0

    .line 136
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPublicMode:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v2, p2, :cond_7

    .line 137
    invoke-direct {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->modifyDatabase(I)V

    .line 138
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPublicMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->updateNotifyMode(ZZ)V

    .line 143
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    .line 138
    goto :goto_1

    .line 139
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

    if-ne v2, p2, :cond_5

    .line 140
    invoke-direct {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->modifyDatabase(I)V

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPublicMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_8

    :goto_3
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->mPrivateMode:Landroid/preference/nubia/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/notificationcenter/ui/NotificationCenterSettingsActivity$PrefsFragment;->updateNotifyMode(ZZ)V

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3
.end method
