.class Lcom/android/settings_ex/gesturez7/Z7MotionSettings$1;
.super Ljava/lang/Object;
.source "Z7MotionSettings.java"

# interfaces
.implements Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;


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


# direct methods
.method constructor <init>(Lcom/android/settings_ex/gesturez7/Z7MotionSettings;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$1;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showDialog(ZI)V
    .locals 2
    .param p1, "isChecked"    # Z
    .param p2, "type"    # I

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$1;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_answer_call"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$1;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_volley_gesture"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$1;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    # invokes: Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->showSingleDialog(I)V
    invoke-static {v0, p2}, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->access$000(Lcom/android/settings_ex/gesturez7/Z7MotionSettings;I)V

    goto :goto_0
.end method
