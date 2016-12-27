.class Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$2;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->showDeleteConfirmation(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$2;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    # invokes: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->execDeleteFile()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->access$200(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$2;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 173
    return-void
.end method
