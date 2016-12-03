.class Lcom/android/phone/NBCallBarringOptions$3;
.super Ljava/lang/Object;
.source "NBCallBarringOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBCallBarringOptions;->handleCancelAllCallBarring(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCallBarringOptions;

.field final synthetic val$tmpPsw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCallBarringOptions;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallBarringOptions$3;->this$0:Lcom/android/phone/NBCallBarringOptions;

    iput-object p2, p0, Lcom/android/phone/NBCallBarringOptions$3;->val$tmpPsw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions$3;->this$0:Lcom/android/phone/NBCallBarringOptions;

    # getter for: Lcom/android/phone/NBCallBarringOptions;->mSubId:I
    invoke-static {v0}, Lcom/android/phone/NBCallBarringOptions;->access$000(Lcom/android/phone/NBCallBarringOptions;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions$3;->this$0:Lcom/android/phone/NBCallBarringOptions;

    invoke-static {v0, v1}, Lcom/android/phone/NBPhoneUtils;->enableData(ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions$3;->this$0:Lcom/android/phone/NBCallBarringOptions;

    iget-object v1, p0, Lcom/android/phone/NBCallBarringOptions$3;->val$tmpPsw:Ljava/lang/String;

    # invokes: Lcom/android/phone/NBCallBarringOptions;->cancelAllCallBarring(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NBCallBarringOptions;->access$300(Lcom/android/phone/NBCallBarringOptions;Ljava/lang/String;)V

    return-void
.end method
