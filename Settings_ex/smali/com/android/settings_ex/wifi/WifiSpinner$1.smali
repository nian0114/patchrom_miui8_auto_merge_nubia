.class Lcom/android/settings_ex/wifi/WifiSpinner$1;
.super Ljava/lang/Object;
.source "WifiSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSpinner;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSpinner;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSpinner;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSpinner$1;->this$0:Lcom/android/settings_ex/wifi/WifiSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSpinner$1;->this$0:Lcom/android/settings_ex/wifi/WifiSpinner;

    # setter for: Lcom/android/settings_ex/wifi/WifiSpinner;->mValue:I
    invoke-static {v1, p2}, Lcom/android/settings_ex/wifi/WifiSpinner;->access$002(Lcom/android/settings_ex/wifi/WifiSpinner;I)I

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSpinner$1;->this$0:Lcom/android/settings_ex/wifi/WifiSpinner;

    # getter for: Lcom/android/settings_ex/wifi/WifiSpinner;->mArrayList:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->access$100(Lcom/android/settings_ex/wifi/WifiSpinner;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSpinner$1;->this$0:Lcom/android/settings_ex/wifi/WifiSpinner;

    # getter for: Lcom/android/settings_ex/wifi/WifiSpinner;->mValue:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSpinner;->access$000(Lcom/android/settings_ex/wifi/WifiSpinner;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSpinner$1;->this$0:Lcom/android/settings_ex/wifi/WifiSpinner;

    # getter for: Lcom/android/settings_ex/wifi/WifiSpinner;->mSummary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->access$200(Lcom/android/settings_ex/wifi/WifiSpinner;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSpinner$1;->this$0:Lcom/android/settings_ex/wifi/WifiSpinner;

    # getter for: Lcom/android/settings_ex/wifi/WifiSpinner;->mListener:Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->access$300(Lcom/android/settings_ex/wifi/WifiSpinner;)Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSpinner$1;->this$0:Lcom/android/settings_ex/wifi/WifiSpinner;

    # getter for: Lcom/android/settings_ex/wifi/WifiSpinner;->mListener:Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSpinner;->access$300(Lcom/android/settings_ex/wifi/WifiSpinner;)Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSpinner$1;->this$0:Lcom/android/settings_ex/wifi/WifiSpinner;

    # getter for: Lcom/android/settings_ex/wifi/WifiSpinner;->mId:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSpinner;->access$400(Lcom/android/settings_ex/wifi/WifiSpinner;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSpinner$1;->this$0:Lcom/android/settings_ex/wifi/WifiSpinner;

    # getter for: Lcom/android/settings_ex/wifi/WifiSpinner;->mValue:I
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiSpinner;->access$000(Lcom/android/settings_ex/wifi/WifiSpinner;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiSpinner$OnItemSelectedListener;->onItemSelected(II)V

    .line 121
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 123
    return-void
.end method
