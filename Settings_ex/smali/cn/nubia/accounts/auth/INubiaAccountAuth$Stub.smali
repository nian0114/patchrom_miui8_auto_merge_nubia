.class public abstract Lcn/nubia/accounts/auth/INubiaAccountAuth$Stub;
.super Landroid/os/Binder;
.source "INubiaAccountAuth.java"

# interfaces
.implements Lcn/nubia/accounts/auth/INubiaAccountAuth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accounts/auth/INubiaAccountAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accounts/auth/INubiaAccountAuth$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/accounts/auth/INubiaAccountAuth;
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
    const-string v1, "cn.nubia.accounts.auth.INubiaAccountAuth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/accounts/auth/INubiaAccountAuth;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/accounts/auth/INubiaAccountAuth;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/accounts/auth/INubiaAccountAuth$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/accounts/auth/INubiaAccountAuth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v2, "cn.nubia.accounts.auth.INubiaAccountAuth"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "cn.nubia.accounts.auth.INubiaAccountAuth"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/accounts/auth/IAuthListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accounts/auth/IAuthListener;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Lcn/nubia/accounts/auth/IAuthListener;
    invoke-virtual {p0, v0}, Lcn/nubia/accounts/auth/INubiaAccountAuth$Stub;->getAccountInfo(Lcn/nubia/accounts/auth/IAuthListener;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Lcn/nubia/accounts/auth/IAuthListener;
    :sswitch_2
    const-string v2, "cn.nubia.accounts.auth.INubiaAccountAuth"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/accounts/auth/IAuthListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accounts/auth/IAuthListener;

    move-result-object v0

    .line 59
    .restart local v0    # "_arg0":Lcn/nubia/accounts/auth/IAuthListener;
    invoke-virtual {p0, v0}, Lcn/nubia/accounts/auth/INubiaAccountAuth$Stub;->getCloudSpace(Lcn/nubia/accounts/auth/IAuthListener;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
