.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteStartingProcessRunnable"
.end annotation


# instance fields
.field private mHostingType:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;

.field private mProcess:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "hostingType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mUid:I

    iput-object p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mProcess:Ljava/lang/String;

    iput-object p5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mHostingType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x1

    .local v0, "count":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "oldCount":I
    add-int/2addr v0, v1

    .end local v1    # "oldCount":I
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessUids:Ljava/util/HashMap;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    iget v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mHostingType:Ljava/lang/String;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-le v0, v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mUid:I

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->cancelPendingControlRunnable(I)V
    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mUid:I

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setPendingControlRunnable(ILjava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;Z)V

    goto :goto_0
.end method
