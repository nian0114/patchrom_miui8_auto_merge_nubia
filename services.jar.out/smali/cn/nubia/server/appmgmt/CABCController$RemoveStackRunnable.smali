.class Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;
.super Ljava/lang/Object;
.source "CABCController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/CABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveStackRunnable"
.end annotation


# instance fields
.field private mStackId:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/CABCController;I)V
    .locals 0
    .param p2, "stackId"    # I

    .prologue
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;->mStackId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # invokes: Lcn/nubia/server/appmgmt/CABCController;->adjustCABCMode()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$600(Lcn/nubia/server/appmgmt/CABCController;)V

    return-void
.end method
