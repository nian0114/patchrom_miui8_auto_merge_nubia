.class Lcom/android/settings_ex/schpwronoff/ShutdownAlert$2;
.super Ljava/lang/Object;
.source "ShutdownAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$2;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$2;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # invokes: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->cancelCountDownTimer()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$600(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)V

    .line 115
    invoke-static {}, Lcom/android/settings_ex/schpwronoff/SchPwrWakeLock;->releaseCpuWakeLock()V

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/ShutdownAlert$2;->this$0:Lcom/android/settings_ex/schpwronoff/ShutdownAlert;

    # getter for: Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->mDialog:Lcn/nubia/commonui/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/ShutdownAlert;->access$300(Lcom/android/settings_ex/schpwronoff/ShutdownAlert;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 117
    return-void
.end method
