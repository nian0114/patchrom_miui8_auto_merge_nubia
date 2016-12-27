.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$9;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 645
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$9;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$9;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->startSearch()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    .line 650
    return-void
.end method
