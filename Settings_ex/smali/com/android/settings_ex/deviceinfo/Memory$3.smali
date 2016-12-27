.class Lcom/android/settings_ex/deviceinfo/Memory$3;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/Memory;->onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # invokes: Lcom/android/settings_ex/deviceinfo/Memory;->doUnmount()V
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$200(Lcom/android/settings_ex/deviceinfo/Memory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    const/4 v2, 0x2

    # invokes: Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/Memory;->access$300(Lcom/android/settings_ex/deviceinfo/Memory;I)V

    goto :goto_0
.end method
