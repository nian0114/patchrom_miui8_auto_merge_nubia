.class Lcom/android/phone/NBMSimCallFeaturesSubSetting$8;
.super Ljava/lang/Object;
.source "NBMSimCallFeaturesSubSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBMSimCallFeaturesSubSetting;->handleCWButton(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

.field final synthetic val$objValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Ljava/lang/Object;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$8;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    iput-object p2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$8;->val$objValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$8;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubId:I
    invoke-static {v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$1700(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$8;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    invoke-static {v0, v1}, Lcom/android/phone/NBPhoneUtils;->enableData(ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$8;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$1900(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$8;->val$objValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setCW(Z)V

    return-void
.end method
