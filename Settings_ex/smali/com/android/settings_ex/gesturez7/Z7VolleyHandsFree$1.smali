.class Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$1;
.super Ljava/lang/Object;
.source "Z7VolleyHandsFree.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->showSingleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$1;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$1;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->isDialog:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->access$002(Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;Z)Z

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree$1;->this$0:Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;

    # getter for: Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;->access$100(Lcom/android/settings_ex/gesturez7/Z7VolleyHandsFree;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 179
    return-void
.end method
