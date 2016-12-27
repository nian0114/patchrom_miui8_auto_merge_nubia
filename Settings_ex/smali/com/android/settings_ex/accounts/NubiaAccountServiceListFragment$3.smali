.class Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$3;
.super Ljava/lang/Object;
.source "NubiaAccountServiceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->setCloudSpace(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

.field final synthetic val$space:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$3;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    iput-object p2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$3;->val$space:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$3;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$3;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # getter for: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mSpaceCapacityPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$300(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$3;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0ce5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$3;->val$space:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    return-void
.end method
