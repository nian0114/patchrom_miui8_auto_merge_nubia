.class Lcom/android/phone/UserPLMNListPreference$MyHandler;
.super Landroid/os/Handler;
.source "UserPLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UserPLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UserPLMNListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/UserPLMNListPreference;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/UserPLMNListPreference;Lcom/android/phone/UserPLMNListPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/UserPLMNListPreference;
    .param p2, "x1"    # Lcom/android/phone/UserPLMNListPreference$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/UserPLMNListPreference$MyHandler;-><init>(Lcom/android/phone/UserPLMNListPreference;)V

    return-void
.end method


# virtual methods
.method public handleGetEFDone(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v12, "handleGetEFDone: done"

    # invokes: Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$300(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleGetEFDone with exception = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$300(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    # getter for: Lcom/android/phone/UserPLMNListPreference;->mHandler:Lcom/android/phone/UserPLMNListPreference$MyHandler;
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$800(Lcom/android/phone/UserPLMNListPreference;)Lcom/android/phone/UserPLMNListPreference$MyHandler;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/UserPLMNListPreference$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .local v6, "message":Landroid/os/Message;
    const/4 v12, 0x0

    iput v12, v6, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v12, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    # getter for: Lcom/android/phone/UserPLMNListPreference;->mHandler:Lcom/android/phone/UserPLMNListPreference$MyHandler;
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$800(Lcom/android/phone/UserPLMNListPreference;)Lcom/android/phone/UserPLMNListPreference$MyHandler;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/phone/UserPLMNListPreference$MyHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    .end local v6    # "message":Landroid/os/Message;
    :cond_0
    iget-object v12, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v3, v12

    check-cast v3, [B

    .local v3, "data":[B
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "result="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$300(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    array-length v13, v3

    div-int/lit8 v13, v13, 0x5

    # setter for: Lcom/android/phone/UserPLMNListPreference;->mNumRec:I
    invoke-static {v12, v13}, Lcom/android/phone/UserPLMNListPreference;->access$902(Lcom/android/phone/UserPLMNListPreference;I)I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mNumRec="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    # getter for: Lcom/android/phone/UserPLMNListPreference;->mNumRec:I
    invoke-static {v13}, Lcom/android/phone/UserPLMNListPreference;->access$900(Lcom/android/phone/UserPLMNListPreference;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$300(Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    # getter for: Lcom/android/phone/UserPLMNListPreference;->mNumRec:I
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$900(Lcom/android/phone/UserPLMNListPreference;)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .local v10, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v12, 0x3

    new-array v5, v12, [B

    .local v5, "mcc":[B
    const/4 v12, 0x3

    new-array v7, v12, [B

    .local v7, "mnc":[B
    const/4 v9, 0x0

    .local v9, "num_mnc_digits":I
    const/4 v1, 0x0

    .local v1, "access_tech":I
    const/4 v11, 0x0

    .local v11, "strOperName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    # getter for: Lcom/android/phone/UserPLMNListPreference;->mNumRec:I
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$900(Lcom/android/phone/UserPLMNListPreference;)I

    move-result v12

    if-ge v4, v12, :cond_9

    const/4 v1, 0x0

    const/4 v12, 0x0

    mul-int/lit8 v13, v4, 0x5

    aget-byte v13, v3, v13

    and-int/lit8 v13, v13, 0xf

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    const/4 v12, 0x1

    mul-int/lit8 v13, v4, 0x5

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v13, v13, 0x4

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    const/4 v12, 0x2

    mul-int/lit8 v13, v4, 0x5

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit8 v13, v13, 0xf

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    const/4 v12, 0x0

    mul-int/lit8 v13, v4, 0x5

    add-int/lit8 v13, v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit8 v13, v13, 0xf

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    const/4 v12, 0x1

    mul-int/lit8 v13, v4, 0x5

    add-int/lit8 v13, v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v13, v13, 0x4

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    const/16 v13, -0x10

    if-ne v12, v13, :cond_7

    const/4 v9, 0x2

    const/4 v12, 0x2

    mul-int/lit8 v13, v4, 0x5

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v13, v13, 0x4

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    :goto_2
    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x3

    aget-byte v12, v3, v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_1

    or-int/lit8 v1, v1, 0x8

    :cond_1
    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x3

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x4

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_3

    or-int/lit8 v1, v1, 0x1

    :cond_3
    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x4

    aget-byte v12, v3, v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_4

    or-int/lit8 v1, v1, 0x2

    :cond_4
    mul-int/lit8 v12, v4, 0x5

    aget-byte v12, v3, v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, v3, v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    mul-int/lit8 v12, v4, 0x5

    add-int/lit8 v12, v12, 0x2

    aget-byte v12, v3, v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    const/4 v12, 0x2

    if-ne v9, v12, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    invoke-virtual {v13, v5}, Lcom/android/phone/UserPLMNListPreference;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    invoke-virtual {v13, v7}, Lcom/android/phone/UserPLMNListPreference;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_5
    :goto_3
    new-instance v12, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    invoke-direct {v12, v13, v11, v1, v4}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;-><init>(Lcom/android/phone/UserPLMNListPreference;Ljava/lang/String;II)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v9, 0x3

    const/4 v12, 0x2

    mul-int/lit8 v13, v4, 0x5

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v13, v13, 0x4

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    goto/16 :goto_2

    :cond_8
    const/4 v12, 0x3

    if-ne v9, v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    invoke-virtual {v13, v5}, Lcom/android/phone/UserPLMNListPreference;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    invoke-virtual {v13, v7}, Lcom/android/phone/UserPLMNListPreference;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    # getter for: Lcom/android/phone/UserPLMNListPreference;->mHandler:Lcom/android/phone/UserPLMNListPreference$MyHandler;
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$800(Lcom/android/phone/UserPLMNListPreference;)Lcom/android/phone/UserPLMNListPreference$MyHandler;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/UserPLMNListPreference$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .restart local v6    # "message":Landroid/os/Message;
    const/4 v12, 0x0

    iput v12, v6, Landroid/os/Message;->what:I

    if-nez v10, :cond_a

    const-string v12, "handleGetEFDone : NULL ret list!"

    # invokes: Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$300(Ljava/lang/String;)V

    :goto_4
    new-instance v8, Landroid/os/AsyncResult;

    iget-object v12, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct {v8, v12, v10, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v8, "mret":Landroid/os/AsyncResult;
    iput-object v8, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    # getter for: Lcom/android/phone/UserPLMNListPreference;->mHandler:Lcom/android/phone/UserPLMNListPreference$MyHandler;
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$800(Lcom/android/phone/UserPLMNListPreference;)Lcom/android/phone/UserPLMNListPreference$MyHandler;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/phone/UserPLMNListPreference$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v8    # "mret":Landroid/os/AsyncResult;
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleGetEFDone : ret.size()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/android/phone/UserPLMNListPreference;->access$300(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public handleGetUPLMNList(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v2, "handleGetUPLMNList: done"

    # invokes: Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/UserPLMNListPreference;->access$300(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    iget-object v3, p0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    # getter for: Lcom/android/phone/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/UserPLMNListPreference;->access$400(Lcom/android/phone/UserPLMNListPreference;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/UserPLMNListPreference;->onFinished(Landroid/preference/Preference;Z)V

    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .local v1, "isUserException":Z
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetUPLMNList with exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/UserPLMNListPreference;->access$300(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    # getter for: Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/phone/UserPLMNListPreference;->access$500(Lcom/android/phone/UserPLMNListPreference;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/phone/UserPLMNListPreference;->access$502(Lcom/android/phone/UserPLMNListPreference;Ljava/util/List;)Ljava/util/List;

    :cond_0
    :goto_1
    return-void

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "isUserException":Z
    :cond_1
    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    iget-object v3, p0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    # getter for: Lcom/android/phone/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/UserPLMNListPreference;->access$400(Lcom/android/phone/UserPLMNListPreference;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/UserPLMNListPreference;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "isUserException":Z
    :cond_2
    iget-object v3, p0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    # invokes: Lcom/android/phone/UserPLMNListPreference;->refreshUPLMNListPreference(Ljava/util/ArrayList;)V
    invoke-static {v3, v2}, Lcom/android/phone/UserPLMNListPreference;->access$600(Lcom/android/phone/UserPLMNListPreference;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/phone/UserPLMNListPreference$MyHandler;->handleGetUPLMNList(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/phone/UserPLMNListPreference$MyHandler;->handleSetEFDone(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/phone/UserPLMNListPreference$MyHandler;->handleGetEFDone(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleSetEFDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v2, "handleSetEFDone: done"

    # invokes: Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/UserPLMNListPreference;->access$300(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .local v1, "isUserException":Z
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetEFDone with exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/UserPLMNListPreference;->access$300(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference$MyHandler;->this$0:Lcom/android/phone/UserPLMNListPreference;

    # invokes: Lcom/android/phone/UserPLMNListPreference;->getUPLMNInfoFromEf()V
    invoke-static {v2}, Lcom/android/phone/UserPLMNListPreference;->access$700(Lcom/android/phone/UserPLMNListPreference;)V

    return-void

    :cond_0
    const-string v2, "handleSetEFDone: with OK result!"

    # invokes: Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/UserPLMNListPreference;->access$300(Ljava/lang/String;)V

    goto :goto_0
.end method
