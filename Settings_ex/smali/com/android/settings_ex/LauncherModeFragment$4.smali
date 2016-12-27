.class Lcom/android/settings_ex/LauncherModeFragment$4;
.super Ljava/lang/Object;
.source "LauncherModeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LauncherModeFragment;->showStandardConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LauncherModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LauncherModeFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/LauncherModeFragment$4;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 138
    return-void
.end method
