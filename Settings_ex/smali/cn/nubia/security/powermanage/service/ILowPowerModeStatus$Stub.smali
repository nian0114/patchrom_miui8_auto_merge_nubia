.class public abstract Lcn/nubia/security/powermanage/service/ILowPowerModeStatus$Stub;
.super Landroid/os/Binder;
.source "ILowPowerModeStatus.java"

# interfaces
.implements Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/security/powermanage/service/ILowPowerModeStatus$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "cn.nubia.security.powermanage.service.ILowPowerModeStatus"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "cn.nubia.security.powermanage.service.ILowPowerModeStatus"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "cn.nubia.security.powermanage.service.ILowPowerModeStatus"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus$Stub;->isModeActivated()Z

    move-result v1

    .line 49
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1    # "_result":Z
    :sswitch_2
    const-string v4, "cn.nubia.security.powermanage.service.ILowPowerModeStatus"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 58
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus$Stub;->setModeActivated(Z)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_1
    move v0, v2

    .line 57
    goto :goto_1

    .line 64
    :sswitch_3
    const-string v4, "cn.nubia.security.powermanage.service.ILowPowerModeStatus"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus$Stub;->isSmartModeActivated()Z

    move-result v1

    .line 66
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v1    # "_result":Z
    :sswitch_4
    const-string v4, "cn.nubia.security.powermanage.service.ILowPowerModeStatus"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 75
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus$Stub;->setSmartModeActivated(Z)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v2

    .line 74
    goto :goto_2

    .line 81
    :sswitch_5
    const-string v2, "cn.nubia.security.powermanage.service.ILowPowerModeStatus"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus$Stub;->startLowPowerService()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    :sswitch_6
    const-string v2, "cn.nubia.security.powermanage.service.ILowPowerModeStatus"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcn/nubia/security/powermanage/service/ILowPowerModeStatus$Stub;->stopLowPowerService()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
