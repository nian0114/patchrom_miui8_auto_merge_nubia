.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5$1;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5$1;->this$1:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 296
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method
