.class Lcom/android/settings_ex/notification/NotificationSettings$7;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
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
    .line 528
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$7;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 532
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 533
    .local v2, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$7;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1300(Lcom/android/settings_ex/notification/NotificationSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 546
    :goto_0
    return v3

    .line 536
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$7;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenValues:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1400(Lcom/android/settings_ex/notification/NotificationSettings;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 537
    .local v0, "enabled":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$7;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenValues:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1400(Lcom/android/settings_ex/notification/NotificationSettings;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 538
    .local v1, "show":Z
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$7;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1500(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_3

    move v5, v3

    :goto_2
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 542
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings$7;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1600(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 545
    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings$7;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # setter for: Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1302(Lcom/android/settings_ex/notification/NotificationSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_2
    move v0, v4

    .line 536
    goto :goto_1

    .restart local v0    # "enabled":Z
    .restart local v1    # "show":Z
    :cond_3
    move v5, v4

    .line 538
    goto :goto_2
.end method
