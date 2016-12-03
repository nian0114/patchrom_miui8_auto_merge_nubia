.class Lcom/android/phone/NBCallRecordSetting$3;
.super Landroid/os/AsyncTask;
.source "NBCallRecordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBCallRecordSetting;->queryContactCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCallRecordSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCallRecordSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallRecordSetting$3;->this$0:Lcom/android/phone/NBCallRecordSetting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v0, 0x0

    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/phone/NBCallRecordSetting$3;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBCallRecordSetting$3;->this$0:Lcom/android/phone/NBCallRecordSetting;

    invoke-static {v2}, Lcom/android/phone/NBAutoRecordDBOperations;->getInstance(Landroid/content/Context;)Lcom/android/phone/NBAutoRecordDBOperations;

    move-result-object v1

    .local v1, "operations":Lcom/android/phone/NBAutoRecordDBOperations;
    invoke-virtual {v1}, Lcom/android/phone/NBAutoRecordDBOperations;->getContactsSize()I

    move-result v0

    .end local v1    # "operations":Lcom/android/phone/NBAutoRecordDBOperations;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/phone/NBCallRecordSetting$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting$3;->this$0:Lcom/android/phone/NBCallRecordSetting;

    # getter for: Lcom/android/phone/NBCallRecordSetting;->mChooseContactsPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/NBCallRecordSetting;->access$300(Lcom/android/phone/NBCallRecordSetting;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting$3;->this$0:Lcom/android/phone/NBCallRecordSetting;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/phone/NBCallRecordSetting;->setContactCountSummary(I)V
    invoke-static {v0, v1}, Lcom/android/phone/NBCallRecordSetting;->access$400(Lcom/android/phone/NBCallRecordSetting;I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/phone/NBCallRecordSetting$3;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
