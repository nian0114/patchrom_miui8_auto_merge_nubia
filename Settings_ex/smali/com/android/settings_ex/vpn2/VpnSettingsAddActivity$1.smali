.class Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity$1;
.super Ljava/lang/Object;
.source "VpnSettingsAddActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNegativeButtonClick()V
    .locals 5

    .prologue
    .line 74
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;

    invoke-virtual {v3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 76
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "VpnKey"

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v3, "VpnProfile"

    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 79
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 80
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->setResult(ILandroid/content/Intent;)V

    .line 81
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;

    invoke-virtual {v3}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->finish()V

    .line 82
    return-void
.end method

.method public OnPositiveButtonClick()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/VpnSettingsAddActivity;->finish()V

    .line 71
    return-void
.end method
