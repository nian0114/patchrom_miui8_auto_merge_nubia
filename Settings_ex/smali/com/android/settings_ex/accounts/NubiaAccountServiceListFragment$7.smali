.class Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$7;
.super Ljava/lang/Object;
.source "NubiaAccountServiceListFragment.java"

# interfaces
.implements Lcom/android/settings_ex/accounts/ExtendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;
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
    .line 396
    iput-object p1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$7;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtendResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$7;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # getter for: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$800(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 400
    return-void
.end method
