.class Lcn/nubia/server/policy/SplitscreenCtrl$1;
.super Ljava/lang/Object;
.source "SplitscreenCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/SplitscreenCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/SplitscreenCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/SplitscreenCtrl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/SplitscreenCtrl$1;->this$0:Lcn/nubia/server/policy/SplitscreenCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/SplitscreenCtrl$1;->this$0:Lcn/nubia/server/policy/SplitscreenCtrl;

    const/4 v1, 0x3

    # invokes: Lcn/nubia/server/policy/SplitscreenCtrl;->injectBottomKeyEvent(I)V
    invoke-static {v0, v1}, Lcn/nubia/server/policy/SplitscreenCtrl;->access$000(Lcn/nubia/server/policy/SplitscreenCtrl;I)V

    return-void
.end method
