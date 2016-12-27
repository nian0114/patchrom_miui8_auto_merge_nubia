.class Lcom/android/settings_ex/widget/DigitalKeyboardView$2;
.super Ljava/lang/Object;
.source "DigitalKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/DigitalKeyboardView;->setView(Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/DigitalKeyboardView;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$2;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$2;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$2;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$2;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$2;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    .local v0, "str":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$2;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .end local v0    # "str":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
