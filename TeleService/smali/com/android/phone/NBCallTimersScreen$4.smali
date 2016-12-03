.class Lcom/android/phone/NBCallTimersScreen$4;
.super Ljava/lang/Object;
.source "NBCallTimersScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBCallTimersScreen;->getResetVoiceCallTimeDialog()Lcn/nubia/commonui/phone/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCallTimersScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCallTimersScreen;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallTimersScreen$4;->this$0:Lcom/android/phone/NBCallTimersScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallTimersScreen$4;->this$0:Lcom/android/phone/NBCallTimersScreen;

    # invokes: Lcom/android/phone/NBCallTimersScreen;->resetCallTime()V
    invoke-static {v0}, Lcom/android/phone/NBCallTimersScreen;->access$000(Lcom/android/phone/NBCallTimersScreen;)V

    iget-object v0, p0, Lcom/android/phone/NBCallTimersScreen$4;->this$0:Lcom/android/phone/NBCallTimersScreen;

    invoke-virtual {v0}, Lcom/android/phone/NBCallTimersScreen;->finish()V

    return-void
.end method
