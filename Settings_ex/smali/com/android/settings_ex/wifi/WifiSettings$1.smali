.class Lcom/android/settings_ex/wifi/WifiSettings$1;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWifiSwitchBarChanged(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const v2, 0x7f0c026d

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$000(Lcom/android/settings_ex/wifi/WifiSettings;I)V

    .line 376
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiSettings"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$100(Lcom/android/settings_ex/wifi/WifiSettings;)V

    .line 383
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 384
    :catch_1
    move-exception v0

    .line 385
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "WifiSettings"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
