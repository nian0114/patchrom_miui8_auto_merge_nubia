.class Lcom/android/phone/NBQCUnLTEPlusC$2;
.super Ljava/lang/Object;
.source "NBQCUnLTEPlusC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBQCUnLTEPlusC;->showRebootDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBQCUnLTEPlusC;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/phone/NBQCUnLTEPlusC;Landroid/content/Context;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCUnLTEPlusC$2;->this$0:Lcom/android/phone/NBQCUnLTEPlusC;

    iput-object p2, p0, Lcom/android/phone/NBQCUnLTEPlusC$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC$2;->this$0:Lcom/android/phone/NBQCUnLTEPlusC;

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/phone/NBQCUnLTEPlusC;->onRebootPositiveClick(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/phone/NBQCUnLTEPlusC;->access$100(Lcom/android/phone/NBQCUnLTEPlusC;Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
