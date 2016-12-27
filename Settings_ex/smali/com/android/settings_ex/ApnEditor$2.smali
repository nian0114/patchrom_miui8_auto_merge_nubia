.class Lcom/android/settings_ex/ApnEditor$2;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ApnEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/ApnEditor$2;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNegativeButtonClick()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$2;->this$0:Lcom/android/settings_ex/ApnEditor;

    # getter for: Lcom/android/settings_ex/ApnEditor;->mApnEditorFragment:Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;
    invoke-static {v0}, Lcom/android/settings_ex/ApnEditor;->access$000(Lcom/android/settings_ex/ApnEditor;)Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->dealActivityEvent(I)V

    .line 97
    return-void
.end method

.method public OnPositiveButtonClick()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$2;->this$0:Lcom/android/settings_ex/ApnEditor;

    # getter for: Lcom/android/settings_ex/ApnEditor;->mApnEditorFragment:Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;
    invoke-static {v0}, Lcom/android/settings_ex/ApnEditor;->access$000(Lcom/android/settings_ex/ApnEditor;)Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ApnEditor$ApnEditorFragment;->dealActivityEvent(I)V

    .line 92
    return-void
.end method
