.class Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;
.super Landroid/os/AsyncTask;
.source "DualManagerAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dual/DualManagerAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loadAppAsyncTask"
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
.field final synthetic this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/dual/DualManagerAppActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/dual/DualManagerAppActivity;Lcom/android/settings_ex/dual/DualManagerAppActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/dual/DualManagerAppActivity;
    .param p2, "x1"    # Lcom/android/settings_ex/dual/DualManagerAppActivity$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;-><init>(Lcom/android/settings_ex/dual/DualManagerAppActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # getter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAppList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$100(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # getter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAppList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$100(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # getter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$200(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    iget-object v1, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # getter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$200(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # getter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->mUid:I
    invoke-static {v2}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$300(Lcom/android/settings_ex/dual/DualManagerAppActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/dual/DualSupportInstance;->getSupportAppList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAppList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$102(Lcom/android/settings_ex/dual/DualManagerAppActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 118
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # getter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->newDualAPPList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$400(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # getter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->newDualAPPList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$400(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # getter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAppList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$100(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->newDualAPPList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$402(Lcom/android/settings_ex/dual/DualManagerAppActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # invokes: Lcom/android/settings_ex/dual/DualManagerAppActivity;->initListView()V
    invoke-static {v0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$500(Lcom/android/settings_ex/dual/DualManagerAppActivity;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # getter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAdapter:Lcom/android/settings_ex/dual/DualSuppportAppAdpater;
    invoke-static {v0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$600(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Lcom/android/settings_ex/dual/DualSuppportAppAdpater;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # getter for: Lcom/android/settings_ex/dual/DualManagerAppActivity;->mDualAdapter:Lcom/android/settings_ex/dual/DualSuppportAppAdpater;
    invoke-static {v0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$600(Lcom/android/settings_ex/dual/DualManagerAppActivity;)Lcom/android/settings_ex/dual/DualSuppportAppAdpater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater;->notifyDataSetChanged()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualManagerAppActivity$loadAppAsyncTask;->this$0:Lcom/android/settings_ex/dual/DualManagerAppActivity;

    # invokes: Lcom/android/settings_ex/dual/DualManagerAppActivity;->initEmptyListView()V
    invoke-static {v0}, Lcom/android/settings_ex/dual/DualManagerAppActivity;->access$700(Lcom/android/settings_ex/dual/DualManagerAppActivity;)V

    .line 133
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 108
    return-void
.end method
