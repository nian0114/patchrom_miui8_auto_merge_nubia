.class Lcom/android/settings_ex/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MasterClear;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings_ex/MasterClear$1;->this$0:Lcom/android/settings_ex/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear$1;->this$0:Lcom/android/settings_ex/MasterClear;

    const/16 v1, 0x37

    # invokes: Lcom/android/settings_ex/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/MasterClear;->access$000(Lcom/android/settings_ex/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear$1;->this$0:Lcom/android/settings_ex/MasterClear;

    # invokes: Lcom/android/settings_ex/MasterClear;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/android/settings_ex/MasterClear;->access$100(Lcom/android/settings_ex/MasterClear;)V

    .line 117
    :cond_0
    return-void
.end method
