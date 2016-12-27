.class Lcom/android/settings_ex/vpn2/VpnSettings$4;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/vpn2/VpnSettings;
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
    .line 510
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$4;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 515
    .local v2, "tag":Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/settings_ex/vpn2/ConfigPreference;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 516
    check-cast v1, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .line 517
    .local v1, "pref":Lcom/android/settings_ex/vpn2/ConfigPreference;
    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings$4;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/ConfigPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    invoke-static {v4, v5, v3, v3}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 525
    .end local v1    # "pref":Lcom/android/settings_ex/vpn2/ConfigPreference;
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    instance-of v4, v2, Lcom/android/settings_ex/vpn2/AppPreference;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 520
    check-cast v1, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 521
    .local v1, "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/AppPreference;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v0, v3

    .line 522
    .local v0, "connected":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings$4;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/AppPreference;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v3, v0}, Lcom/android/settings_ex/vpn2/AppDialogFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 521
    .end local v0    # "connected":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
