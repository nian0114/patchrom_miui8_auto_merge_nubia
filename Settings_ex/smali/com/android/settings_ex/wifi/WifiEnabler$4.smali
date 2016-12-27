.class Lcom/android/settings_ex/wifi/WifiEnabler$4;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiEnabler;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler$4;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickTodo(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$4;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    # getter for: Lcom/android/settings_ex/wifi/WifiEnabler;->switchBarChangedListener:Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$400(Lcom/android/settings_ex/wifi/WifiEnabler;)Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings_ex/wifi/WifiEnabler$WifiSwitchBarChangedListener;->onWifiSwitchBarChanged(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiEnabler$4;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    # invokes: Lcom/android/settings_ex/wifi/WifiEnabler;->wifiSwitchChanged(Z)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/wifi/WifiEnabler;->access$500(Lcom/android/settings_ex/wifi/WifiEnabler;Z)V

    .line 141
    return-void
.end method
