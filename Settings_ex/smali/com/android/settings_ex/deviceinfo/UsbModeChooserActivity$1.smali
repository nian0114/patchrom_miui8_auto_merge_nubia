.class Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "connected"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 55
    .local v1, "connected":Z
    if-nez v1, :cond_1

    .line 56
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->finish()V

    .line 61
    .end local v1    # "connected":Z
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v1    # "connected":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    # invokes: Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->updateToggles()V
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->access$000(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V

    goto :goto_0
.end method
