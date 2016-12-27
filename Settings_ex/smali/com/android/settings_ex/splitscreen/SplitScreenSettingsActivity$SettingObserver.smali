.class Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;
.super Landroid/database/ContentObserver;
.source "SplitScreenSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    .line 52
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    # invokes: Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->updateUI()V
    invoke-static {v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->access$000(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)V

    .line 58
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "splitscreen_slide_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$SettingObserver;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 68
    return-void
.end method
