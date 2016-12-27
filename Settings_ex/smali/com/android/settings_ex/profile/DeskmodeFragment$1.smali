.class Lcom/android/settings_ex/profile/DeskmodeFragment$1;
.super Ljava/lang/Object;
.source "DeskmodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profile/DeskmodeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/DeskmodeFragment;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$1;->this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$1;->this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;

    # invokes: Lcom/android/settings_ex/profile/DeskmodeFragment;->setSelectedLauncher()V
    invoke-static {v0}, Lcom/android/settings_ex/profile/DeskmodeFragment;->access$000(Lcom/android/settings_ex/profile/DeskmodeFragment;)V

    .line 95
    return-void
.end method
