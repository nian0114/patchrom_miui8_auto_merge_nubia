.class public abstract Lcn/nubia/accounts/auth/IAuthListener$Stub;
.super Landroid/os/Binder;
.source "IAuthListener.java"

# interfaces
.implements Lcn/nubia/accounts/auth/IAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accounts/auth/IAuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accounts/auth/IAuthListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "cn.nubia.accounts.auth.IAuthListener"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/accounts/auth/IAuthListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/accounts/auth/IAuthListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "cn.nubia.accounts.auth.IAuthListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/accounts/auth/IAuthListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcn/nubia/accounts/auth/IAuthListener;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcn/nubia/accounts/auth/IAuthListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/accounts/auth/IAuthListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v3, "cn.nubia.accounts.auth.IAuthListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "cn.nubia.accounts.auth.IAuthListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Lcn/nubia/accounts/auth/NubiaAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/accounts/auth/NubiaAccountInfo;

    .line 58
    .local v0, "_arg0":Lcn/nubia/accounts/auth/NubiaAccountInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/accounts/auth/IAuthListener$Stub;->onComplete(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Lcn/nubia/accounts/auth/NubiaAccountInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcn/nubia/accounts/auth/NubiaAccountInfo;
    goto :goto_1

    .line 64
    .end local v0    # "_arg0":Lcn/nubia/accounts/auth/NubiaAccountInfo;
    :sswitch_2
    const-string v3, "cn.nubia.accounts.auth.IAuthListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcn/nubia/accounts/auth/IAuthListener$Stub;->onException(ILjava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
