.class Lcom/android/settings_ex/MoreSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "MoreSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/MoreSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MoreSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MoreSettings;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/MoreSettings$2;->this$0:Lcom/android/settings_ex/MoreSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/MoreSettings$2;->this$0:Lcom/android/settings_ex/MoreSettings;

    # invokes: Lcom/android/settings_ex/MoreSettings;->updateLocationSettingPref()V
    invoke-static {v0}, Lcom/android/settings_ex/MoreSettings;->access$200(Lcom/android/settings_ex/MoreSettings;)V

    .line 85
    return-void
.end method
