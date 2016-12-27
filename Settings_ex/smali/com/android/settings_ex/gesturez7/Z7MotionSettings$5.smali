.class Lcom/android/settings_ex/gesturez7/Z7MotionSettings$5;
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


# direct methods
.method constructor <init>(Lcom/android/settings_ex/gesturez7/Z7MotionSettings;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$5;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings$5;->this$0:Lcom/android/settings_ex/gesturez7/Z7MotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7MotionSettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_answer_call"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 173
    return-void
.end method
