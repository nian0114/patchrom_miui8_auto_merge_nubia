.class public Lcn/nubia/server/edge/PointerEventDispatcher;
.super Lcn/nubia/server/edge/EdgeEventDispatcher;
.source "PointerEventDispatcher.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/InputChannel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/edge/EdgeEventDispatcher;-><init>(Landroid/content/Context;Landroid/view/InputChannel;)V

    const-string v0, "PointerEventDispatcher"

    iput-object v0, p0, Lcn/nubia/server/edge/PointerEventDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected notifyListener(Landroid/view/MotionEvent;Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    instance-of v1, p2, Lnubia/os/edge/IPointerEventListener;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lnubia/os/edge/IPointerEventListener;

    .local v0, "listener":Lnubia/os/edge/IPointerEventListener;
    invoke-interface {v0, p1}, Lnubia/os/edge/IPointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    .end local v0    # "listener":Lnubia/os/edge/IPointerEventListener;
    :cond_0
    return-void
.end method
