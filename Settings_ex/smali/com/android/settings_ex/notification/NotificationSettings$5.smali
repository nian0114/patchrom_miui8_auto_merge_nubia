.class Lcom/android/settings_ex/notification/NotificationSettings$5;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettings;->initSilentMode(Landroid/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    const-string v2, "audio"

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1100(Lcom/android/settings_ex/notification/NotificationSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    move-object v1, p2

    .line 448
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 449
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "SettingsSilentMode"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v3, v1}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v1, 0x1

    return v1

    .line 448
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 449
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method
