.class Lcom/android/settings_ex/widget/DigitalKeyboardView$3;
.super Ljava/lang/Object;
.source "DigitalKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 139
    iput-object p1, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$3;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$3;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/widget/DigitalKeyboardView$3;->this$0:Lcom/android/settings_ex/widget/DigitalKeyboardView;

    # getter for: Lcom/android/settings_ex/widget/DigitalKeyboardView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/DigitalKeyboardView;->access$000(Lcom/android/settings_ex/widget/DigitalKeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
