.class Lcom/android/phone/NBQCUnLTEPlusC$1;
.super Ljava/lang/Object;
.source "NBQCUnLTEPlusC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/phone/NBQCUnLTEPlusC;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCUnLTEPlusC$1;->this$0:Lcom/android/phone/NBQCUnLTEPlusC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
