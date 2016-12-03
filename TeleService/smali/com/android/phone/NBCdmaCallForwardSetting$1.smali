.class Lcom/android/phone/NBCdmaCallForwardSetting$1;
.super Ljava/lang/Object;
.source "NBCdmaCallForwardSetting.java"

# interfaces
.implements Lcom/android/phone/NBSimStateChangeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBCdmaCallForwardSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCdmaCallForwardSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCdmaCallForwardSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCdmaCallForwardSetting$1;->this$0:Lcom/android/phone/NBCdmaCallForwardSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChange()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCdmaCallForwardSetting$1;->this$0:Lcom/android/phone/NBCdmaCallForwardSetting;

    invoke-virtual {v0}, Lcom/android/phone/NBCdmaCallForwardSetting;->finish()V

    return-void
.end method
