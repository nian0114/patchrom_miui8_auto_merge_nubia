.class public interface abstract Lcn/nubia/accounts/auth/INubiaAccountAuth;
.super Ljava/lang/Object;
.source "INubiaAccountAuth.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accounts/auth/INubiaAccountAuth$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAccountInfo(Lcn/nubia/accounts/auth/IAuthListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCloudSpace(Lcn/nubia/accounts/auth/IAuthListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
