.class Lcom/android/phone/NBPhoneExtra$MessageParameter;
.super Ljava/lang/Object;
.source "NBPhoneExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBPhoneExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageParameter"
.end annotation


# instance fields
.field lock:Ljava/lang/Object;

.field mPolicymanInfo:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/NBPhoneExtra;


# direct methods
.method constructor <init>(Lcom/android/phone/NBPhoneExtra;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBPhoneExtra$MessageParameter;->this$0:Lcom/android/phone/NBPhoneExtra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBPhoneExtra$MessageParameter;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBPhoneExtra$MessageParameter;->mPolicymanInfo:Ljava/lang/String;

    return-void
.end method
