.class Lcn/nubia/server/SystemAccessService$1;
.super Landroid/os/Handler;
.source "SystemAccessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/SystemAccessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/SystemAccessService;


# direct methods
.method constructor <init>(Lcn/nubia/server/SystemAccessService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcn/nubia/server/SystemAccessService$1;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$1;->this$0:Lcn/nubia/server/SystemAccessService;

    # setter for: Lcn/nubia/server/SystemAccessService;->Flag_EndCall:Z
    invoke-static {v0, v1}, Lcn/nubia/server/SystemAccessService;->access$002(Lcn/nubia/server/SystemAccessService;Z)Z

    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$1;->this$0:Lcn/nubia/server/SystemAccessService;

    # setter for: Lcn/nubia/server/SystemAccessService;->Flag_Home:Z
    invoke-static {v0, v1}, Lcn/nubia/server/SystemAccessService;->access$102(Lcn/nubia/server/SystemAccessService;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
