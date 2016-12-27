.class Lcom/android/settings_ex/gesturez7/Z7VolleySettings$4;
.super Ljava/lang/Object;
.source "Z7VolleySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->showSingleDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/gesturez7/Z7VolleySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$4;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleySettings;

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

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$4;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleySettings;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;
    invoke-static {v0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->access$100(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;)Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    move-result-object v0

    const-string v1, "key_sensory_dial"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$4;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleySettings;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;
    invoke-static {v0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->access$100(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;)Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    move-result-object v0

    const-string v1, "key_sensory_answer"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$4;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleySettings;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;
    invoke-static {v0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->access$100(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;)Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    move-result-object v0

    const-string v1, "motion_pickanswer"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 218
    return-void
.end method
