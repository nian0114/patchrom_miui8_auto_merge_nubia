.class public abstract Lcom/cmx/cmplus/ISmartContainerManager$Stub;
.super Landroid/os/Binder;
.source "ISmartContainerManager.java"

# interfaces
.implements Lcom/cmx/cmplus/ISmartContainerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmx/cmplus/ISmartContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmx/cmplus/ISmartContainerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cmx.cmplus.ISmartContainerManager"

.field static final TRANSACTION_canAddPackageToBox:I = 0xc

.field static final TRANSACTION_canPackageBeCloned:I = 0x18

.field static final TRANSACTION_checkActivityIntentResult:I = 0x10

.field static final TRANSACTION_checkPermission:I = 0x12

.field static final TRANSACTION_checkUidPermission:I = 0x13

.field static final TRANSACTION_createCloneForPackage:I = 0x16

.field static final TRANSACTION_createVirtualBox:I = 0x1

.field static final TRANSACTION_deleteCloneForPackage:I = 0x17

.field static final TRANSACTION_disableShareAcrossBox:I = 0xf

.field static final TRANSACTION_enableShareAcrossBox:I = 0xe

.field static final TRANSACTION_enableShareAcrossBoxWithUserId:I = 0xd

.field static final TRANSACTION_getAllVirtualBoxes:I = 0x3

.field static final TRANSACTION_getBoxIdForPackage:I = 0x9

.field static final TRANSACTION_getCloneUserIdForPackage:I = 0x14

.field static final TRANSACTION_getContainerInfo:I = 0x2

.field static final TRANSACTION_getDefaultCloneablePackages:I = 0x20

.field static final TRANSACTION_getForwardUserIdForPackage:I = 0xa

.field static final TRANSACTION_getIcon:I = 0x6

.field static final TRANSACTION_getIntentRestrictedPackages:I = 0x22

.field static final TRANSACTION_getOEMCloneablePackages:I = 0x21

.field static final TRANSACTION_getOldUid:I = 0x24

.field static final TRANSACTION_isBoxVisible:I = 0x19

.field static final TRANSACTION_isCloneEnabling:I = 0x1f

.field static final TRANSACTION_isPackageCloned:I = 0x15

.field static final TRANSACTION_isPackageInBox:I = 0xb

.field static final TRANSACTION_loadLabel:I = 0x1b

.field static final TRANSACTION_markIntentRestricted:I = 0x1e

.field static final TRANSACTION_preparePathForCrossBox:I = 0x11

.field static final TRANSACTION_processIntentForClone:I = 0x1c

.field static final TRANSACTION_remarkIntentForClone:I = 0x1d

.field static final TRANSACTION_removeVirtualBox:I = 0x4

.field static final TRANSACTION_setAppEnabled:I = 0x8

.field static final TRANSACTION_setContainerName:I = 0x7

.field static final TRANSACTION_setCurrUid:I = 0x23

.field static final TRANSACTION_setFeatureStatus:I = 0x1a

