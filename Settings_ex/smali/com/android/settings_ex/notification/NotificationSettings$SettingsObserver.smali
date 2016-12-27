.class final Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 1

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    .line 616
    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;
    invoke-static {p1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$500(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 606
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 608
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 610
    const-string v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 612
    const-string v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 617
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 635
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 636
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenRinging()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1800(Lcom/android/settings_ex/notification/NotificationSettings;)V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updatePulse()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1900(Lcom/android/settings_ex/notification/NotificationSettings;)V

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateLockscreenNotifications()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2000(Lcom/android/settings_ex/notification/NotificationSettings;)V

    .line 646
    :cond_3
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 620
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1700(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 621
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 624
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 626
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 627
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
