.class Lcom/android/settings_ex/wifi/WifiSettings$2;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->initOptionsView(Landroid/view/View;)Landroid/view/View;
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
    .line 896
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointsListGroup:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$200(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    const v1, 0x7f0c0ca5

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 902
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_ex/wifi/WifiTracker;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiTracker;->forceScan()V

    .line 904
    :cond_0
    return-void
.end method
