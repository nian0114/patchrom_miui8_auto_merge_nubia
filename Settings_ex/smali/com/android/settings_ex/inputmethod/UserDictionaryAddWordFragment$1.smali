.class Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment$1;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment$1;->this$0:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment$1;->this$0:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;

    # getter for: Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->access$000(Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;)Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment$1;->this$0:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment$1;->this$0:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->access$102(Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;Z)Z

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment$1;->this$0:Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 86
    return-void
.end method
