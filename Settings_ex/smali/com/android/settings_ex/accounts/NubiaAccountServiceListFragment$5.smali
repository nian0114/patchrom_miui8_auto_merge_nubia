.class Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$5;
.super Ljava/lang/Object;
.source "NubiaAccountServiceListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->onCreateDialog(I)Lcn/nubia/commonui/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$5;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$5;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # invokes: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->startExtendThread()V
    invoke-static {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$500(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)V

    .line 341
    return-void
.end method
