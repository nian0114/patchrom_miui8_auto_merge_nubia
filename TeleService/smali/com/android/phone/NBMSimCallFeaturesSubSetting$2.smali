.class Lcom/android/phone/NBMSimCallFeaturesSubSetting$2;
.super Ljava/lang/Object;
.source "NBMSimCallFeaturesSubSetting.java"

# interfaces
.implements Lcom/android/phone/NBSimStateChangeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBMSimCallFeaturesSubSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$2;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChange()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->displayDualCardUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$2;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    invoke-virtual {v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->finish()V

    :cond_0
    return-void
.end method
