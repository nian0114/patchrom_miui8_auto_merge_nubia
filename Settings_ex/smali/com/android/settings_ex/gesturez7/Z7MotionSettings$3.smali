.class Lcom/android/settings_ex/gesturez7/Z7MotionSettings$3;
.super Ljava/lang/Object;
.source "Z7MotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/gesturez7/Z7MotionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$3;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_answer_call"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$3;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_smart_sensory"

    invoke-virtual {v0, v1, v3}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$3;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    # invokes: Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->setTotal(Z)V
    invoke-static {v0, v3}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->access$100(Lcom/android/settings_ex/gesturez7/Z7MotionSettings;Z)V

    .line 151
    return-void
.end method
