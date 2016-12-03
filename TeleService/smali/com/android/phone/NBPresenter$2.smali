.class Lcom/android/phone/NBPresenter$2;
.super Lcom/android/phone/NBPresenter$CursorAsyncTask;
.source "NBPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBPresenter;->deleteContacts(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBPresenter;

.field final synthetic val$numbers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/phone/NBPresenter;Ljava/util/List;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBPresenter$2;->this$0:Lcom/android/phone/NBPresenter;

    iput-object p2, p0, Lcom/android/phone/NBPresenter$2;->val$numbers:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NBPresenter$CursorAsyncTask;-><init>(Lcom/android/phone/NBPresenter;Lcom/android/phone/NBPresenter$1;)V

    return-void
.end method


# virtual methods
.method protected handleData()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBPresenter$2;->val$numbers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBPresenter$2;->this$0:Lcom/android/phone/NBPresenter;

    # getter for: Lcom/android/phone/NBPresenter;->mDBOperations:Lcom/android/phone/NBAutoRecordDBOperations;
    invoke-static {v0}, Lcom/android/phone/NBPresenter;->access$200(Lcom/android/phone/NBPresenter;)Lcom/android/phone/NBAutoRecordDBOperations;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NBPresenter$2;->val$numbers:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/phone/NBAutoRecordDBOperations;->deleteContacts(Ljava/util/List;)V

    :cond_0
    return-void
.end method
