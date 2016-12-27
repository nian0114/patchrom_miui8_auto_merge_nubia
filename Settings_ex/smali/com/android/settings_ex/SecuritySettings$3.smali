.class Lcom/android/settings_ex/SecuritySettings$3;
.super Landroid/database/ContentObserver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SecuritySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/settings_ex/SecuritySettings$3;->this$0:Lcom/android/settings_ex/SecuritySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$3;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # invokes: Lcom/android/settings_ex/SecuritySettings;->updateQuickSettingsPreferenceSummary()V
    invoke-static {v0}, Lcom/android/settings_ex/SecuritySettings;->access$300(Lcom/android/settings_ex/SecuritySettings;)V

    .line 903
    return-void
.end method
