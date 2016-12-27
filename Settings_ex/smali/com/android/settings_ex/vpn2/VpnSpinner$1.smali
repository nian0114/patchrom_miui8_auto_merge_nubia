.class Lcom/android/settings_ex/vpn2/VpnSpinner$1;
.super Ljava/lang/Object;
.source "VpnSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/vpn2/VpnSpinner;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/vpn2/VpnSpinner;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/vpn2/VpnSpinner;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSpinner;

    # setter for: Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I
    invoke-static {v1, p2}, Lcom/android/settings_ex/vpn2/VpnSpinner;->access$002(Lcom/android/settings_ex/vpn2/VpnSpinner;I)I

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSpinner;

    # getter for: Lcom/android/settings_ex/vpn2/VpnSpinner;->mArrayList:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings_ex/vpn2/VpnSpinner;->access$100(Lcom/android/settings_ex/vpn2/VpnSpinner;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSpinner$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSpinner;

    # getter for: Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I
    invoke-static {v2}, Lcom/android/settings_ex/vpn2/VpnSpinner;->access$000(Lcom/android/settings_ex/vpn2/VpnSpinner;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSpinner;

    # getter for: Lcom/android/settings_ex/vpn2/VpnSpinner;->mSummary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/vpn2/VpnSpinner;->access$200(Lcom/android/settings_ex/vpn2/VpnSpinner;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSpinner;

    # getter for: Lcom/android/settings_ex/vpn2/VpnSpinner;->mListener:Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;
    invoke-static {v1}, Lcom/android/settings_ex/vpn2/VpnSpinner;->access$300(Lcom/android/settings_ex/vpn2/VpnSpinner;)Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSpinner$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSpinner;

    # getter for: Lcom/android/settings_ex/vpn2/VpnSpinner;->mListener:Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;
    invoke-static {v1}, Lcom/android/settings_ex/vpn2/VpnSpinner;->access$300(Lcom/android/settings_ex/vpn2/VpnSpinner;)Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSpinner$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSpinner;

    # getter for: Lcom/android/settings_ex/vpn2/VpnSpinner;->mId:I
    invoke-static {v2}, Lcom/android/settings_ex/vpn2/VpnSpinner;->access$400(Lcom/android/settings_ex/vpn2/VpnSpinner;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSpinner$1;->this$0:Lcom/android/settings_ex/vpn2/VpnSpinner;

    # getter for: Lcom/android/settings_ex/vpn2/VpnSpinner;->mValue:I
    invoke-static {v3}, Lcom/android/settings_ex/vpn2/VpnSpinner;->access$000(Lcom/android/settings_ex/vpn2/VpnSpinner;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/settings_ex/vpn2/VpnSpinner$OnItemSelectedListener;->onItemSelected(II)V

    .line 113
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    return-void
.end method
