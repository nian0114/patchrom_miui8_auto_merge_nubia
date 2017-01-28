.class public Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;
.super Landroid/os/Handler;
.source "GuardHandler.java"


# instance fields
.field private mExceptionListener:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleMessageInner(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In GuardHandler we got unhandled msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;->mExceptionListener:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;->onCaughtException()V

    return-void

    :pswitch_data_0
    .packed-switch 0x50001
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;->handleMessageInner(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FitAnim"

    const-string v2, "We catched exception when reseting state machine.It won\'t work anymore."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setExceptionListner(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;)V
    .locals 0
    .param p1, "exceptionListener"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;->mExceptionListener:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;

    return-void
.end method
