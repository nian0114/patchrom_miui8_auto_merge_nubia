.class Lcom/android/settings_ex/wifi/WifiDialogActivity$2;
.super Ljava/lang/Object;
.source "WifiDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiDialogActivity;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 771
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiDialogActivity;

    # setter for: Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPValue:I
    invoke-static {v1, p2}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->access$402(Lcom/android/settings_ex/wifi/WifiDialogActivity;I)I

    .line 772
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiDialogActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiDialogActivity;

    # getter for: Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPValue:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->access$400(Lcom/android/settings_ex/wifi/WifiDialogActivity;)I

    move-result v2

    aget-object v0, v1, v2

    .line 773
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiDialogActivity;

    # getter for: Lcom/android/settings_ex/wifi/WifiDialogActivity;->mIPSummary:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->access$500(Lcom/android/settings_ex/wifi/WifiDialogActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 775
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiDialogActivity;

    # invokes: Lcom/android/settings_ex/wifi/WifiDialogActivity;->showIpConfigFields()V
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->access$600(Lcom/android/settings_ex/wifi/WifiDialogActivity;)V

    .line 776
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialogActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiDialogActivity;

    # invokes: Lcom/android/settings_ex/wifi/WifiDialogActivity;->enableIfSubmit()V
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiDialogActivity;->access$300(Lcom/android/settings_ex/wifi/WifiDialogActivity;)V

    .line 777
    return-void
.end method
