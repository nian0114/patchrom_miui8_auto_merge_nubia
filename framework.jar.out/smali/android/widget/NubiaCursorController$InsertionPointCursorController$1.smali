.class Landroid/widget/NubiaCursorController$InsertionPointCursorController$1;
.super Ljava/lang/Object;
.source "NubiaCursorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NubiaCursorController$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NubiaCursorController$InsertionPointCursorController;


# direct methods
.method constructor <init>(Landroid/widget/NubiaCursorController$InsertionPointCursorController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController$1;->this$0:Landroid/widget/NubiaCursorController$InsertionPointCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController$1;->this$0:Landroid/widget/NubiaCursorController$InsertionPointCursorController;

    iget-object v0, v0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController$1;->this$0:Landroid/widget/NubiaCursorController$InsertionPointCursorController;

    invoke-virtual {v0, p1, v1}, Landroid/widget/Editor;->handleFloatPanelClick(Landroid/view/View;Landroid/widget/NubiaCursorController;)V

    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController$1;->this$0:Landroid/widget/NubiaCursorController$InsertionPointCursorController;

    # getter for: Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;
    invoke-static {v0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->access$500(Landroid/widget/NubiaCursorController$InsertionPointCursorController;)Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    return-void
.end method
