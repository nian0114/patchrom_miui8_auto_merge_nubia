.class Lcom/android/settings_ex/ZMasterClear$3;
.super Ljava/lang/Object;
.source "ZMasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ZMasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ZMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ZMasterClear;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ex/ZMasterClear$3;->this$0:Lcom/android/settings_ex/ZMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/ZMasterClear$3;->this$0:Lcom/android/settings_ex/ZMasterClear;

    # getter for: Lcom/android/settings_ex/ZMasterClear;->level:I
    invoke-static {v0}, Lcom/android/settings_ex/ZMasterClear;->access$000(Lcom/android/settings_ex/ZMasterClear;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/ZMasterClear$3;->this$0:Lcom/android/settings_ex/ZMasterClear;

    # invokes: Lcom/android/settings_ex/ZMasterClear;->showCannotResetForLowBattery()V
    invoke-static {v0}, Lcom/android/settings_ex/ZMasterClear;->access$200(Lcom/android/settings_ex/ZMasterClear;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ZMasterClear$3;->this$0:Lcom/android/settings_ex/ZMasterClear;

    const/16 v1, 0x37

    # invokes: Lcom/android/settings_ex/ZMasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/ZMasterClear;->access$300(Lcom/android/settings_ex/ZMasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/ZMasterClear$3;->this$0:Lcom/android/settings_ex/ZMasterClear;

    # invokes: Lcom/android/settings_ex/ZMasterClear;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/android/settings_ex/ZMasterClear;->access$400(Lcom/android/settings_ex/ZMasterClear;)V

    goto :goto_0
.end method
