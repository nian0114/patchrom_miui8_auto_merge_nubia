.class Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;

.field final synthetic val$bytesPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/settings_ex/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ex/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;

    iput-object p2, p0, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment$1;->val$editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment$1;->val$target:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1592
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 1594
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x100000

    mul-long v0, v2, v4

    .line 1595
    .local v0, "bytes":J
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment$1;->val$editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1596
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment$1;->val$target:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v3, 0x0

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1700(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 1597
    return-void
.end method
