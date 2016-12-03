.class Lcom/android/phone/NBMSimCallFeaturesSubSetting$7;
.super Ljava/lang/Object;
.source "NBMSimCallFeaturesSubSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBMSimCallFeaturesSubSetting;->initGsmBundle(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

.field final synthetic val$icicle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$7;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    iput-object p2, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$7;->val$icicle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$7;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->mSubId:I
    invoke-static {v0}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$1700(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$7;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    invoke-static {v0, v1}, Lcom/android/phone/NBPhoneUtils;->enableData(ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$7;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$7;->val$icicle:Landroid/os/Bundle;

    # invokes: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->initGsmButton(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$1800(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Landroid/os/Bundle;)V

    return-void
.end method
