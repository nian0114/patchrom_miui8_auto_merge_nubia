.class Lcom/android/phone/NBPresenter$1;
.super Lcom/android/phone/NBPresenter$CursorAsyncTask;
.source "NBPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBPresenter;->addContactsByUris([Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBPresenter;

.field final synthetic val$parcelables:[Landroid/os/Parcelable;


# direct methods
.method constructor <init>(Lcom/android/phone/NBPresenter;[Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBPresenter$1;->this$0:Lcom/android/phone/NBPresenter;

    iput-object p2, p0, Lcom/android/phone/NBPresenter$1;->val$parcelables:[Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NBPresenter$CursorAsyncTask;-><init>(Lcom/android/phone/NBPresenter;Lcom/android/phone/NBPresenter$1;)V

    return-void
.end method


# virtual methods
.method protected handleData()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBPresenter$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBPresenter$1;->this$0:Lcom/android/phone/NBPresenter;

    iget-object v2, p0, Lcom/android/phone/NBPresenter$1;->val$parcelables:[Landroid/os/Parcelable;

    # invokes: Lcom/android/phone/NBPresenter;->getContactInfoForPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/phone/NBPresenter;->access$100(Lcom/android/phone/NBPresenter;[Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    .local v0, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    iget-object v1, p0, Lcom/android/phone/NBPresenter$1;->this$0:Lcom/android/phone/NBPresenter;

    # getter for: Lcom/android/phone/NBPresenter;->mDBOperations:Lcom/android/phone/NBAutoRecordDBOperations;
    invoke-static {v1}, Lcom/android/phone/NBPresenter;->access$200(Lcom/android/phone/NBPresenter;)Lcom/android/phone/NBAutoRecordDBOperations;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/NBAutoRecordDBOperations;->insertContacts(Ljava/util/List;)V

    .end local v0    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    :cond_0
    return-void
.end method
