.class Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$2;
.super Ljava/lang/Object;
.source "Z7VolleyHandsFree.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->showSingleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$2;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;

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

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$2;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_sensory_dial"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$2;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_sensory_answer"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$2;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;

    iget-object v0, v0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_pickanswer"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 173
    return-void
.end method
