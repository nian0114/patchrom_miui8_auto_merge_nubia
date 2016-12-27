.class Lcom/android/settings_ex/vpn2/VpnSettings$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/vpn2/VpnSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    # invokes: Lcom/android/settings_ex/vpn2/VpnSettings;->createVpn()V
    invoke-static {v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$000(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    .line 186
    return-void
.end method
