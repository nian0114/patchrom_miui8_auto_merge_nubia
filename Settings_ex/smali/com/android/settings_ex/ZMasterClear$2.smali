.class Lcom/android/settings_ex/ZMasterClear$2;
.super Ljava/lang/Object;
.source "ZMasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ZMasterClear;->showFinalConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ZMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ZMasterClear;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings_ex/ZMasterClear$2;->this$0:Lcom/android/settings_ex/ZMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/ZMasterClear$2;->this$0:Lcom/android/settings_ex/ZMasterClear;

    # invokes: Lcom/android/settings_ex/ZMasterClear;->execFactoryReset()V
    invoke-static {v0}, Lcom/android/settings_ex/ZMasterClear;->access$100(Lcom/android/settings_ex/ZMasterClear;)V

    .line 130
    return-void
.end method
