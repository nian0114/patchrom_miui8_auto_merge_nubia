.class public Lcom/android/phone/NBAutoRecordDBOperations;
.super Ljava/lang/Object;
.source "NBAutoRecordDBOperations.java"


# static fields
.field private static sInstance:Lcom/android/phone/NBAutoRecordDBOperations;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/phone/NBAutoRecordDBOperations;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NBAutoRecordDBOperations;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private applyBatched(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NBAutoRecordDBOperations;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "cn.nubia.telephony.provider.callrecord"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "NBAutoRecordDBOperations"

    const-string v2, "delete went wrong"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getDeleteOperations(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "number":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://cn.nubia.telephony.provider.callrecord/chosen_contacts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "deleteUrl":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "deleteUrl":Landroid/net/Uri;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    return-object v4
.end method

.method private getInsertOperations(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBContact;

    .local v0, "contact":Lcom/android/phone/NBContact;
    invoke-virtual {v0}, Lcom/android/phone/NBContact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .local v2, "number":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/phone/NBAutoRecordDBOperations;->isContactNotExits(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "_name"

    invoke-virtual {v0}, Lcom/android/phone/NBContact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_number"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_normalized_number"

    invoke-static {v2}, Lcom/android/phone/NBContactNumberUtil;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "content://cn.nubia.telephony.provider.callrecord/chosen_contacts/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "contact":Lcom/android/phone/NBContact;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_1
    return-object v4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/phone/NBAutoRecordDBOperations;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v1, Lcom/android/phone/NBAutoRecordDBOperations;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NBAutoRecordDBOperations;->sInstance:Lcom/android/phone/NBAutoRecordDBOperations;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NBAutoRecordDBOperations;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/phone/NBAutoRecordDBOperations;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/NBAutoRecordDBOperations;->sInstance:Lcom/android/phone/NBAutoRecordDBOperations;

    :cond_0
    sget-object v0, Lcom/android/phone/NBAutoRecordDBOperations;->sInstance:Lcom/android/phone/NBAutoRecordDBOperations;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getNBRecordContacts()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordDBOperations;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://cn.nubia.telephony.provider.callrecord/chosen_contacts/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v6, Lcom/android/phone/NBContact;

    invoke-direct {v6}, Lcom/android/phone/NBContact;-><init>()V

    .local v6, "contact":Lcom/android/phone/NBContact;
    const-string v0, "_number"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "number":Ljava/lang/String;
    const-string v0, "_normalized_number"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v6, v10}, Lcom/android/phone/NBContact;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/android/phone/NBContact;->setNormalizedNumber(Ljava/lang/String;)V

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .end local v6    # "contact":Lcom/android/phone/NBContact;
    .end local v9    # "normalizedNumber":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    if-eqz v8, :cond_0

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v0

    :cond_1
    if-eqz v8, :cond_2

    if-eqz v2, :cond_3

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    return-object v7

    :catch_1
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_2
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private getPhoneContacts()Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .local v10, "phoneContacts":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/phone/NBContact;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v4

    const-string v0, "data1"

    aput-object v0, v2, v5

    .local v2, "projection":[Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, "queryUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordDBOperations;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "sort_key"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "number":Ljava/lang/String;
    new-instance v6, Lcom/android/phone/NBContact;

    invoke-static {v9}, Lcom/android/phone/NBContactNumberUtil;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v8, v9, v0}, Lcom/android/phone/NBContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "contact":Lcom/android/phone/NBContact;
    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .end local v6    # "contact":Lcom/android/phone/NBContact;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    :goto_1
    if-eqz v7, :cond_0

    if-eqz v3, :cond_4

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v0

    :cond_1
    if-eqz v7, :cond_2

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    return-object v10

    :catch_1
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_2
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private setRecordContactsName(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "recordContacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    .local p2, "phoneContacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NBContact;

    .local v0, "contact":Lcom/android/phone/NBContact;
    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .local v3, "index":I
    if-ltz v3, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NBContact;

    .local v1, "contactInPhoneContacts":Lcom/android/phone/NBContact;
    invoke-virtual {v1}, Lcom/android/phone/NBContact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/phone/NBContact;->setName(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "contactInPhoneContacts":Lcom/android/phone/NBContact;
    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/NBContact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/phone/NBContact;->setName(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "contact":Lcom/android/phone/NBContact;
    .end local v3    # "index":I
    :cond_1
    return-void
.end method


# virtual methods
.method public deleteContacts(Ljava/util/List;)V
    .locals 1
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
    invoke-direct {p0, p1}, Lcom/android/phone/NBAutoRecordDBOperations;->getDeleteOperations(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NBAutoRecordDBOperations;->applyBatched(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getContacts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/NBContact;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBAutoRecordDBOperations;->getNBRecordContacts()Ljava/util/List;

    move-result-object v1

    .local v1, "recordContacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/phone/NBAutoRecordDBOperations;->getPhoneContacts()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "phoneContacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/NBContact;>;"
    invoke-direct {p0, v1, v0}, Lcom/android/phone/NBAutoRecordDBOperations;->setRecordContactsName(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public getContactsSize()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/NBAutoRecordDBOperations;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://cn.nubia.telephony.provider.callrecord/chosen_contacts/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v6, :cond_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    if-eqz v2, :cond_3

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    throw v0

    :catch_2
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public insertContacts(Ljava/util/List;)V
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
    invoke-direct {p0, p1}, Lcom/android/phone/NBAutoRecordDBOperations;->getInsertOperations(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NBAutoRecordDBOperations;->applyBatched(Ljava/util/ArrayList;)V

    return-void
.end method

.method isContactNotExits(Ljava/lang/String;)Z
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "_number = ? "

    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/NBAutoRecordDBOperations;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://cn.nubia.telephony.provider.callrecord/chosen_contacts/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    :goto_0
    if-eqz v6, :cond_0

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    if-eqz v5, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method
