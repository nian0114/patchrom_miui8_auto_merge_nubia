.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateDevicePref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDeviceNameCustomerDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    .line 624
    const/4 v0, 0x0

    return v0
.end method
