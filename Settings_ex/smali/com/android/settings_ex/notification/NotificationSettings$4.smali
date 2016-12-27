.class Lcom/android/settings_ex/notification/NotificationSettings$4;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettings;->initVibrateWhenTouch(Landroid/preference/PreferenceGroup;)V
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
    .line 406
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$4;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 411
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 412
    .local v0, "val":Z
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings$4;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationSettings;->access$900(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 415
    .local v1, "valw":I
    const-string v3, "shijian"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HAPTIC_FEEDBACK_ENABLED is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings$4;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1000(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