.field static final TRANSACTION_setIcon:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p0, p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cmx/cmplus/ISmartContainerManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.cmx.cmplus.ISmartContainerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/cmx/cmplus/ISmartContainerManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cmx/cmplus/ISmartContainerManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmx/cmplus/ISmartContainerManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->createVirtualBox(Ljava/lang/String;I)Lcom/cmx/cmplus/ContainerInfo;

    move-result-object v3

    .local v3, "_result":Lcom/cmx/cmplus/ContainerInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v7}, Lcom/cmx/cmplus/ContainerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Lcom/cmx/cmplus/ContainerInfo;
    :sswitch_2
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->getContainerInfo(I)Lcom/cmx/cmplus/ContainerInfo;

    move-result-object v3

    .restart local v3    # "_result":Lcom/cmx/cmplus/ContainerInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v7}, Lcom/cmx/cmplus/ContainerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Lcom/cmx/cmplus/ContainerInfo;
    :sswitch_3
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->getAllVirtualBoxes()Ljava/util/List;

    move-result-object v4

    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/cmx/cmplus/ContainerInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/cmx/cmplus/ContainerInfo;>;"
    :sswitch_4
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->removeVirtualBox(I)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_5
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .local v1, "_arg1":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->setIcon(ILandroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_1

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_6
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->getIcon(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v7}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :sswitch_7
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->setContainerName(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_8
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v2, v7

    .local v2, "_arg2":Z
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->setAppEnabled(ILjava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    :cond_5
    move v2, v6

    goto :goto_2

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->getBoxIdForPackage(Ljava/lang/String;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_a
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->getForwardUserIdForPackage(ILjava/lang/String;I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :sswitch_b
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->isPackageInBox(ILjava/lang/String;)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_c
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->canAddPackageToBox(ILjava/lang/String;)Z

    move-result v3

    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_d
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->enableShareAcrossBoxWithUserId(Ljava/lang/String;II)Z

    move-result v3

    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :sswitch_e
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->enableShareAcrossBox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->disableShareAcrossBox(Ljava/lang/String;)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_10
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg0":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->checkActivityIntentResult(Landroid/content/Intent;)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_b

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v7}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_result":I
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_3

    .restart local v3    # "_result":I
    :cond_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_result":I
    :sswitch_11
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->preparePathForCrossBox(Ljava/lang/String;II)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :sswitch_12
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :sswitch_13
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_14
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->getCloneUserIdForPackage(ILjava/lang/String;)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_15
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->isPackageCloned(Ljava/lang/String;)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_d

    move v6, v7

    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_16
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->createCloneForPackage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->deleteCloneForPackage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->canPackageBeCloned(Ljava/lang/String;)Z

    move-result v3

    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_e

    move v6, v7

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_19
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->isBoxVisible(II)Z

    move-result v3

    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_f

    move v6, v7

    :cond_f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_1a
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    move v1, v7

    .local v1, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->setFeatureStatus(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_10
    move v1, v6

    goto :goto_4

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    sget-object v8, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .local v1, "_arg1":Landroid/content/pm/ApplicationInfo;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_12

    sget-object v8, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "_arg2":Ljava/lang/CharSequence;
    :goto_6
    invoke-virtual {p0, v0, v1, v2}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->loadLabel(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_13

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v3, p3, v7}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "_arg2":Ljava/lang/CharSequence;
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/pm/ApplicationInfo;
    goto :goto_5

    :cond_12
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Ljava/lang/CharSequence;
    goto :goto_6

    .restart local v3    # "_result":Ljava/lang/CharSequence;
    :cond_13
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "_arg2":Ljava/lang/CharSequence;
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :sswitch_1c
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_14

    sget-object v8, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg0":Landroid/content/Intent;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->processIntentForClone(Landroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_15

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v7}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_14
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_7

    :cond_15
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_1d
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_16

    sget-object v8, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .restart local v0    # "_arg0":Landroid/content/Intent;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->remarkIntentForClone(Landroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_17

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v7}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_8

    :cond_17
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_1e
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_18

    sget-object v8, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .restart local v0    # "_arg0":Landroid/content/Intent;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_19

    move v1, v7

    .local v1, "_arg1":Z
    :goto_a
    invoke-virtual {p0, v0, v1}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->markIntentRestricted(Landroid/content/Intent;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1a

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v7}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Z
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_9

    :cond_19
    move v1, v6

    goto :goto_a

    .restart local v1    # "_arg1":Z
    :cond_1a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Z
    :sswitch_1f
    const-string v8, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->isCloneEnabling()Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1b

    move v6, v7

    :cond_1b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_result":Z
    :sswitch_20
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->getDefaultCloneablePackages()Ljava/util/List;

    move-result-object v5

    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_21
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->getOEMCloneablePackages()Ljava/util/List;

    move-result-object v5

    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_22
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->getIntentRestrictedPackages()Ljava/util/List;

    move-result-object v5

    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_23
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->setCurrUid(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    :sswitch_24
    const-string v6, "com.cmx.cmplus.ISmartContainerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmx/cmplus/ISmartContainerManager$Stub;->getOldUid()I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
