.class Lcom/android/settings_ex/vpn2/VpnSettings$3;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/vpn2/VpnSettings;->showMenuDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/vpn2/VpnSettings;Ljava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    iput-object p2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->val$items:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    const v2, 0x7f0c08c8

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    iget v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->val$position:I

    # invokes: Lcom/android/settings_ex/vpn2/VpnSettings;->editVpnMenu(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$200(Lcom/android/settings_ex/vpn2/VpnSettings;I)V

    .line 357
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    const v2, 0x7f0c08c9

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    iget v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$3;->val$position:I

    # invokes: Lcom/android/settings_ex/vpn2/VpnSettings;->deleteVpnMenu(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$300(Lcom/android/settings_ex/vpn2/VpnSettings;I)V

    goto :goto_1
.end method
