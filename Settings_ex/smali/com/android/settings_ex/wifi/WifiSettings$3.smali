.class Lcom/android/settings_ex/wifi/WifiSettings$3;
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
    .line 909
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const-class v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c02d7

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 915
    return-void
.end method
