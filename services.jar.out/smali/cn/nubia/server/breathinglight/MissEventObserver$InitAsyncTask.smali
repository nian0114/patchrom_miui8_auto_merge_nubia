.class Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;
.super Landroid/os/AsyncTask;
.source "MissEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/MissEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/MissEventObserver;


# direct methods
.method private constructor <init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/breathinglight/MissEventObserver;Lcn/nubia/server/breathinglight/MissEventObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p2, "x1"    # Lcn/nubia/server/breathinglight/MissEventObserver$1;

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    # invokes: Lcn/nubia/server/breathinglight/MissEventObserver;->getWhiteAppList()V
    invoke-static {v0}, Lcn/nubia/server/breathinglight/MissEventObserver;->access$300(Lcn/nubia/server/breathinglight/MissEventObserver;)V

    const/4 v0, 0x0

    return-object v0
.end method
