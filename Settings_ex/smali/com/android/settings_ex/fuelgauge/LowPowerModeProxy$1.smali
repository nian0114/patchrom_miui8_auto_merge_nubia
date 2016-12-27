.class Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$1;
.super Ljava/lang/Object;
.source "LowPowerModeProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$1;->this$0:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$1;->this$0:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    invoke-static {p2}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;
    invoke-static {v0, v1}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->access$002(Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;)Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    .line 51
    const-string v0, "LowPowerModeProxy"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$1;->this$0:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    # getter for: Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mIServiceConnect:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;
    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->access$100(Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;)Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;->onBindedSuccess()V

    .line 53
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$1;->this$0:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;
    invoke-static {v0, v1}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->access$002(Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;)Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$1;->this$0:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    # getter for: Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mIServiceConnect:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;
    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->access$100(Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;)Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;->onBindedFail()V

    .line 45
    const-string v0, "LowPowerModeProxy"

    const-string v1, "onServiceDisconnected "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
