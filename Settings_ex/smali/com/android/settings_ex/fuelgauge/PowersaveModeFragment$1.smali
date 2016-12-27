.class Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$1;
.super Ljava/lang/Object;
.source "PowersaveModeFragment.java"

# interfaces
.implements Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindedFail()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "jiepp"

    const-string v1, "onBindedFail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public onBindedSuccess()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;

    # invokes: Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->updateUI()V
    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;->access$100(Lcom/android/settings_ex/fuelgauge/PowersaveModeFragment;)V

    .line 85
    return-void
.end method
