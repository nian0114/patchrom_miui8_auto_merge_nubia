.class Lcom/android/settings_ex/gesturez7/Z7DetailFragment$2;
.super Ljava/lang/Object;
.source "Z7DetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->showSensoryDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/gesturez7/Z7DetailFragment;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/gesturez7/Z7DetailFragment;Z)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment$2;->this$0:Lcom/android/settings_ex/gesturez7/Z7DetailFragment;

    iput-boolean p2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment$2;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment$2;->this$0:Lcom/android/settings_ex/gesturez7/Z7DetailFragment;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_answer_call"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment$2;->this$0:Lcom/android/settings_ex/gesturez7/Z7DetailFragment;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment$2;->this$0:Lcom/android/settings_ex/gesturez7/Z7DetailFragment;

    iget v1, v1, Lcom/android/settings_ex/gesturez7/Z7DetailFragment;->mType:I

    iget-boolean v2, p0, Lcom/android/settings_ex/gesturez7/Z7DetailFragment$2;->val$isChecked:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBReallyChanged(IZ)V

    .line 269
    return-void
.end method
