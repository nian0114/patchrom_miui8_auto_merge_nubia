.class Lcom/android/phone/NBQCUnLTEPlusC$3;
.super Ljava/lang/Object;
.source "NBQCUnLTEPlusC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBQCUnLTEPlusC;->showSwitchMbnDialog(Landroid/content/Context;II)V
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
    iput-object p1, p0, Lcom/android/phone/NBQCUnLTEPlusC$3;->this$0:Lcom/android/phone/NBQCUnLTEPlusC;

    iput-object p2, p0, Lcom/android/phone/NBQCUnLTEPlusC$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC$3;->this$0:Lcom/android/phone/NBQCUnLTEPlusC;

    iget-object v1, p0, Lcom/android/phone/NBQCUnLTEPlusC$3;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/NBQCUnLTEPlusC;->setPrimaryChangeState(Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC$3;->this$0:Lcom/android/phone/NBQCUnLTEPlusC;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/NBQCUnLTEPlusC;->mSwitchMbnDialog:Lcn/nubia/commonui/phone/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/NBQCUnLTEPlusC;->access$302(Lcom/android/phone/NBQCUnLTEPlusC;Lcn/nubia/commonui/phone/app/AlertDialog;)Lcn/nubia/commonui/phone/app/AlertDialog;

    return-void
.end method
