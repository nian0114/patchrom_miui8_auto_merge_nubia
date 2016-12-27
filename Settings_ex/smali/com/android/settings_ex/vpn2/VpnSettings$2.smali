.class Lcom/android/settings_ex/vpn2/VpnSettings$2;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/vpn2/VpnSettings;->onResume()V
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
    .line 324
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    # invokes: Lcom/android/settings_ex/vpn2/VpnSettings;->showMenuDialog(I)V
    invoke-static {v0, p3}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$100(Lcom/android/settings_ex/vpn2/VpnSettings;I)V

    .line 329
    const/4 v0, 0x1

    return v0
.end method
