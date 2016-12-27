.class Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$1;
.super Ljava/lang/Object;
.source "SpellCheckerLanguageSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;

.field final synthetic val$currentSci:Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$1;->this$0:Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;

    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$1;->this$0:Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;

    # getter for: Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->mTsm:Landroid/view/textservice/TextServicesManager;
    invoke-static {v1}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->access$000(Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;)Landroid/view/textservice/TextServicesManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$1;->this$0:Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 78
    return-void

    .line 68
    :cond_0
    # invokes: Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->convertDialogItemIdToSubtypeIndex(I)I
    invoke-static {p3}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->access$100(I)I

    move-result v0

    .line 69
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$1;->this$0:Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;

    # getter for: Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->mTsm:Landroid/view/textservice/TextServicesManager;
    invoke-static {v1}, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;->access$000(Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings;)Landroid/view/textservice/TextServicesManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerLanguageSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    goto :goto_0
.end method
