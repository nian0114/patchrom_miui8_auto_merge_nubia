.class Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "Z7SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;->this$0:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;
    .param p2, "x1"    # Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;-><init>(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v4, 0x16

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "temp":I
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;->this$0:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I
    invoke-static {v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->access$100(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;->this$0:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;
    invoke-static {v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->access$200(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;->this$0:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;
    invoke-static {v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->access$200(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    move-result-object v2

    const-string v3, "key_sensory_dial"

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 40
    .local v0, "pri":Z
    if-eq p2, v0, :cond_0

    .line 41
    const/4 v1, 0x1

    .line 44
    .end local v0    # "pri":Z
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;->this$0:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    :goto_0
    # invokes: Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setDBFromCheck(I)V
    invoke-static {v3, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->access$300(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V

    .line 46
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;->this$0:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->pv:Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;
    invoke-static {v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->access$400(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;->this$0:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I
    invoke-static {v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->access$100(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 48
    if-nez v1, :cond_3

    .line 55
    :cond_1
    :goto_1
    return-void

    .line 44
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;->this$0:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->pv:Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;
    invoke-static {v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->access$400(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;->this$0:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I
    invoke-static {v3}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->access$100(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)I

    move-result v3

    invoke-interface {v2, p2, v3}, Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;->showDialog(ZI)V

    goto :goto_1
.end method
