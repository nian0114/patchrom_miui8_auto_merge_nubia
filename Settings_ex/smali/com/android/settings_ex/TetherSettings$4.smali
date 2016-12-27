.class Lcom/android/settings_ex/TetherSettings$4;
.super Landroid/os/AsyncTask;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TetherSettings;->getWifiApConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherSettings;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$4;->this$0:Lcom/android/settings_ex/TetherSettings;

    iput-object p2, p0, Lcom/android/settings_ex/TetherSettings$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "parameters"    # [Ljava/lang/Void;

    .prologue
    .line 845
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 846
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$4;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->access$900(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 847
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 848
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 842
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TetherSettings$4;->doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 853
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$4;->this$0:Lcom/android/settings_ex/TetherSettings;

    # setter for: Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2, p1}, Lcom/android/settings_ex/TetherSettings;->access$1002(Lcom/android/settings_ex/TetherSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 854
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$4;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->access$1000(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-nez v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$4;->val$activity:Landroid/app/Activity;

    const v3, 0x10403ac

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$4;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->access$1100(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 868
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 861
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$4;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->access$1000(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiApDialogActivity;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 865
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$4;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->access$1100(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$4;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->access$1000(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 842
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TetherSettings$4;->onPostExecute(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
