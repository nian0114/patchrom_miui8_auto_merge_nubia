.class public interface abstract Lcn/nubia/accounts/auth/IAuthListener;
.super Ljava/lang/Object;
.source "IAuthListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accounts/auth/IAuthListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onException(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
