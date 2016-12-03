.class Lcom/android/phone/NBUPLMNEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "NBUPLMNEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBUPLMNEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBUPLMNEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/NBUPLMNEditor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBUPLMNEditor$1;->this$0:Lcom/android/phone/NBUPLMNEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "airplaneModeOn":Z
    iget-object v5, p0, Lcom/android/phone/NBUPLMNEditor$1;->this$0:Lcom/android/phone/NBUPLMNEditor;

    if-nez v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/phone/NBUPLMNEditor;->setNegativeButtonEnabled(Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/android/phone/NBUPLMNEditor$1;->this$0:Lcom/android/phone/NBUPLMNEditor;

    # getter for: Lcom/android/phone/NBUPLMNEditor;->mBottomButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/NBUPLMNEditor;->access$000(Lcom/android/phone/NBUPLMNEditor;)Landroid/widget/Button;

    move-result-object v5

    if-nez v1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/NBUPLMNEditor$1;->this$0:Lcom/android/phone/NBUPLMNEditor;

    # getter for: Lcom/android/phone/NBUPLMNEditor;->mUPLMNEditorFragment:Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;
    invoke-static {v2}, Lcom/android/phone/NBUPLMNEditor;->access$100(Lcom/android/phone/NBUPLMNEditor;)Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .end local v1    # "airplaneModeOn":Z
    :cond_0
    return-void

    .restart local v1    # "airplaneModeOn":Z
    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method
