.class Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$5;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->isCanInterrupt()Z
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1900(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->cancelCountDownTimer()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$2000(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    .line 242
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->releaseCpuWakeLock()V

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->dismiss()V

    .line 245
    :cond_0
    return-void
.end method
