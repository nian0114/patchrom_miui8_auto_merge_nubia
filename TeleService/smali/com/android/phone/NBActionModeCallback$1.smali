.class Lcom/android/phone/NBActionModeCallback$1;
.super Ljava/lang/Object;
.source "NBActionModeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBActionModeCallback;->showDialog(Lcn/nubia/commonui/phone/actionbar/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBActionModeCallback;

.field final synthetic val$mode:Lcn/nubia/commonui/phone/actionbar/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/phone/NBActionModeCallback;Lcn/nubia/commonui/phone/actionbar/view/ActionMode;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBActionModeCallback$1;->this$0:Lcom/android/phone/NBActionModeCallback;

    iput-object p2, p0, Lcom/android/phone/NBActionModeCallback$1;->val$mode:Lcn/nubia/commonui/phone/actionbar/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback$1;->this$0:Lcom/android/phone/NBActionModeCallback;

    # getter for: Lcom/android/phone/NBActionModeCallback;->mListener:Lcom/android/phone/NBActionModeCallback$Listener;
    invoke-static {v0}, Lcom/android/phone/NBActionModeCallback;->access$000(Lcom/android/phone/NBActionModeCallback;)Lcom/android/phone/NBActionModeCallback$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback$1;->this$0:Lcom/android/phone/NBActionModeCallback;

    # getter for: Lcom/android/phone/NBActionModeCallback;->mListener:Lcom/android/phone/NBActionModeCallback$Listener;
    invoke-static {v0}, Lcom/android/phone/NBActionModeCallback;->access$000(Lcom/android/phone/NBActionModeCallback;)Lcom/android/phone/NBActionModeCallback$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/phone/NBActionModeCallback$Listener;->delete()V

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback$1;->val$mode:Lcn/nubia/commonui/phone/actionbar/view/ActionMode;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/actionbar/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
