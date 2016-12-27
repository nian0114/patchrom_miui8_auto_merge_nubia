.class Lcom/android/settings_ex/gesturez7/Z7VolleySettings$2;
.super Ljava/lang/Object;
.source "Z7VolleySettings.java"

# interfaces
.implements Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/gesturez7/Z7VolleySettings;
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
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$2;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showDialog(ZI)V
    .locals 2
    .param p1, "isChecked"    # Z
    .param p2, "type"    # I

    .prologue
    .line 82
    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$2;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleySettings;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->mDbTool:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;
    invoke-static {v0}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->access$100(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;)Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    move-result-object v0

    const-string v1, "motion_pickanswer"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleySettings$2;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleySettings;

    # invokes: Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->showSingleDialog(I)V
    invoke-static {v0, p2}, Lcom/android/settings_ex/gesturez7/Z7VolleySettings;->access$200(Lcom/android/settings_ex/gesturez7/Z7VolleySettings;I)V

    goto :goto_0
.end method
