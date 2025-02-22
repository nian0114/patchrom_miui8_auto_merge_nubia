.class public abstract Lnubia/os/ISmartFaceService$Stub;
.super Landroid/os/Binder;
.source "ISmartFaceService.java"

# interfaces
.implements Lnubia/os/ISmartFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/ISmartFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/ISmartFaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.ISmartFaceService"

.field static final TRANSACTION_dismiss:I = 0x4

.field static final TRANSACTION_setEverSmartFaceNearFlag:I = 0x5

.field static final TRANSACTION_setSmartFaceCallback:I = 0x6

.field static final TRANSACTION_show:I = 0x1

.field static final TRANSACTION_showLattice:I = 0x3

.field static final TRANSACTION_showWindow:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nubia.os.ISmartFaceService"

    invoke-virtual {p0, p0, v0}, Lnubia/os/ISmartFaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/ISmartFaceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "nubia.os.ISmartFaceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/ISmartFaceService;

    if-eqz v1, :cond_1

    check-cast v0, Lnubia/os/ISmartFaceService;

    goto :goto_0

    :cond_1
    new-instance v0, Lnubia/os/ISmartFaceService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lnubia/os/ISmartFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

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

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v2, "nubia.os.ISmartFaceService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "nubia.os.ISmartFaceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnubia/os/ISmartFaceService$Stub;->show()V

    goto :goto_0

    :sswitch_2
    const-string v2, "nubia.os.ISmartFaceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnubia/os/ISmartFaceService$Stub;->showWindow()V

    goto :goto_0

    :sswitch_3
    const-string v2, "nubia.os.ISmartFaceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnubia/os/ISmartFaceService$Stub;->showLattice()V

    goto :goto_0

    :sswitch_4
    const-string v2, "nubia.os.ISmartFaceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnubia/os/ISmartFaceService$Stub;->dismiss()V

    goto :goto_0

    :sswitch_5
    const-string v2, "nubia.os.ISmartFaceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnubia/os/ISmartFaceService$Stub;->setEverSmartFaceNearFlag()V

    goto :goto_0

    :sswitch_6
    const-string v2, "nubia.os.ISmartFaceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lnubia/os/ISmartFaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ISmartFaceCallback;

    move-result-object v0

    .local v0, "_arg0":Lnubia/os/ISmartFaceCallback;
    invoke-virtual {p0, v0}, Lnubia/os/ISmartFaceService$Stub;->setSmartFaceCallback(Lnubia/os/ISmartFaceCallback;)V

    goto :goto_0

    nop

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
