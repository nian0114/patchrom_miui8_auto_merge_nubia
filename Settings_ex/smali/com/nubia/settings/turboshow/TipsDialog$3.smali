.class Lcom/nubia/settings/turboshow/TipsDialog$3;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/settings/turboshow/TipsDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/settings/turboshow/TipsDialog;


# direct methods
.method constructor <init>(Lcom/nubia/settings/turboshow/TipsDialog;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/nubia/settings/turboshow/TipsDialog$3;->this$0:Lcom/nubia/settings/turboshow/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 94
    const-string v0, "TipsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onKey is isShowing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nubia/settings/turboshow/TipsDialog$3;->this$0:Lcom/nubia/settings/turboshow/TipsDialog;

    # getter for: Lcom/nubia/settings/turboshow/TipsDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/nubia/settings/turboshow/TipsDialog;->access$100(Lcom/nubia/settings/turboshow/TipsDialog;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog$3;->this$0:Lcom/nubia/settings/turboshow/TipsDialog;

    # invokes: Lcom/nubia/settings/turboshow/TipsDialog;->createDialogOutAnimation()V
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TipsDialog;->access$000(Lcom/nubia/settings/turboshow/TipsDialog;)V

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
