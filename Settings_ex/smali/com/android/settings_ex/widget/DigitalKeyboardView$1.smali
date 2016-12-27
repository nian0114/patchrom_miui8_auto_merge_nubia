.class Lcom/android/settings_ex/widget/DigitalKeyboardView$1;
.super Ljava/lang/Object;
.source "DigitalKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/DigitalKeyboardView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

.field final synthetic val$digit:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/DigitalKeyboardView;I)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    iput p2, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;->val$digit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mDotsView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$100(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mDotsView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$100(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    # invokes: Lcom/android/settings_ex/widget/DigitalKeyboardView;->setDotsImage(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$200(Lcom/android/settings_ex/widget/DigitalKeyboardView;IZ)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$1;->val$digit:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 115
    :cond_1
    return-void
.end method
