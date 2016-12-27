.class public Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;
.super Ljava/lang/Object;
.source "LowPowerModeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;
    }
.end annotation


# instance fields
.field private final conn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIServiceConnect:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;

.field private mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$1;-><init>(Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;)Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;
    .param p1, "x1"    # Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;)Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mIServiceConnect:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;

    return-object v0
.end method

.method public static isSmartModeEnable()Z
    .locals 5

    .prologue
    .line 113
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/lucid"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 115
    .local v1, "smartEnable":Z
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 118
    :cond_0
    const-string v2, "LowPowerModeProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmartModeEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v1
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;)Z
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mIServiceConnect"    # Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mIServiceConnect:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;

    .line 29
    const-string v1, "LowPowerModeProxy"

    const-string v2, "bindService begin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "cn.nubia.security2"

    const-string v2, "cn.nubia.security.powermanage.service.LowPowerModeStatusImpl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->conn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method isLowBatteryModeActivated()Z
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    if-eqz v1, :cond_0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    invoke-interface {v1}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;->isModeActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LowPowerModeProxy"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "LowPowerModeProxy"

    const-string v2, "isLowBatteryModeActivated fail : mLowPowerModeStatus == NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method isSmartModeActivated()Z
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    invoke-interface {v1}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;->isSmartModeActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LowPowerModeProxy"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 96
    :cond_0
    const-string v1, "LowPowerModeProxy"

    const-string v2, "isSmartModeActivated fail : mLowPowerModeStatus == NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setLowBatteryModeActivated(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    if-eqz v1, :cond_1

    .line 72
    :try_start_0
    const-string v1, "LowPowerModeProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLowBatteryModeActivated status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    invoke-interface {v1}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;->startLowPowerService()V

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    invoke-interface {v1}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;->stopLowPowerService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LowPowerModeProxy"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "LowPowerModeProxy"

    const-string v2, "setLowBatteryModeActivated fail : mLowPowerModeStatus == NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setSmartModeActivated(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    invoke-interface {v1, p1}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;->setSmartModeActivated(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LowPowerModeProxy"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "LowPowerModeProxy"

    const-string v2, "setSmartModeActivated fail : mLowPowerModeStatus == NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mLowPowerModeStatus:Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    .line 37
    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mIServiceConnect:Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;

    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 39
    return-void
.end method
