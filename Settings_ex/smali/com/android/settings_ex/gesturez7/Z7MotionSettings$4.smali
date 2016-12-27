.class Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;
.super Ljava/lang/Object;
.source "Z7MotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->showSingleDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/gesturez7/Z7MotionSettings;I)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iput p2, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 178
    iget v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;->val$type:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_sensory_dial"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_sensory_answer"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_pickanswer"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 184
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;->val$type:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_sensory_answer"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_sensory_dial"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$4;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_pickanswer"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 190
    :cond_1
    return-void
.end method
