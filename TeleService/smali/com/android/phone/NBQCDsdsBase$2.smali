.class Lcom/android/phone/NBQCDsdsBase$2;
.super Ljava/lang/Object;
.source "NBQCDsdsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBQCDsdsBase;->showMBNErroDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBQCDsdsBase;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/phone/NBQCDsdsBase;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCDsdsBase$2;->this$0:Lcom/android/phone/NBQCDsdsBase;

    iput p2, p0, Lcom/android/phone/NBQCDsdsBase$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    iget v0, p0, Lcom/android/phone/NBQCDsdsBase$2;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBQCDsdsBase$2;->this$0:Lcom/android/phone/NBQCDsdsBase;

    iget-object v0, v0, Lcom/android/phone/NBQCDsdsBase;->mNBQCMBNController:Lcom/android/phone/NBQCMBNController;

    invoke-virtual {v0}, Lcom/android/phone/NBQCMBNController;->reboot()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
