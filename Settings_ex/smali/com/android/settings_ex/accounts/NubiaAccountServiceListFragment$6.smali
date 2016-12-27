.class Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$6;
.super Ljava/lang/Object;
.source "NubiaAccountServiceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->startExtendThread()V
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
    .line 354
    iput-object p1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$6;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$6;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # getter for: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mBindBaiduAccountHelper:Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$700(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$6;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # getter for: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mCallback:Lcom/android/settings_ex/accounts/ExtendCallback;
    invoke-static {v1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$600(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Lcom/android/settings_ex/accounts/ExtendCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/BindBaiduAccountHelper;->bindService(Lcom/android/settings_ex/accounts/ExtendCallback;)V

    .line 358
    return-void
.end method
