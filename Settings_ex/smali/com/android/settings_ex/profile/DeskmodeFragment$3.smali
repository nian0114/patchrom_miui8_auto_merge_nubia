.class Lcom/android/settings_ex/profile/DeskmodeFragment$3;
.super Ljava/lang/Object;
.source "DeskmodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/DeskmodeFragment;
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
    .line 196
    iput-object p1, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$3;->this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 200
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$3;->this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;

    # getter for: Lcom/android/settings_ex/profile/DeskmodeFragment;->mPrefs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings_ex/profile/DeskmodeFragment;->access$200(Lcom/android/settings_ex/profile/DeskmodeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;

    .line 201
    .local v1, "pref":Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;
    iget-boolean v2, v1, Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;->mIsChecked:Z

    if-nez v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/settings_ex/profile/DeskmodeFragment$3;->this$0:Lcom/android/settings_ex/profile/DeskmodeFragment;

    # invokes: Lcom/android/settings_ex/profile/DeskmodeFragment;->makeCurrentHome(Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;)V
    invoke-static {v2, v1}, Lcom/android/settings_ex/profile/DeskmodeFragment;->access$300(Lcom/android/settings_ex/profile/DeskmodeFragment;Lcom/android/settings_ex/profile/DeskmodeFragment$HomeAppPreference;)V

    .line 204
    :cond_0
    return-void
.end method
