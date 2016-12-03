.class Lcom/android/phone/NBCallBarringOptions$5;
.super Ljava/lang/Object;
.source "NBCallBarringOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBCallBarringOptions;->handleSetOutgoingOrIncoming(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCallBarringOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCallBarringOptions;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallBarringOptions$5;->this$0:Lcom/android/phone/NBCallBarringOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallBarringOptions$5;->this$0:Lcom/android/phone/NBCallBarringOptions;

    const/4 v1, 0x3

    # invokes: Lcom/android/phone/NBCallBarringOptions;->resetDialogState(I)V
    invoke-static {v0, v1}, Lcom/android/phone/NBCallBarringOptions;->access$500(Lcom/android/phone/NBCallBarringOptions;I)V

    return-void
.end method
