.class Lcom/android/settings_ex/QuickClickAgent$1;
.super Landroid/os/Handler;
.source "QuickClickAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/QuickClickAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/QuickClickAgent;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/QuickClickAgent;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/settings_ex/QuickClickAgent$1;->this$0:Lcom/android/settings_ex/QuickClickAgent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 29
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_0

    .line 30
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 31
    .local v0, "isChecked":Z
    const-string v1, "QuickClickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**switchChangeHandler ** isChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v1, p0, Lcom/android/settings_ex/QuickClickAgent$1;->this$0:Lcom/android/settings_ex/QuickClickAgent;

    # getter for: Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/QuickClickAgent;->access$000(Lcom/android/settings_ex/QuickClickAgent;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/QuickClickAgent$1;->this$0:Lcom/android/settings_ex/QuickClickAgent;

    # getter for: Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/QuickClickAgent;->access$000(Lcom/android/settings_ex/QuickClickAgent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 33
    iget-object v1, p0, Lcom/android/settings_ex/QuickClickAgent$1;->this$0:Lcom/android/settings_ex/QuickClickAgent;

    # getter for: Lcom/android/settings_ex/QuickClickAgent;->clickList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/QuickClickAgent;->access$000(Lcom/android/settings_ex/QuickClickAgent;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 36
    const-string v1, "QuickClickAgent"

    const-string v2, "**switchChangeHandler ** last == first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v0    # "isChecked":Z
    :cond_0
    :goto_0
    return-void

    .line 40
    .restart local v0    # "isChecked":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/QuickClickAgent$1;->this$0:Lcom/android/settings_ex/QuickClickAgent;

    # getter for: Lcom/android/settings_ex/QuickClickAgent;->clickedTodoListener:Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;
    invoke-static {v1}, Lcom/android/settings_ex/QuickClickAgent;->access$100(Lcom/android/settings_ex/QuickClickAgent;)Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/settings_ex/QuickClickAgent$1;->this$0:Lcom/android/settings_ex/QuickClickAgent;

    # getter for: Lcom/android/settings_ex/QuickClickAgent;->clickedTodoListener:Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;
    invoke-static {v1}, Lcom/android/settings_ex/QuickClickAgent;->access$100(Lcom/android/settings_ex/QuickClickAgent;)Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;->onClickTodo(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v0    # "isChecked":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method
