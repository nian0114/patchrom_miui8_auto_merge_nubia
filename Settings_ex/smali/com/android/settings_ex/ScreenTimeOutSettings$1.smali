.class Lcom/android/settings_ex/ScreenTimeOutSettings$1;
.super Landroid/database/ContentObserver;
.source "ScreenTimeOutSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ScreenTimeOutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ScreenTimeOutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ScreenTimeOutSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/ScreenTimeOutSettings$1;->this$0:Lcom/android/settings_ex/ScreenTimeOutSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeOutSettings$1;->this$0:Lcom/android/settings_ex/ScreenTimeOutSettings;

    # getter for: Lcom/android/settings_ex/ScreenTimeOutSettings;->mScreenTimeOutPref:Lcom/android/settings_ex/ScreenTimeoutPreference;
    invoke-static {v0}, Lcom/android/settings_ex/ScreenTimeOutSettings;->access$000(Lcom/android/settings_ex/ScreenTimeOutSettings;)Lcom/android/settings_ex/ScreenTimeoutPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/ScreenTimeoutPreference;->updateScreenTimeOut()V

    .line 67
    return-void
.end method
