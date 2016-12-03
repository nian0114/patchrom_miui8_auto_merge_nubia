.class Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
.super Ljava/lang/Object;
.source "UserPLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UserPLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UPLMNInfoWithEf"
.end annotation


# instance fields
.field private mNetworkMode:I

.field private mOperatorNumeric:Ljava/lang/String;

.field private mPriority:I

.field final synthetic this$0:Lcom/android/phone/UserPLMNListPreference;


# direct methods
.method public constructor <init>(Lcom/android/phone/UserPLMNListPreference;Ljava/lang/String;II)V
    .locals 0
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "mNetworkMode"    # I
    .param p4, "mPriority"    # I

    .prologue
    iput-object p1, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->this$0:Lcom/android/phone/UserPLMNListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->mNetworkMode:I

    iput p4, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->mPriority:I

    return-void
.end method


# virtual methods
.method public getNetworMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->mNetworkMode:I

    return v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->mPriority:I

    return v0
.end method

.method public setOperatorNumeric(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    iput p1, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->mPriority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPLMNInfoWithEf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->mNetworkMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
