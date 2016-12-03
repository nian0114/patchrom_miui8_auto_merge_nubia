.class Lcom/android/phone/NBPresenter$CursorAsyncTask;
.super Landroid/os/AsyncTask;
.source "NBPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/phone/NBContact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBPresenter;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBPresenter;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBPresenter$CursorAsyncTask;->this$0:Lcom/android/phone/NBPresenter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBPresenter;Lcom/android/phone/NBPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBPresenter;
    .param p2, "x1"    # Lcom/android/phone/NBPresenter$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBPresenter$CursorAsyncTask;-><init>(Lcom/android/phone/NBPresenter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    invoke-virtual {p0}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->handleData()V

    iget-object v1, p0, Lcom/android/phone/NBPresenter$CursorAsyncTask;->this$0:Lcom/android/phone/NBPresenter;

    # getter for: Lcom/android/phone/NBPresenter;->mDBOperations:Lcom/android/phone/NBAutoRecordDBOperations;
    invoke-static {v1}, Lcom/android/phone/NBPresenter;->access$200(Lcom/android/phone/NBPresenter;)Lcom/android/phone/NBAutoRecordDBOperations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NBAutoRecordDBOperations;->getContacts()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method handleData()V
    .locals 0

    .prologue
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    iget-object v0, p0, Lcom/android/phone/NBPresenter$CursorAsyncTask;->this$0:Lcom/android/phone/NBPresenter;

    # getter for: Lcom/android/phone/NBPresenter;->mView:Lcom/android/phone/INBListView;
    invoke-static {v0}, Lcom/android/phone/NBPresenter;->access$300(Lcom/android/phone/NBPresenter;)Lcom/android/phone/INBListView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/phone/INBListView;->refresh(Ljava/util/List;)V

    return-void
.end method
