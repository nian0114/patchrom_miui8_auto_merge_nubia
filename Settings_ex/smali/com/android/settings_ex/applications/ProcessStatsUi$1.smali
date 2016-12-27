.class Lcom/android/settings_ex/applications/ProcessStatsUi$1;
.super Landroid/os/Handler;
.source "ProcessStatsUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ProcessStatsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ProcessStatsUi;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ProcessStatsUi;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi$1;->this$0:Lcom/android/settings_ex/applications/ProcessStatsUi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 176
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 178
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 179
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "startIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 180
    .local v2, "startIndex":I
    const-string v1, "endIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 181
    .local v3, "endIndex":I
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsUi$1;->this$0:Lcom/android/settings_ex/applications/ProcessStatsUi;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcessStatsUi$1;->this$0:Lcom/android/settings_ex/applications/ProcessStatsUi;

    # getter for: Lcom/android/settings_ex/applications/ProcessStatsUi;->mMaxMemory:D
    invoke-static {v4}, Lcom/android/settings_ex/applications/ProcessStatsUi;->access$000(Lcom/android/settings_ex/applications/ProcessStatsUi;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcessStatsUi$1;->this$0:Lcom/android/settings_ex/applications/ProcessStatsUi;

    # getter for: Lcom/android/settings_ex/applications/ProcessStatsUi;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    invoke-static {v6}, Lcom/android/settings_ex/applications/ProcessStatsUi;->access$100(Lcom/android/settings_ex/applications/ProcessStatsUi;)Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-result-object v6

    # invokes: Lcom/android/settings_ex/applications/ProcessStatsUi;->addExtraPreference(IIDLcom/android/settings_ex/applications/ProcStatsData$MemInfo;)V
    invoke-static/range {v1 .. v6}, Lcom/android/settings_ex/applications/ProcessStatsUi;->access$200(Lcom/android/settings_ex/applications/ProcessStatsUi;IIDLcom/android/settings_ex/applications/ProcStatsData$MemInfo;)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
