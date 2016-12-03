.class Lcom/android/phone/NBAutoRecordContactActivity$MyListener;
.super Ljava/lang/Object;
.source "NBAutoRecordContactActivity.java"

# interfaces
.implements Lcom/android/phone/NBActionModeCallback$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBAutoRecordContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBAutoRecordContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBAutoRecordContactActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;->this$0:Lcom/android/phone/NBAutoRecordContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBAutoRecordContactActivity;Lcom/android/phone/NBAutoRecordContactActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBAutoRecordContactActivity;
    .param p2, "x1"    # Lcom/android/phone/NBAutoRecordContactActivity$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;-><init>(Lcom/android/phone/NBAutoRecordContactActivity;)V

    return-void
.end method


# virtual methods
.method public checkAll()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;->this$0:Lcom/android/phone/NBAutoRecordContactActivity;

    # getter for: Lcom/android/phone/NBAutoRecordContactActivity;->mPresenter:Lcom/android/phone/NBPresenter;
    invoke-static {v0}, Lcom/android/phone/NBAutoRecordContactActivity;->access$300(Lcom/android/phone/NBAutoRecordContactActivity;)Lcom/android/phone/NBPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NBPresenter;->checkAll()V

    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;->this$0:Lcom/android/phone/NBAutoRecordContactActivity;

    # invokes: Lcom/android/phone/NBAutoRecordContactActivity;->updateCallbackState()V
    invoke-static {v0}, Lcom/android/phone/NBAutoRecordContactActivity;->access$400(Lcom/android/phone/NBAutoRecordContactActivity;)V

    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;->this$0:Lcom/android/phone/NBAutoRecordContactActivity;

    # getter for: Lcom/android/phone/NBAutoRecordContactActivity;->mPresenter:Lcom/android/phone/NBPresenter;
    invoke-static {v0}, Lcom/android/phone/NBAutoRecordContactActivity;->access$300(Lcom/android/phone/NBAutoRecordContactActivity;)Lcom/android/phone/NBPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;->this$0:Lcom/android/phone/NBAutoRecordContactActivity;

    # getter for: Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;
    invoke-static {v1}, Lcom/android/phone/NBAutoRecordContactActivity;->access$200(Lcom/android/phone/NBAutoRecordContactActivity;)Lcom/android/phone/NBAutoRecordContactAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NBAutoRecordContactAdapter;->getSelectedContacts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBPresenter;->deleteContacts(Ljava/util/List;)V

    return-void
.end method

.method public onChangeMode(Z)V
    .locals 1
    .param p1, "changed"    # Z

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;->this$0:Lcom/android/phone/NBAutoRecordContactActivity;

    # getter for: Lcom/android/phone/NBAutoRecordContactActivity;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;
    invoke-static {v0}, Lcom/android/phone/NBAutoRecordContactActivity;->access$200(Lcom/android/phone/NBAutoRecordContactActivity;)Lcom/android/phone/NBAutoRecordContactAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NBAutoRecordContactAdapter;->unSelectAllContacts()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;->this$0:Lcom/android/phone/NBAutoRecordContactActivity;

    invoke-virtual {v0, p1}, Lcom/android/phone/NBAutoRecordContactActivity;->setActionMode(Z)V

    return-void
.end method

.method public unCheckAll()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;->this$0:Lcom/android/phone/NBAutoRecordContactActivity;

    # getter for: Lcom/android/phone/NBAutoRecordContactActivity;->mPresenter:Lcom/android/phone/NBPresenter;
    invoke-static {v0}, Lcom/android/phone/NBAutoRecordContactActivity;->access$300(Lcom/android/phone/NBAutoRecordContactActivity;)Lcom/android/phone/NBPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NBPresenter;->unCheckAll()V

    iget-object v0, p0, Lcom/android/phone/NBAutoRecordContactActivity$MyListener;->this$0:Lcom/android/phone/NBAutoRecordContactActivity;

    # invokes: Lcom/android/phone/NBAutoRecordContactActivity;->updateCallbackState()V
    invoke-static {v0}, Lcom/android/phone/NBAutoRecordContactActivity;->access$400(Lcom/android/phone/NBAutoRecordContactActivity;)V

    return-void
.end method
