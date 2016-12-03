.class Lcom/android/phone/NBDsdsBase$2;
.super Ljava/lang/Object;
.source "NBDsdsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBDsdsBase;->showErroDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBDsdsBase;


# direct methods
.method constructor <init>(Lcom/android/phone/NBDsdsBase;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBDsdsBase$2;->this$0:Lcom/android/phone/NBDsdsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
