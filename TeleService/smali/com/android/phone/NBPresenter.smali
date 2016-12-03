.class Lcom/android/phone/NBPresenter;
.super Ljava/lang/Object;
.source "NBPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBPresenter$CursorAsyncTask;
    }
.end annotation


# static fields
.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;


# instance fields
.field private mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

.field private mAddContactsFromUrisTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

.field private mContext:Landroid/content/Context;

.field private mDBOperations:Lcom/android/phone/NBAutoRecordDBOperations;

.field private mDeleteContactTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

.field private mQueryTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

.field private mView:Lcom/android/phone/INBListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/phone/NBPresenter;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/INBListView;Lcom/android/phone/NBAutoRecordContactAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/phone/INBListView;
    .param p3, "adapter"    # Lcom/android/phone/NBAutoRecordContactAdapter;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/NBPresenter;->mView:Lcom/android/phone/INBListView;

    iput-object p1, p0, Lcom/android/phone/NBPresenter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/phone/NBPresenter;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-static {p1}, Lcom/android/phone/NBAutoRecordDBOperations;->getInstance(Landroid/content/Context;)Lcom/android/phone/NBAutoRecordDBOperations;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBPresenter;->mDBOperations:Lcom/android/phone/NBAutoRecordDBOperations;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NBPresenter;[Landroid/os/Parcelable;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBPresenter;
    .param p1, "x1"    # [Landroid/os/Parcelable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBPresenter;->getContactInfoForPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/NBPresenter;)Lcom/android/phone/NBAutoRecordDBOperations;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBPresenter;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mDBOperations:Lcom/android/phone/NBAutoRecordDBOperations;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NBPresenter;)Lcom/android/phone/INBListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBPresenter;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mView:Lcom/android/phone/INBListView;

    return-object v0
.end method

.method private getContactInfoForPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 3
    .param p1, "uris"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/NBPresenter;->getIdSetBuilder([Landroid/os/Parcelable;)Ljava/lang/StringBuilder;

    move-result-object v0

    .local v0, "idSetBuilder":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/NBPresenter;->populateContacts(Ljava/lang/StringBuilder;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private getIdSetBuilder([Landroid/os/Parcelable;)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "uris"    # [Landroid/os/Parcelable;

    .prologue
    const/4 v1, 0x1

    .local v1, "first":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "idSetBuilder":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .local v5, "p":Landroid/os/Parcelable;
    move-object v6, v5

    check-cast v6, Landroid/net/Uri;

    .local v6, "uri":Landroid/net/Uri;
    const-string v7, "content"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v5    # "p":Landroid/os/Parcelable;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-gtz v7, :cond_4

    :cond_3
    const/4 v3, 0x0

    .end local v3    # "idSetBuilder":Ljava/lang/StringBuilder;
    :cond_4
    return-object v3
.end method

.method private populateContacts(Ljava/lang/StringBuilder;)Ljava/util/List;
    .locals 13
    .param p1, "idSetBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v5

    const-string v0, "display_name"

    aput-object v0, v2, v12

    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/NBPresenter;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_2

    if-eqz v8, :cond_0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "name":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "number":Ljava/lang/String;
    new-instance v6, Lcom/android/phone/NBContact;

    invoke-static {v10}, Lcom/android/phone/NBContactNumberUtil;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v9, v10, v0}, Lcom/android/phone/NBContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "contact":Lcom/android/phone/NBContact;
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .end local v6    # "contact":Lcom/android/phone/NBContact;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_2
    if-eqz v8, :cond_3

    if-eqz v4, :cond_7

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    throw v0

    :cond_4
    if-eqz v8, :cond_5

    if-eqz v4, :cond_6

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_4
    move-object v4, v7

    goto :goto_0

    :catch_2
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public varargs addContactsByUris([Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "parcelables"    # [Landroid/os/Parcelable;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mAddContactsFromUrisTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mAddContactsFromUrisTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    invoke-virtual {v0}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mAddContactsFromUrisTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/android/phone/NBPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/NBPresenter$1;-><init>(Lcom/android/phone/NBPresenter;[Landroid/os/Parcelable;)V

    iput-object v0, p0, Lcom/android/phone/NBPresenter;->mAddContactsFromUrisTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mAddContactsFromUrisTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public checkAll()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-virtual {v0}, Lcom/android/phone/NBAutoRecordContactAdapter;->selectAllContacts()V

    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mAddContactsFromUrisTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mAddContactsFromUrisTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    invoke-virtual {v0, v2}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/android/phone/NBPresenter;->mAddContactsFromUrisTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mDeleteContactTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mDeleteContactTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    invoke-virtual {v0, v2}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/android/phone/NBPresenter;->mDeleteContactTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mQueryTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mQueryTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    invoke-virtual {v0, v2}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/android/phone/NBPresenter;->mQueryTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    :cond_2
    iput-object v1, p0, Lcom/android/phone/NBPresenter;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/phone/NBPresenter;->mView:Lcom/android/phone/INBListView;

    return-void
.end method

.method public deleteContacts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mDeleteContactTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mDeleteContactTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    invoke-virtual {v0}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mDeleteContactTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/android/phone/NBPresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/NBPresenter$2;-><init>(Lcom/android/phone/NBPresenter;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/phone/NBPresenter;->mDeleteContactTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mDeleteContactTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public query()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mQueryTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mQueryTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    invoke-virtual {v0}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mQueryTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/android/phone/NBPresenter$CursorAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NBPresenter$CursorAsyncTask;-><init>(Lcom/android/phone/NBPresenter;Lcom/android/phone/NBPresenter$1;)V

    iput-object v0, p0, Lcom/android/phone/NBPresenter;->mQueryTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mQueryTask:Lcom/android/phone/NBPresenter$CursorAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/phone/NBPresenter$CursorAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public unCheckAll()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBPresenter;->mAdapter:Lcom/android/phone/NBAutoRecordContactAdapter;

    invoke-virtual {v0}, Lcom/android/phone/NBAutoRecordContactAdapter;->unSelectAllContacts()V

    return-void
.end method
