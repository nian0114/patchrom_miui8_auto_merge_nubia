.class Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;
.super Landroid/database/ContentObserver;
.source "NBBaseDataSlotSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NBDataSlotContentObserver"
.end annotation


# instance fields
.field private final mPhoneId:I

.field private mSubId:I

.field final synthetic this$0:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;Landroid/os/Handler;II)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "subId"    # I
    .param p4, "phoneId"    # I

    .prologue
    iput-object p1, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->this$0:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput p3, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->mSubId:I

    iput p4, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public getSubId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->mSubId:I

    return v0
.end method

.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const-string v0, "NBDataSlotSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobile data onChange mSubId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPhoneId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->this$0:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;

    # getter for: Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->access$300(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->this$0:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;

    # getter for: Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->access$300(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->mSubId:I

    iget v4, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->mPhoneId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    iput p1, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotContentObserver;->mSubId:I

    return-void
.end method
