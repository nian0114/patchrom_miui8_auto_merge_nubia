.class Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$ShutdownOrRebootListener;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Lcom/android/settings_ex/schpwronoff/NubiaSlideView$OnShutDownRebootListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownOrRebootListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$ShutdownOrRebootListener;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;
    .param p2, "x1"    # Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$1;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$ShutdownOrRebootListener;-><init>(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    return-void
.end method


# virtual methods
.method public reboot()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$ShutdownOrRebootListener;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->cancelCountDownTimer()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$2000(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog$ShutdownOrRebootListener;->this$0:Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->fireShutDown()V
    invoke-static {v0}, Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;->access$1500(Lcom/android/settings_ex/schpwronoff/NubiaShutdownRebootDialog;)V

    .line 342
    return-void
.end method
