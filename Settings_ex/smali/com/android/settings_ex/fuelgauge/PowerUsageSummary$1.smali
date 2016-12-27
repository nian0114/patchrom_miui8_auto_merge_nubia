.class Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/fuelgauge/LowPowerModeProxy$IServiceConnect;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindedFail()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "PowerUsageSummary"

    const-string v1, "onBindedFail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public onBindedSuccess()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    # invokes: Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->updateUI()V
    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    .line 189
    return-void
.end method
